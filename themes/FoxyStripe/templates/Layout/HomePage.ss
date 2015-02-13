<div class="twelve columns alpha ">
	<% if Slides %>
		<section>
			<div class="slideshow clearfix">
				<% include FlexSliderHome %>
			</div>
		</section>
	<% end_if %>
	
	<article>
		<div class="content typography">$Content</div>
		
		<% if MarkdownContent %>
			<div class="content typography">$MarkdownContent</div>
		<% end_if %>
	</article>

</div>
<div class="four columns sidebar omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>