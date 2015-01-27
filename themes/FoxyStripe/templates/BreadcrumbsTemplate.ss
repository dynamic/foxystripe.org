<% if Pages %>
	<a href="/">Home</a> <span class="green-text">&nbsp;&nbsp;/&nbsp;&nbsp;</span>
	<% loop Pages %>
		<% if Last %>$Title<% else %><a href="$Link">$MenuTitle</a> <span class="green-text">&nbsp;&nbsp;/&nbsp;&nbsp;</span> <% end_if %>
	<% end_loop %>
<% end_if %>