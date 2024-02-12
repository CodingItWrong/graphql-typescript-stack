import { Suspense } from "react";
import { UserList } from "./UserList";

export default function Home() {
  return (
    <div className="App">
      <h1>Users</h1>
      <Suspense fallback={<p>Loading…</p>}>
        <UserList />
      </Suspense>
    </div>
  );
}
