<div class="sixteen columns alpha omega crumbs double-bottom">
	$Breadcrumbs
</div>
<div class="twelve columns alpha">
	<div class="newsAuthor"><% _t('BlogEntry_ss.POSTEDBY', 'Posted by') %> $Author.XML <% _t('BlogEntry_ss.POSTEDON', 'on') %> $Date.Long | $Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></div>

	<h2 class="green-text">$Title</h2>
	<article>
		<p class="authorDate"><% _t('BlogEntry_ss.POSTEDBY', 'Posted by') %> $Author.XML <% _t('BlogEntry_ss.POSTEDON', 'on') %> $Date.Long | $Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></p>
		<% if TagsCollection %>
			<p class="tags">
				 <% _t('BlogEntry_ss.TAGS', 'Tags:') %> 
				<% loop TagsCollection %>
					<a href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if not Last %>,<% end_if %>
				<% end_loop %>
			</p>
		<% end_if %>		
		$Content
		
		<% include ShareThis %>
		<hr />
	</article>
			
	$Form
	$PageComments
			
</div>
<div class="four columns sidebar omega">
	<aside>
		<% with Parent %>
			<% include BlogSideBar %>
		<% end_with %>
	</aside>
</div>