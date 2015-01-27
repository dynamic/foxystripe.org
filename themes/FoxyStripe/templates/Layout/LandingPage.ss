<div class="sixteen columns alpha omega half-bottom crumbs">
	$Breadcrumbs
</div>
<div class="twelve columns alpha">
	<% if Slides %>
		<section>
			<div class="slideshow clearfix">
				<% include FlexSlider %>
			</div>
		</section>
	<% end_if %>
	
	<article>
		<h2>$Title</h2>
		<% if SubTitle %><h3 class="subtitle">$SubTitle</h3><% end_if %>
		<div class="typography">$Content</div>
	</article>
	<section>
		<% if SpiffList %>
			<div class="grid add-top typography">
				<% loop SpiffList.Limit(3) %>
					<div class="four columns <% if First %>alpha<% end_if %> <% if Last %>omega<% end_if %>">
						$Me
					</div>
				<% end_loop %>
			</div>
		<% end_if %>
	</section>
	
	$Form
	$PageComments
</div>

<div class="four columns sidebar omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>