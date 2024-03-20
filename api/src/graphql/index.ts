import { readFileSync } from 'fs';
import { ApolloServer } from 'apollo-server-express';
import { db } from '../db';
import { Resolvers } from './generated/resolvers-types';
import { message } from '../db/schema';

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
    },
    messages: async () => {
      const result = await db.query.message.findMany({
        orderBy: [message.createdAt],
      });
      return result.map(message => ({
        id: String(message.id),
        content: message.content,
        createdAt: message.createdAt.toISOString(), // TODO: ideal format?
      }));
    }
  },
  Mutation: {
    sendMessage: async (_, {content}) => {
      const newMessage = (await db.insert(message).values({content}).returning())[0];
      return {
        id: String(newMessage.id),
        content: newMessage.content,
        createdAt: newMessage.createdAt.toISOString(),
      };
    }
  }
};

const server = new ApolloServer({
  typeDefs,
  resolvers,
  csrfPrevention: true
});

export default server;
