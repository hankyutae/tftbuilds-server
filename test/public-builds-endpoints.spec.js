const knex = require('knex');
const app = require('../src/app');
const helpers = require('./test-helpers');

describe.only('Public-Builds Endpoints', function () {
  let db;

  const { testUsers, testBuilds} = helpers.makeFixtures();
  const testUser = testUsers[0];

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
  describe('GET /api/public-builds/:id',()=>{
    beforeEach('insert users and builds', ()=> helpers.seedBuilds(
      db,
      testUsers,
      testBuilds
    ));
    it(`responds 404 'Build doesn't exist' when id doesn't correspond to a build that exists`, ()=>{
      return supertest(app)
        .get('/api/public-builds/abe4d583-157d-4ad8-b17a-a9dcae48656e')
        .expect(404, {
          error: { message: 'Build doesn\'t exist' }
        });
    });
    it(`responds 403 'Forbidden' when id corresponds to a not public build`, ()=>{
      return supertest(app)
        .get(`/api/public-builds/${testBuilds[1].id}`)
        .expect(403, {
          error: 'Forbidden'
        });
    });
    it(`responds 200 and gives back the build if id corresponds to a public build`, ()=>{
      return supertest(app)
        .get(`/api/public-builds/${testBuilds[0].id}`)
        .expect(200)
        .expect(res=>{
          expect(res.body).to.eql(helpers.makeExpectedBuild(testBuilds[0]));
        });
    });
  });

});