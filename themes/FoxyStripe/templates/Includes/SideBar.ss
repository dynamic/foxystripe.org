<% if Menu(2) %>
<h4><%if Level(2) %>$Parent.Title<% else %>$Title <% end_if %></h4>
	<nav class="secondary">
		<ul>
			<% loop Menu(2) %>
				<li class="$LinkingMode">
					<a href="$Link" title="Go to the $Title.XML page">
						$MenuTitle.XML
					</a>
					<% if MenuChildren %>
						<ul>
							<% loop MenuChildren %>
								<li class="$LinkingMode"><a href="$Link" title="Go to the $Title.XML page">$MenuTitle.XML</a></li>
							<% end_loop %>
						</ul>
					<% end_if %>
				</li>
			<% end_loop %>
		</ul>
	</nav>
<% end_if %>
<a class="sideView" href="https://github.com/dynamic/foxystripe" target="_blank">View on <strong>GitHub</strong></a>
<a class="sideView" href="https://packagist.org/packages/dynamic/foxystripe" target="_blank">View on <strong>Packagist</strong></a>
<a class="sideView" href="http://addons.silverstripe.org/add-ons/dynamic/foxystripe" target="_blank"><strong>SilverStripe Add-ons</strong></a>