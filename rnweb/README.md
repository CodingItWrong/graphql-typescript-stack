# graphql-typescript-stack/rnweb

See [graphql-typescript-stack README](../README.md) for overview.

The GraphQL query is made using Suspense and Apollo Client's `useSuspenseQuery` hook. The query can be seen in [App.tsx](./src/App.tsx). As the web client runs only client-side, the query is made client side as well, to be parallel with the mobile app.

## Requirements

- Android Studio
- Xcode

## Installation

- `yarn install`
- Start the [API](../api/README.md) server locally (defaults to port 4000)
- Run `yarn generate` to update the generated code from the backend GraphQL schema (generated code is committed)

## Running

- Run `yarn start`
- Press `w` to open in a web browser, `i` to open in iPhone Simulator, and `a` to open in Android Emulator
