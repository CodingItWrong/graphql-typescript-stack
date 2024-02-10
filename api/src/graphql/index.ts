import { readFileSync } from 'fs';
import { ApolloServer } from 'apollo-server-express';
import { db } from '../db';

const typeDefs = readFileSync('./src/graphql/schema.graphql', { encoding: 'utf-8' });

const resolvers = {
  Query: {
    users: () => db.query.user.findMany()
  }
};

const server = new ApolloServer({
  typeDefs,
  resolvers,
  csrfPrevention: true
});

export default server;
