A Brand New Cronuts Widget!

Rebuilt so it's more than just a block on a page!

Embed into any with a few lines of code;
<pre>
<iframe id="widget-iframe" src="http://www.${insert_host_tld_here}.com.au/cronut_widget/show?cronuts_url=https://www.google.com">
  <p>Placeholder text; only shows up if the page DOESN'T render!</p>
</iframe>
</pre>
Or for those running it from their own local setup!
  <pre><%= render 'cronut_widget/widget_embed' %></pre>
Which becomes;
<pre>
<iframe id="widget-iframe" src="<%= url_for(action: :show, controller: 'cronut_widget', locale: 'en',
                                            cronuts_url: params['cronuts_url'], donuts_url: params['donuts_url'],
                                            format: :html) %>">
  <p>Placeholder text; only shows up if the page DOESN'T render!</p>
</iframe>
</pre>

How Neat!
Features;
*Embed the IFrame anywhere, and change the languages with a click of a link! No nasty page refreshes, no data loss!
*Default cronuts and donuts are available, but customize your own by simply adding a query string to your link!
*Safe and secure, no errors when a new language pops up! Can't script in an Iframe!

Coming Soon!
*Broken link checking


