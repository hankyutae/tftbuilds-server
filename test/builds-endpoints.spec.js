const knex = require('knex');
const app = require('../src/app');
const helpers = require('./test-helpers');

describe.only('Builds Endpoints', function () {
  let db;

  const { testUsers, testBuilds } = helpers.makeFixtures();
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
  describe('GET /api/builds/', () => {
    beforeEach('insert users and builds', () => helpers.seedBuilds(
      db,
      testUsers,
      testBuilds
    ));
    it('returns the builds associated with the user represented in the authheader', () => {
      return supertest(app)
        .get('/api/builds')
        .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
        .expect(200)
        .expect(res => {
          expect(res.body).to.eql(helpers.getArrayOfUsersBuilds(testUsers[0]).map(build => helpers.makeExpectedBuild(build)));
        });
    });

  });

  describe('POST /api/builds/', () => {
    beforeEach('insert users and builds', () => helpers.seedBuilds(
      db,
      testUsers,
      testBuilds
    ));

    const requiredFields = ['build_data'];
    requiredFields.forEach(field => {
      const newBuild = {/* 
        'user_id': testUsers[0].id, */
        'build_data': [
          {
            'id': 18,
            'items': [
              47,
              48,
              38
            ],
            'stars': 1
          }
        ]
      };
      it(`responds with 400 and an error message when the '${field}' is missing`, () => {
        delete newBuild[field];
        return supertest(app)
          .post('/api/builds')
          .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
          .send(newBuild)
          .expect(400, {
            error: `Missing '${field}' in request body`,
          });
      });

    });

    const requiredBuildDataKeys = ['id', 'items', 'stars'];
    requiredBuildDataKeys.forEach(key => {
      const newBuild = {/* 
        'user_id': testUsers[0].id, */
        'build_data': [
          {
            'id': 18,
            'items': [
              47,
              48,
              38
            ],
            'stars': 1
          }
        ]
      };
      delete (newBuild['build_data'][0])[key];
      it(`responds with 400 and some error message when I delete ${key} from build_data`, () => {
        return supertest(app)
          .post('/api/builds')
          .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
          .send(newBuild)
          .expect(400);
      });
    });

    const wrongBuildData = {
      id: ['hi', -1, 0, '<a>'],
      stars: ['hi', -1, 0, '<a>'],
      items: [1, 'g', [0, '<a>']]
    };
    Object.keys(wrongBuildData).forEach(key => {
      const newBuild = {/* 
        'user_id': testUsers[0].id, */
        'build_data': [
          {
            'id': 18,
            'items': [
              47,
              48,
              38
            ],
            'stars': 1
          }
        ]
      };
      wrongBuildData[key].forEach(replace => {
        (newBuild['build_data'][0])[key] = replace;
        it(`responds with 400 and some error message when I put illegal value ${replace} for ${key} in build_data`, () => {
          return supertest(app)
            .post('/api/builds')
            .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
            .send(newBuild)
            .expect(400);
        });
      });

    });



  });

  describe('DELETE /api/builds/:id', () => {
    beforeEach('insert users and builds', () => helpers.seedBuilds(
      db,
      testUsers,
      testBuilds
    ));
    it('returns 404 if id isn\'t found', () => {
      return supertest(app)
        .delete('/api/builds/78039f5d-5036-4ae5-8a3f-4d687f01bdb4')
        .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
        .expect(404, {
          error: { message: 'Build doesn\'t exist' }
        });
    });
    it('deletes given that the id exists', () => {
      return supertest(app)
        .delete(`/api/builds/${testBuilds[0].id}`)
        .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
        .expect(204)
        .then(() => {
          return supertest(app)
            .get('/api/builds')
            .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
            .expect(res=>{
              //the deleted build's id should no longer be among the user's items
              const ids=res.body.map(build=>build.id);
              expect(ids).to.be.an('array').that.does.not.include(testBuilds[0].id);
            });
        });
    });
    it('returns 403 if the auth header of another different user tries to delete', () => {
      return supertest(app)
        .delete(`/api/builds/${testBuilds[0].id}`)
        .set('Authorization', helpers.makeAuthHeader(testUsers[1]))
        .expect(403);
    });

  });
  describe('PATCH /api/builds/make-public/:id', () => {
    beforeEach('insert users and builds', () => helpers.seedBuilds(
      db,
      testUsers,
      testBuilds
    ));
    it('returns 404 if id doesn\'t exist',()=>{
      return supertest(app)
        .patch('/api/builds/make-public/78039f5d-5036-4ae5-8a3f-4d687f01bdb4')
        .set('Authorization', helpers.makeAuthHeader(testUsers[0]))
        .expect(404, {
          error: { message: 'Build doesn\'t exist' }
        });
    });
    it('returns 403 if the auth header of another different user tries to patch',()=>{
      return supertest(app)
        .patch(`/api/builds/make-public/${testBuilds[0].id}`)
        .set('Authorization', helpers.makeAuthHeader(testUsers[1]))
        .expect(403);
    });
    it('returns 204 if id is correct and the build belongs to the user implied by the auth header, also makes the build public',()=>{
      return supertest(app)
        .patch(`/api/builds/make-public/${testBuilds[1].id}`)
        .set('Authorization', helpers.makeAuthHeader(testUsers[1]))
        .expect(204)
        .then(()=>{
          return supertest(app)
            .get(`/api/public-builds/${testBuilds[1].id}`)
            .expect(200)
            .expect(res=>{
              expect(res.body['is_public']).to.eql(true);
            });
        });
    });
  });

});