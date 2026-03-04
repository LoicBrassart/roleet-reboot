import { defineConfig } from "vitest/config";

export default defineConfig({
  test: {
    include: ["_unit-tests/**/*.test.ts", "_integration-tests/**/*.test.ts"],
  },
});
