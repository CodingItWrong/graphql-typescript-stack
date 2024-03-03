import { Suspense } from "react";
import client from "./apolloClient";
import { GetUsersDocument } from "./generated/graphql";

export default function Home() {
  /*
   * NOTE: when you first start the Next server and load this page, you should see "Loading…"
   * in the returned HTML, then see users outputted on the page without a GraphQL request to
   * the server. If you then reload the page you'll see the users rendered from the start,
   * because they are available immediately in the cache.
   */
  return (
    <div className="App">
      <h1>Users</h1>
      <Suspense fallback={<p>Loading…</p>}>
        <UserList />
      </Suspense>
    </div>
  );
}

async function UserList() {
  // see https://blog.logrocket.com/why-use-next-js-apollo/
  const {data} = await client.query({query: GetUsersDocument});

  return (
      <ul>
        {data.users.map(user => (
          <li key={user.id}>{user.name}</li>
        ))}
      </ul>
  );
}
