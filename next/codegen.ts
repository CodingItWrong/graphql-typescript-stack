import { CodegenConfig } from '@graphql-codegen/cli'

const config: CodegenConfig = {
  schema: 'http://localhost:4000/graphql',
  documents: ['app/**/*.ts'],
  ignoreNoDocuments: true, // for better experience with the watcher
  generates: {
    './app/generated/': {
      preset: 'client'
    }
  }
}

export default config
