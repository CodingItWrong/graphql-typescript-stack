# graphql-typescript-stack

A proof-of concept stack using GraphQL and TypeScript for type safety across frontend and backend.

## Architecture

- React client
- Apollo server
- Handwritten (not generated) GraphQL schema to guarantee independence from tooling
- Database schema, migrations, and TypeScript types handled via Drizzle
- GraphQL client generated by `@graphql-codegen`. Currently using Apollo

## Todo

Client is currently built using Create React App, which prevents updating to the newest versions of client libraries, including `@graphql-codegen`. Switching to Webpack or Vite would allow more recent tooling.

## Installation and Running

See [API README](./api/README.md) and [Client README](./api/README.md)

## License

MIT

