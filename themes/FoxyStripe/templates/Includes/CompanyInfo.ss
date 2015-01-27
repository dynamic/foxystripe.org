<% with SiteConfig %>	
    $FullAddressHTML
    
	$AddressMap(420,233)
    
    <% if PhoneNumber %>
        <p>
        	Phone:<br>
        	<a href="tel:{$PhoneNumber}" class="PhoneTracking">$PhoneNumber</a>
        </p>
    <% end_if %>
    
    <% if Hours %>
        <p>
        	HOURS:<br>
        	$Hours
        </p>
    <% end_if %>
<% end_with %>