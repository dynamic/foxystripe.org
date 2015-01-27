<h4>Tags</h4>
<ul>
	<% loop getTags %>
		<% if Pages %>
			<li><a href="{$Top.Link}Tag/$ID" title="View the $Title tag">$Title</a> ($Pages.Count)</li>
		<% end_if %>
		<li>
	<% end_loop %>
</ul>

<% if getCategories %>
<h4>Categories</h4>
<ul>
	<li><a href="$Link" title="View all news">View all news</a></li>
	<% loop getCategories %>
		<% if NewsItems %>
			<li><a href="$Link" title="View the $Title category">$Title</a></li>
		<% end_if %>
	<% end_loop %>
</ul>
<% end_if %>

<%if NewsArchive %>
	<h4>Archives</h4>
	<ul>
		<% loop NewsArchive.GroupedBy(MonthCreated) %>
			<% loop Children %>
				<% if First %>
					<li>
						<a href="{$Top.Link}Archive/{$DateAuthored.Format(Y)}/{$DateAuthored.Format(m)}">
							$MonthCreated
						</a>
						({$TotalItems})
					</li>
				<% end_if %>
			<% end_loop %>
		<% end_loop %>
	</ul>
<% end_if %>