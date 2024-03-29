# graphql-typescript-stack

A proof-of concept stack using GraphQL with a variety of frontend clients.

## Architecture

- Handwritten (not generated) GraphQL schema to guarantee independence from tooling
- Node server with TypeScript
- [Apollo Server](https://www.apollographql.com/docs/apollo-server/)
- Database schema, migrations, and server TypeScript types handled via [Drizzle ORM](https://orm.drizzle.team/)
- GraphQL client code and types generated by [`@graphql-codegen`](https://the-guild.dev/graphql/codegen/docs/guides/react-vue). Currently using Apollo
- Clients:
  - SPA React with [Vite](https://vitejs.dev/)
  - Server-rended with [Next.js](https://nextjs.org/)
  - [React Native](https://reactnative.dev) via React Native CLI
  - [React Native Web](https://necolas.github.io/react-native-web/) (native mobile and web in a single codebase) via [Expo](https://expo.dev/)
  - [Flutter](https://flutter.dev)

## Installation and Running

See READMEs for:

- [API](./api/README.md)
- [Web](./web/README.md)
- [Next](./next/README.md)
- [React Native](./rn/README.md)
- [RN Web](./rnweb/README.md)
- [Flutter](./flutter/README.md)

## License

MIT
