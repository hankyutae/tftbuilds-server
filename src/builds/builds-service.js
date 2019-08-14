const xss = require('xss');

const BuildsService ={
  getById(db, id) {
    return db.from('builds')
      .select('*')
      .where('id',id)
      .first();
  },
  getAllByUserId(db,user_id){
    return db.from('builds')
      .select('*')
      .where('user_id',user_id);
  },
  makePublic(db, id){
    return db.from('builds')
      .where('id',id)
      .update({
        is_public:true
      });
  },
  insertBuild(db, newBuild) {
    return db
      .insert(newBuild)
      .into('builds')
      .returning('*')
      .then(([build]) => build)
      .then(build =>
        BuildsService.getById(db, build.id)
      );
  },
  deleteById(db,id){
    return db.from('builds')
      .where('id',id)
      .delete();
  },
  serializeBuild(build){
    return build;

  }

};

module.exports=BuildsService;

