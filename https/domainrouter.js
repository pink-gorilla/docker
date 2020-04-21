var redbird = require("redbird");

var proxy = require("redbird")({
 port: 80, // http port is needed for LetsEncrypt challenge during request / renewal. Also enables automatic http->https redirection for registered https routes. 
  // secure: true,
 xfwd: false,
 letsencrypt: {
    path: __dirname + '/letsencrypt',
    port: 3231 // the path for the minimalist challenge server; default 3000 if not defined
 },
 ssl: {
    http2: false,
    port: 443, // SSL port used to serve registered https routes with LetsEncrypt certificate.
 }
});

proxy.register("pinkgorilla.org", "http://127.0.0.1:80", {
ssl: {
        letsencrypt: {
          email: 'office@pinkgorilla.org',
          production: true // WARNING: Only use this flag when the proxy is verified to work correctly to avoid being banned!
        }
      }
});

