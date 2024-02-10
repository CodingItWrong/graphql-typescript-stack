import express from 'express';
import server from "./graphql"

async function main() {
  const app = express();
  const port = process.env.PORT;
  await server.start();
  server.applyMiddleware({ app });

  app.listen(port, () => {
    console.log(`GraphQL running on http://localhost:${port}${server.graphqlPath}`);
  })
}

main();
