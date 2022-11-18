const request = require("supertest");
const app = require("../src/app");

describe("Post Endpoints", () => {
  it("should create a new post", async () => {
    const res = await request(app).get("/");
    expect(res.statusCode).toEqual(200);
  });
});
