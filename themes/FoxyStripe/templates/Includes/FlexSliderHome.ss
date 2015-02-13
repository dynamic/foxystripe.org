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
        </li>
        <% end_loop %>
    </ul>
</div>
<% end_if %>
