<div class="sixteen columns crumbs double-bottom">
	$Breadcrumbs
</div>
<div class="twelve columns alpha">
	<article>
		<h2>$Title</h2>
		$Content
		
		<h4>$DateHeader</h4>
		<% if $UpcomingEvents %>	
			<% loop $UpcomingEvents %>
				<section class="row $EvenOdd clearfix">
					<% include EventSummary %>
				</section>
			<% end_loop %>
	
			<% with $UpcomingEvents %>
				<% include Pagination %>
			<% end_with %>
		<% else %>
			<p>No entries</p>
		<% end_if %>
	</article>
</div>

<div class="four columns sidebar omega">
	<aside>
		<% include EventSideBar %>
	</aside>
</div>
