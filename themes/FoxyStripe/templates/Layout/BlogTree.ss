<div class="twelve columns alpha">
	<article>
		$Breadcrumbs
		<h1>$Title</h1>
		
		<% if SelectedTag %>
			<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
		<% else_if SelectedDate %>
			<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
		<% end_if %>
		
		<% if BlogEntries %>
			<% control BlogEntries %>
				<% include BlogSummary %>
			<% end_control %>
		<% else %>
			<h2><% _t('NOENTRIES', 'There are no blog entries') %></h2>
		<% end_if %>
		
		<% include BlogPagination %>
	
	</article>
	
</div>
<div class="four columns omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>