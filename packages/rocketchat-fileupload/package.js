Package.describe({
	name: 'rocketchat:fileupload',
	version: '0.0.1',
	summary: 'RocketChat file upload',
	git: ''
});

Package.onUse(function(api) {
	api.versionsFrom('1.0');

	api.use([
		'coffeescript',
		'underscore',
		'mongo',
		'jalik:ufs',
		'jalik:ufs-gridfs',
		'rocketchat:lib'
	]);

	api.addFiles(['server/settings.coffee'], 'server');

	api.addFiles(['lib/fileupload.coffee']);

	api.addFiles('client/main.coffee', 'client');

	api.addFiles('main.coffee', ['client', 'server']);

});

Package.onTest(function(api) {

});
