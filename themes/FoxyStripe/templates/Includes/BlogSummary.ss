<div class="newsAuthor">
	<p class="authorDate remove-bottom"><% _t('BlogSummary_ss.POSTEDBY', 'Posted by') %> $Author.XML <% _t('BlogSummary_ss.POSTEDON', 'on') %> $Date.Long | <a href="$Link#comments-holder" title="View Comments Posted">$Comments.Count <% _t('BlogEntry_ss.COMMENTS', 'Comments') %></a></p>
</div>
<header>
	<h4><a href="$Link">$Title</a></h4>
</header>
<% if PreviewThumb %>
	<div class="two columns alpha">
		<a href="$Link"><img src="$PreviewThumb.Thumb.URL" class="scale-with-grid" alt="$Title Thumbnail"></a>
	</div>
<% end_if %>
<div class="<% if PreviewThumb %>ten<% else %>twelve alpha<% end_if %> columns omega">
	<% if Abstract %>
		<p>$Abstract.LimitWordCount</p>
	<% else %>
		<p>$Content.FirstParagraph(text)</p>
	<% end_if %>
		<p><a href="$Link" class="readmore" title="Read Full Post">Read the full post</a></p>
</div>
<% if Tags %>
	<div class="twelve columns alpha omega half-bottom">
		<span class="tags"> Tags:&nbsp;&nbsp;
			<% loop Tags %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Title</a><% if not Last %>&nbsp;&nbsp;|&nbsp;&nbsp;<% end_if %>
			<% end_loop %>
		</span>
	</div>
<% end_if %>
<hr>