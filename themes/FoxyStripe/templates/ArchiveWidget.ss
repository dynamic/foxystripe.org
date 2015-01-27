<% if DisplayMode == month %>
		<% loop Dates %>
				<a href="$Link">
					$Date.Format(F) $Date.Year 
				</a><% if Last %><% else %><br><% end_if %>
		<% end_loop %>
<% else %>
		<% loop Dates %>
				<a href="$Link">
					$Date.Year
				</a><% if Last %><% else %><br><% end_if %>
		<% end_loop %>
<% end_if %>