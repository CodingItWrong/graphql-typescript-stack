import { drizzle } from "drizzle-orm/postgres-js";
import * as schema from "./schema";
import postgres from "postgres";

const connectionString = "postgres://josh:@localhost:5432/drizzle"
const sql = postgres(connectionString, { max: 1 })
export const db = drizzle(sql, { schema });
