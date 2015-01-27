<div class="sixteen columns alpha omega crumbs double-bottom">
	$Breadcrumbs
</div>
<div class="twelve columns alpha">
<div class="newsAuthor"><% if $DateAuthored %><p>$DateAuthored.Format(F j), $DateAuthored.Format(Y)<% if $Author %><br>by: $Author<% end_if %><% end_if %></div>

	<h2 class="green-text">$Title</h2>
	<article>
		<% if Image %><p class="half-bottom"><img src="$Image.LargePadded(700,400,ffffff).URL" class="scale-with-grid" alt="$Title Header Image"></p><% end_if %>
		
		<% if SubTitle %><h3 class="strong">$SubTitle</h3><% end_if %>
		
		<div class="typography">$Content</div>
		
		<% if SlideShow %>
			<div class="slideshow clearfix">
				<% include FlexSlider %>
			</div>
		<% end_if %>
		
		<div class="toolbar add-bottom">
		<% if Tags %><p><% include Tags %></p><% end_if %>
		</div>
		
			<% include ShareThis %>
	</article>
			
	$Form
	$PageComments
			
</div>
<div class="four columns sidebar omega">
	<aside>
		<% with Parent %>
			<% include RssLink %>
			<% include ArchiveList %>
			<% include TagList %>
		<% end_with %>
	</aside>
</div>