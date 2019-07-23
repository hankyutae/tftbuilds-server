const logger=require('./logger');

function errorHandler(error, req, res, next) {
  let response;
  if (process.env.NODE_ENV === 'production') {
    response = { error: { message: 'server error' } };
  } else {
    logger.error(error);
    response = { message: error.message, error };
  }
  res.status(500).json(response);
}

module.exports=errorHandler;