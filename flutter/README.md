# graphql-typescript-stack/flutter

See [graphql-typescript-stack README](../README.md) for overview.

The same client runs on iOS, Android, and web. The GraphQL query is made on the client side using the `graphql_flutter` package and types generated via `graphql_codegen`. The query can be seen in [App.tsx](./lib/main.dart).

## Installation

- Copy `../api/src/graphql/schema.graphql` and overwrite `./lib/schema.graphql` with it
- Run `dart run build_runner build` to regenerate the code in `lib/__generated`

## Running

- Start the [API](../api/README.md) server locally (defaults to port 4000)
- From within VS Code, run `lib/main.dart` on your device of choice
