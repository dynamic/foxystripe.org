			<div class="float-right printShare">
				<a href="" onclick="window.print(); return false;">Print</a>
			
				<% with parent %>
					<% if $RSSLink %>
						| <a href="$RSSLink" target="_blank">Subscribe</a>
					<% else_if $DefaultRSSLink %>
						| <a href="$DefaultRSSLink" target="_blank">Subscribe</a>
					<% end_if %>
				<% end_with %>
			</div>
