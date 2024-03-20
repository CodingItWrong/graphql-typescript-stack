import express from 'express';
import { createServer } from 'http';
import { ApolloServer } from '@apollo/server';
import { ApolloServerPluginDrainHttpServer } from '@apollo/server/plugin/drainHttpServer';
import { expressMiddleware } from '@apollo/server/express4';
import schema from "./graphql"

async function main() {
  const app = express();
  const port = process.env.PORT;
  const graphqlPath = '/graphql';

  const httpServer = createServer(app);

  const server = new ApolloServer({
    schema,
    plugins: [
      ApolloServerPluginDrainHttpServer({ httpServer }),
    ],
  });
  await server.start();
  app.use(graphqlPath, express.json(), expressMiddleware(server)); // TODO: CORS

  httpServer.listen(port, () => {
    console.log(`GraphQL running on http://localhost:${port}${graphqlPath}`);
  });
}

main();
