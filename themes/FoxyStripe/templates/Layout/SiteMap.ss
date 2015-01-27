<div class="twelve columns alpha">
	<article>
		<h2>$Title</h2>
		<div class="content">$Content</div>
		
		<% cached 'sitemap_page', ID, List(Page).Max(LastEdited) %>
			<% if Sitemap %>
				<div id="Sitemap">$Sitemap</div>
			<% end_if %>
		<% end_cached %>
		
	</article>
		$Form
		$PageComments
</div>
<div class="four columns side omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>