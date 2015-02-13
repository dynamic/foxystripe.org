<div class="sixteen columns alpha omega half-bottom crumbs">
	$Breadcrumbs
</div>
<div class="twelve columns alpha ">
	<article>
		<h2>$Title</h2>
		<% if $SubTitle %><h3>$SubTitle</h3><% end_if %>
		<div class="content typography">$Content</div>
		<% if Slides %>
			<section>
				<div class="slideshow clearfix">
					<% include FlexSliderDetail %>
				</div>
			</section>
		<% end_if %>
		<% if MarkdownContent %>
			<div class="content typography markdown-body">$MarkdownContent</div>
		<% end_if %>
	</article>

	$Form
	$PageComments
</div>
<div class="four columns sidebar omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>