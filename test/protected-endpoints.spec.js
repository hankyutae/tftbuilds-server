const knex = require('knex');
const app = require('../src/app');
const helpers = require('./test-helpers');

describe('Protected endpoints', function () {
  let db;

  const {
    testUsers,
    testBuilds,
  } = helpers.makeFixtures();

  before('make knex instance', () => {
    db = knex({
      client: 'pg',
      connection: process.env.TEST_DB_URL,
    });
    app.set('db', db);
  });

  after('disconnect from db', () => db.destroy());

  before('cleanup', () => helpers.cleanTables(db));

  afterEach('cleanup', () => helpers.cleanTables(db));

  beforeEach('insert builds', () =>
    helpers.seedBuilds(
      db,
      testUsers,
      testBuilds
    )
  );

  const protectedEndpoints = [
    {
      name: 'GET /api/builds',
      path: '/api/builds',
      method: supertest(app).get,
    },
    {
      name: 'POST /api/builds',
      path: '/api/builds',
      method: supertest(app).post,
    },
    {
      name: 'DELETE /api/builds/:id',
      path: `/api/builds/${testBuilds[0].id}`,
      method: supertest(app).delete,
    },
    {
      name: 'PATCH /api/builds/make-public/:id',
      path: `/api/builds/make-public/${testBuilds[0].id}`,
      method: supertest(app).delete,
    }
  ];
  protectedEndpoints.forEach(endpoint => {
    describe(endpoint.name, () => {
      it(`responds 401 'Missing bearer token' when no bearer token`, () => {
        return endpoint.method(endpoint.path)
          .expect(401, { error: `Missing bearer token` });
      });

      it(`responds 401 'Unauthorized request' when invalid JWT secret`, () => {
        const validUser = testUsers[0];
        const invalidSecret = 'bad-secret';
        return endpoint.method(endpoint.path)
          .set('Authorization', helpers.makeAuthHeader(validUser, invalidSecret))
          .expect(401, { error: `Unauthorized request` });
      });

      it(`responds 401 'Unauthorized request' when invalid sub in payload`, () => {
        const invalidUser = { user_name: 'user-not-existy', id: 1 };
        return endpoint.method(endpoint.path)
          .set('Authorization', helpers.makeAuthHeader(invalidUser))
          .expect(401, { error: `Unauthorized request` });
      });
    });
  });

});