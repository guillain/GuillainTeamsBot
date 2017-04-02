var config = {};

config.name = 'TeamsBot';
config.debug = '1';

// Server
config.host = 'localhost';
config.host = 'guillainteamsbot.azurewebsites.net';
config.port = '443';
config.url = 'https://' + config.host + ':' + config.port + '/api/messages';
config.key = '/etc/ssl/private/dev-collab.tontonserver.com.key';
config.certificate = '/etc/ssl/private/dev-collab.tontonserver.com.crt';

// Teams
config.MICROSOFT_APP_ID = '4936b730-a90e-40c0-a58c-14d87fb2033e';
config.MICROSOFT_APP_PASSWORD = 'KR5eNMF8Wv9MU9OsgK1Gkfb';

// export config
module.exports = config;
