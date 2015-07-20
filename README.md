ChefSpec Problems with Jenkins Cookbook
=======================================

For a full description of the problem, refer to [http://stackoverflow.com/questions/31490187/chef-node-attribute-is-not-overridden-in-chefspec](http://stackoverflow.com/questions/31490187/chef-node-attribute-is-not-overridden-in-chefspec) and [https://github.com/sethvargo/chefspec/issues/610](https://github.com/sethvargo/chefspec/issues/610)

How to reproduce "the problem":

    cd app_jenkins_master
    rspec

Although the `node['jenkins']['master']['plugins']` attribute should be overridden in the ChefSpec test, the rspec test coverage shows that all plugins defined in the `app_jenkins_master/attributes/default.rb` seem to be used within the cookbook:

	Finished in 32.07 seconds (files took 1.83 seconds to load)
	3 examples, 0 failures


	ChefSpec Coverage report generated...

	  Total Resources:   32
	  Touched Resources: 3
	  Touch Coverage:    9.38%

	Untouched Resources:

	  jenkins_plugin[ldap]               app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[scm-api]            app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[matrix-project]     app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[instant-messaging]   app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[mapdb-api]          app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[build-pipeline-plugin]   app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[mask-passwords]     app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[jabber]             app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[mailer]             app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[parameterized-trigger]   app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[custom-job-icon]    app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[cloverphp]          app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[build-blocker-plugin]   app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[ansicolor]          app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[credentials]        app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[javadoc]            app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[ant]                app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[ssh-credentials]    app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[jenkinswalldisplay]   app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[performance]        app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[matrix-auth]        app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[ssh-agent]          app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[translation]        app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[git-client]         app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[windows-slaves]     app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[nested-view]        app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[template-project]   app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[antisamy-markup-formatter]   app_jenkins_master/recipes/jenkins_plugins.rb:9
	  jenkins_plugin[external-monitor-job]   app_jenkins_master/recipes/jenkins_plugins.rb:9
