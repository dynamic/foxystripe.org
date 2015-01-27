<div class="sixteen columns alpha omega half-bottom crumbs">
	$Breadcrumbs
</div>
<div class="twelve columns alpha">
		
	<article class="add-top">
		<% if Image %><p class="half-bottom"><img src="$Image.URL" class="scale-with-grid" alt="$Title Header Image"></p><% end_if %>		
		<h2>$Title</h2>
		<% if SubTitle %><h3 class="subtitle">$SubTitle</h3><% end_if %>

		<div class="toolbar">
			<% include ShareThis %>
		</div>
		
		<div class="content typography">$Content</div>
		
		<% if SlideShow %>
			<div class="slideshow clearfix">
				<% include FlexSliderDetail %>
			</div>
		<% end_if %>
		
		<% if Tags %><p><% include Tags %></p><% end_if %>
		
	</article>
			
	$Form
	$PageComments
			
</div>
<div class="four columns sidebar omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>