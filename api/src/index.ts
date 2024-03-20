import express from 'express';
import server from "./graphql"
import { expressMiddleware } from '@apollo/server/express4';

async function main() {
  const app = express();
  const port = process.env.PORT;
  await server.start();
  const graphqlPath = '/graphql';
  app.use(graphqlPath, express.json(), expressMiddleware(server)); // TODO: CORS

  app.listen(port, () => {
    console.log(`GraphQL running on http://localhost:${port}${graphqlPath}`);
  })
}

main();
