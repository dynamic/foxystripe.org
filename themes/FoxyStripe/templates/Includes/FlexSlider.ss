<% if SlideShow %>
<div class="flexslider">
    <ul class="slides">
    	<% loop SlideShow %>
        <li class="remove-bottom">
            <div class="four columns alpha home-slider">
	            <h2>$Name</h2>
	            <% if Description %><p class="half-bottom">$Description</p><% end_if %>
	            <% if PageLinkID %><p class="remove-bottom"><a href="$PageLink.Link" class="flex-button" title="$PageLink.MenuTitle.XML">Learn more</a></p><% end_if %>
            </div>
        	<div class="eleven columns offset-by-one omega">
	        	<% if PageLink %><a href="$PageLink.Link" title="$PageLink.MenuTitle.XML"><% end_if %>
				<% if Image %>
					<img src="$Image.URL" alt="$Name Slider Image">
	            <% end_if %>
	            <% if PageLink %></a><% end_if %>
            </div>
        </li>
        <% end_loop %>
    </ul>
</div>
<% end_if %>
