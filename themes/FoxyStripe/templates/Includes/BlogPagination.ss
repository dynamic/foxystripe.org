<% if BlogEntries.MoreThanOnePage %>
<div class="apple_pagination clearfix double-top">
		<% if BlogEntries.NotFirstPage %>
				<a class="previous_page" href="$BlogEntries.PrevLink" title="View the previous page">&lt; Previous</a>
		<% else %>	
			<span class="disabled previous_page">&lt; Previous</span>
		<% end_if %>
	
    	<% loop BlogEntries.PaginationSummary(4) %>
			<% if CurrentBool %>
				<em class="current">$PageNum</em>
			<% else %>
				<% if Link %>
					<a href="$Link">$PageNum</a>
				<% else %>
					<em>...</em>						
				<% end_if %>
			<% end_if %>
		<% end_loop %>
	
		<% if BlogEntries.NotLastPage %>
			<a class="next_page" href="$BlogEntries.NextLink" title="View the next page">Next &gt;</a>
		<% else %>
			<span class="disabled next_page">Next &gt;</span>
		<% end_if %>
</div>
<% end_if %>