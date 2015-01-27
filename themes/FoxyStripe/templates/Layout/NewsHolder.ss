<div class="sixteen columns alpha omega crumbs half-bottom">
	$Breadcrumbs
</div>
<div class="twelve columns alpha typography blog-list">
	<article>
		<h2>$Title</h2>
		<% if $SubTitle %><h3>$SubTitle</h3><% end_if %>
		<div class="content typography">$Content</div>
	</article>
		
	<% if $Message %><h4>$Message</h4><% end_if %>

	<% if Items %>	
		<% loop Items %>
			<section class="row $EvenOdd clearfix">
				<%--$Summary--%>
				<% include BlogSummary %>
			</section>
		<% end_loop %>

		<% with Items %>
			<% include Pagination %>
		<% end_with %>
	<% else %>
		<p>No entries</p>
	<% end_if %>
</div>
<div class="four columns sidebar omega">
	<aside>
		<% include RssLink %>
		<% include TagList %>				
		<% include ArchiveList %>
	</aside>
</div>