## My first Redcar plugin

The idea for my first plugin is rather ambitious considering I’ve no idea how to write a plugin. 
I’d like to replicate some of the functionality of Live Reload – basically refresh a browser web page whenever I save a file in Redcar. This will save me constantly hitting refresh in the browser when working with Backbone.js.

I’m hoping to trap the save event of Redcar and call out to my browser (Chrome) and tell it to refresh the page.

More info here [http://justinram.wordpress.com/2011/08/19/my-first-redcar-plugin/]

## How to use

Open the directory which contains your html file using File -> Open Directory. This is important or the plugin will not work!

Configure the plugin via the Redcar plugin preferences - Redcar -> Preferences... -> live_reload_plugin.yaml

Set the keyword to the title of the Chrome browser tab you'd like to refresh on save.

That's should be it, now every time you save in Redcar the chrome browser tab should refresh.