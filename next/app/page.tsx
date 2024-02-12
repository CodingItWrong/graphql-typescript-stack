import { useSuspenseQuery } from "@apollo/client";
import { GetUsersDocument } from "./generated/graphql";
import { Suspense } from "react";

export default function Home() {
  return (
    <div className="App">
      <h1>Users</h1>
      <Suspense fallback={<p>Loading…</p>}>
        <Users />
      </Suspense>
    </div>
  );
}

function Users() {
  const { data } = useSuspenseQuery(GetUsersDocument);

  return (
      <ul>
        {data.users.map(user => (
          <li key={user.id}>{user.name}</li>
        ))}
      </ul>
  );
}
