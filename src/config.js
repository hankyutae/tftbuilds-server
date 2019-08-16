module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'development',
  DB_URL: process.env.DATABASE_URL || 'postgresql://tester@localhost/tftBuilds',
  TEST_DB_URL:process.env.TES_DB_URL || 'postgresql://tester@localhost/tftBuilds-test',

  JWT_SECRET: process.env.JWT_SECRET || 'lkglhjsigflkgjdsudkgkhjjskfkhsjoeuwk',
  //JWT_EXPIRY: process.env.JWT_EXPIRY || '1000s',
};