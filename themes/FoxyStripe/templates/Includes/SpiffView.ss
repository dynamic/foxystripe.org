<h4>
	<% if PageLinkID %><a href="$PageLink.Link" class="SpiffHeadline" title="$PageLink.MenuTitle.XML"><% end_if %>
    	<% if Headline %>
    		$Headline
    	<% else_if Name %>
    		$Name
    	<% end_if %>
    <% if PageLinkID %></a><% end_if %>
</h4>
<% if Image %>
    <% if PageLinkID %><a href="$PageLink.Link" class="home-glow" title="$PageLink.MenuTitle.XML"><% end_if %>
		<% with Image %>
			<img class="lazy scale-with-grid" data-original="$CroppedImage(220,165).URL" src="$ThemeDir/images/lazy/grey.gif" width="$CroppedImage(220,165).Width" height="$CroppedImage(220,165).Height" alt="<% if Headline %>$Headline<% else %>$Name<% end_if %> Thumbnail">
		<% end_with %>
    <% if PageLinkID %></a><% end_if %>
<% end_if %>
<% if Description %>$Description<% end_if %>
<% if $PageLink %><p><a href="$PageLink.Link" class="learnMore" title="$PageLink.MenuTitle.XML">Learn more.</a></p><% end_if %>
