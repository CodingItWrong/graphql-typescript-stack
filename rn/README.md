# graphql-typescript-stack/rn

See [graphql-typescript-stack README](../README.md) for overview.

The GraphQL query is made using Suspense and Apollo Client's `useSuspenseQuery` hook. The query can be seen in [App.tsx](./src/App.tsx).

## Requirements

- Android Studio
- Xcode

## Installation

- `yarn install`
- `cd ios && bundle install && bundle exec pod install`
- Start the [API](../api/README.md) server locally (defaults to port 4000)
- Run `yarn generate` to update the generated code from the backend GraphQL schema (generated code is committed)

## Running

- Run `yarn start`
- Press `i` to open in iPhone Simulator, and `a` to open in Android Emulator
