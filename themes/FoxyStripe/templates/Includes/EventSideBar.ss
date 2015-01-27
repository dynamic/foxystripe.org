		<% if Tags %>
			<h4>Tags</h4>
			<ul>
				<% loop Tags %>
					<% if RelatedPages %>
						<li><a href="$Link" title="View the $Title tag">$Title</a> ($RelatedPages)</li>
					<% end_if %>
				<% end_loop %>
			</ul>
		<% end_if %>

<% if Address %>
	<% if $LocationTitle %><h5><strong>Location:<br></strong> $LocationTitle</h5><% end_if %><br>
	$FullAddressHTML
    <br>
	$AddressMap(420,233)
    
<% end_if %>

