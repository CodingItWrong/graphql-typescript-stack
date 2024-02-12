import { useSuspenseQuery } from '@apollo/client';
import { GetUsersDocument } from './generated/graphql';
import { Suspense } from 'react';

function App() {
  return (
    <div className="App">
      <h1>Users</h1>
      <Suspense fallback={<p>Loading…</p>}>
        <UserList />
      </Suspense>
    </div>
  );
}

function UserList() {
  const { error, data } = useSuspenseQuery(GetUsersDocument);

  if (error) return <p>Error :(</p>;

  return (
    <ul>
      {data.users.map(user => (
        <li key={user.id}>{user.name}</li>
      ))}
    </ul>
  );
}

export default App;
