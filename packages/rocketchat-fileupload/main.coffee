Meteor.startup ->
	if Meteor.isServer
			initFileStore()
		else
			Tracker.autorun (c) ->
				if RocketChat.settings.subscription.ready()
					initFileStore()
					c.stop()
