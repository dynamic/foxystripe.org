<% include Breadcrumbs %>

<div class="twelve columns omega main">
	<div class="rightcol">
		<% if Slides %>
			<div class="slideshow float-right clearfix">
				<% include FlexSlider %>
			</div>
		<% end_if %>
		<article>
			<h2>$Title</h2>
			<div class="typography">
				$Content
			</div>
		</article>
		$Form
		$PageComments
	</div>
</div>

<div class="four columns alpha side sidebar">
	<div class="leftcol">
		<aside>		
			<% if $Menu(3) %>
				<div class="prevnext">
					<% if PrevNextPage(next) %>
					    <% control PrevNextPage(next) %>
					    <h3>Next:</h3>
					    <p><a href="$Link" rel="next">$MenuTitle</a></p>
					    <% end_control %>
					<% end_if %>
					<% if PrevNextPage(prev) %>
					    <% control PrevNextPage(prev) %>
					    <h3>Previous:</h3>
					    <p><a href="$Link" rel="prev">$MenuTitle</a></p>
					    <% end_control %>
					<% end_if %>
				</div>
			<hr style="border-color: #000000; margin-top: 0px;" />
			<% end_if %>
			<% include SideBar %>
			
		</aside>
	</div>
</div>