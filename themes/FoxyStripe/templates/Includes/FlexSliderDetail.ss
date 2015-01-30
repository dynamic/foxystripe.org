<% if SlideShow %>
<div class="flexslider detail">
    <ul class="slides">
    	<% loop SlideShow %>
        <li class="remove-bottom">
	        	<% if PageLink %><a href="$PageLink.Link" title="$PageLink.MenuTitle.XML"><% end_if %>
				<% if Image %>
					<img src="$Image.URL" alt="$Name Slider Image">
	            <% end_if %>
	            <% if PageLink %></a><% end_if %>
	            <% if $Name || $Description %>
	            	<div class="slide-text">
						<% if $Name %><h5>$Name</h5><% end_if %>
						<% if Description %><p class="half-bottom">$Description</p><% end_if %>
						<% if PageLinkID %><p class="remove-bottom"><a href="$PageLink.Link" title="$PageLink.MenuTitle.XML">Learn more</a></p><% end_if %>
					</div>
				<% end_if %>
        </li>
        <% end_loop %>
    </ul>
</div>
<% end_if %>
