<div class="sixteen columns alpha omega half-bottom crumbs">
	$Breadcrumbs
</div>
<div class="twelve columns alpha">
	<article>
		<h2>$Title</h2>
		<% if $SubTitle %><h3>$SubTitle</h3><% end_if %>
		<div class="typography">$Content</div>
	</article>
	
	$SearchForm

	<h4>Results for "$Query"</h4>
    <% if $Results %>
        <% loop $Results %>
		    <div class="half-bottom">
				<h4>
		            <a class="searchResultHeader" href="$Link">
		                <% if $MenuTitle %>
		                $MenuTitle
		                <% else %>
		                $Title
		                <% end_if %>
		            </a>
		        </h4>
	            <p class="remove-bottom">$Content.LimitWordCountXML</p>
	            <p class="half-bottom"><a class="readMoreLink" href="$Link"
	                title="Read more about &quot;{$Title}&quot;"
	                >Read more about &quot;{$Title}&quot;...</a>
	            </p>
		    </div>
        <% end_loop %>
    <% else %>
    	<p>Sorry, your search query did not return any results.</p>
    <% end_if %>

	<% with Results %>
		<% include Pagination %>
	<% end_with %>

</div>