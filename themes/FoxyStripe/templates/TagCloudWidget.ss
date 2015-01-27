<p class="tagcloud">
	<% loop TagsCollection %>
		<a href="$Link" class="$Class">$Tag.XML</a><% if Last %><% else %><br><% end_if %>
	<% end_loop %>
</p>