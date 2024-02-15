import { ApolloClient, ApolloProvider, InMemoryCache, useSuspenseQuery } from '@apollo/client';
import { StatusBar } from 'expo-status-bar';
import { Suspense } from 'react';
import { FlatList, Platform, SafeAreaView, StyleSheet, Text, View } from 'react-native';
import { GetUsersDocument } from './src/generated/graphql';

const graphqlDomain = Platform.select({
  android: '10.0.2.2',
  default: 'localhost'
})

const client = new ApolloClient({
  uri: `http://${graphqlDomain}:4000/graphql`,
  cache: new InMemoryCache()
});

export default function App() {
  return (
    <ApolloProvider client={client}>
      <SafeAreaView style={{ flex: 1 }}>
        <UserScreen />
      </SafeAreaView>
    </ApolloProvider>
  );
}

function UserScreen() {
  return <View style={{ flex: 1 }}>
    <Text>Users</Text>
    <Suspense fallback={<Text>Loading…</Text>}>
      <UserList />
    </Suspense>
  </View>
}

function UserList() {
  const { error, data } = useSuspenseQuery(GetUsersDocument);

  if (error) return <p>Error :(</p>;

  return (
    <FlatList
      data={data.users}
      keyExtractor={user => user.id}
      renderItem={({ item: user }) => (
        <View style={{ width: 100, height: 100 }}><Text>{user.name}</Text></View>
      )}
    />
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
