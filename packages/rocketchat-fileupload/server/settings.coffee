Meteor.startup ->
	RocketChat.settings.addGroup 'FileUpload'
	RocketChat.settings.add 'FileUpload_Enabled', true, { type: 'boolean', group: 'FileUpload', public: true }
	RocketChat.settings.add 'FileUpload_MaxFileSize', 2097152, { type: 'int', group: 'FileUpload', public: true }
	RocketChat.settings.add 'FileUpload_MediaTypeWhiteList', 'image/*, audio/*', { type: 'string', group: 'FileUpload', public: true, i18nDescription: 'FileUpload_MediaTypeWhiteListDescription' }
	RocketChat.settings.add 'FileUpload_AllowPublicDownload', false, { type: 'boolean', group: 'Message', public: true }
