import { useSuspenseQuery } from "@apollo/client";
import { GetUsersDocument } from "./generated/graphql";
import client from "./apolloClient";

export async function UserList() {
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
