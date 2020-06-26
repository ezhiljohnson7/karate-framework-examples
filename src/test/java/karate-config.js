function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	baseUrl: 'http://localhost:8080/api/v1',
	reqresUrl: 'https://reqres.in',
	baseUrl1: 'http://localhost:8080/api/v1',
	reqresUrl1: 'https://reqres.in'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}