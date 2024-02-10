import { useQuery } from '@apollo/client';
import { GetUsersDocument } from './generated/graphql';

function App() {
  const { loading, error, data } = useQuery(GetUsersDocument);

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error :(</p>;
  if (!data) return <p>Data is undefined??</p>;

  return (
    <div className="App">
      <h1>Users</h1>
      <ul>
        {data.users.map(user => (
          <li key={user.id}>{user.name}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;
