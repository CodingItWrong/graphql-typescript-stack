import { readFileSync } from 'fs';
import { ApolloServer } from 'apollo-server-express';
import { db } from '../db';
import { Resolvers } from './generated/resolvers-types';

const typeDefs = readFileSync('./src/graphql/schema.graphql', { encoding: 'utf-8' });

const resolvers: Resolvers = {
  Query: {
    users: async () => {
      const result = await db.query.user.findMany();
      return result.map(user => ({
        id: String(user.id),
        name: user.name,
        email: user.email
      }));
    }
  }
};

const server = new ApolloServer({
  typeDefs,
  resolvers,
  csrfPrevention: true
});

export default server;
