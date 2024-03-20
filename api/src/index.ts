import express from 'express';
import { createServer } from 'http';
import { WebSocketServer } from 'ws';
import { ApolloServer } from '@apollo/server';
import { ApolloServerPluginDrainHttpServer } from '@apollo/server/plugin/drainHttpServer';
import { expressMiddleware } from '@apollo/server/express4';
import { useServer } from 'graphql-ws/lib/use/ws';
import schema from "./graphql"

async function main() {
  const app = express();
  const port = process.env.PORT;
  const graphqlPath = '/graphql';

  const httpServer = createServer(app);

  const wsServer = new WebSocketServer({
    server: httpServer,
    path: '/subscriptions',
  });

  const serverCleanup = useServer({ schema }, wsServer);

  const server = new ApolloServer({
    schema,
    plugins: [
      ApolloServerPluginDrainHttpServer({ httpServer }),
      {
        async serverWillStart() {
          return {
            async drainServer() {
              await serverCleanup.dispose();
            }
          }
        }
      }
    ],
  });
  await server.start();
  app.use(graphqlPath, express.json(), expressMiddleware(server)); // TODO: CORS

  httpServer.listen(port, () => {
    console.log(`GraphQL running on http://localhost:${port}${graphqlPath}`);
  });
}

main();
