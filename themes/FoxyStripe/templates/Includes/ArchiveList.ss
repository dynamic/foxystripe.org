<% if NewsArchive %>
	<h4>Archives</h4>
	<ul>
		<% loop NewsArchive.GroupedBy(MonthCreated) %>
			<% loop Children %>
				<% if First %>
					<li>
						<a href="{$Top.Link}archive/{$DateAuthored.Format(Y)}/{$DateAuthored.Format(m)}" rel="nofollow" title="View the $MonthCreated archives">
							$MonthCreated
						</a>
						({$TotalItems})
					</li>
				<% end_if %>
			<% end_loop %>
		<% end_loop %>
	</ul>
<% end_if %>