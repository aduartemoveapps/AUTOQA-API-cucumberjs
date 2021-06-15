const { request, settings } = require('pactum');
const { Before } = require('@cucumber/cucumber');
const dotenv = require('dotenv');
dotenv.config();
// const myCustomLogger = {
//   trace(messages) {   /* custom code */   },
//   debug(messages) {   /* custom code */   },
//   info(messages) {    /* custom code */   },
//   warn(messages) {    /* custom code */   },
//   error(messages) {   /* custom code */   }
// };


Before(() => {
  request.setBaseUrl(process.env.ENVIRONMENT);
  settings.setReporterAutoRun(false);
  // settings.setLogLevel('TRACE');
  // settings.setLogger(myCustomLogger);
});


