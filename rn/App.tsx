import {
  ApolloClient,
  ApolloProvider,
  InMemoryCache,
  useSuspenseQuery,
} from '@apollo/client';
import {Suspense} from 'react';
import {FlatList, Platform, SafeAreaView, Text, View} from 'react-native';
import {GetUsersDocument} from './src/generated/graphql';

const graphqlDomain = Platform.select({
  android: '10.0.2.2',
  default: 'localhost',
});

const client = new ApolloClient({
  uri: `http://${graphqlDomain}:4000/graphql`,
  cache: new InMemoryCache(),
});

export default function App() {
  return (
    <ApolloProvider client={client}>
      <UserScreen />
    </ApolloProvider>
  );
}

function UserScreen() {
  return (
    <SafeAreaView style={{flex: 1}}>
      <View style={{flex: 1}}>
        <Text>Users</Text>
        <Suspense fallback={<Text>Loading…</Text>}>
          <UserList />
        </Suspense>
      </View>
    </SafeAreaView>
  );
}

function UserList() {
  const {error, data} = useSuspenseQuery(GetUsersDocument);

  if (error) {
    return <Text>Error :(</Text>;
  }

  return (
    <FlatList
      data={data.users}
      keyExtractor={user => user.id}
      renderItem={({item: user}) => <Text>{user.name}</Text>}
    />
  );
}
