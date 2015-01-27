<div class="home">
	<% if SlideShow %>
		<div class="slideshow">
			<% include FlexSlider %>
		</div>
	<% end_if %>
	
	<div class="row">
		<div class="twelve columns alpha typography">
			<h2>$Title</h2>
			<% if SubTitle %><h3>$SubTitle</h3><% end_if %>
			<% if Content %>$Content<% end_if %>
		</div>
		<hr>
	</div>

	<% if SpiffList %>
		<div class="grid add-top typography">
			<% loop SpiffList.Limit(4) %>
				<div class="four columns <% if First %>alpha<% end_if %> <% if Last %>omega<% end_if %>">
					$Me
				</div>
			<% end_loop %>
		</div>
	<% end_if %>
</div>