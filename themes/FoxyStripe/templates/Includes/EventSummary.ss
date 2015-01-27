	<% if DateAuthored %>$DateAuthored.Format(F j), $DateAuthored.Format(Y)<% end_if %>
	<header>
		<h4><a href="$Link"><% if PreviewTitle %>$PreviewTitle<% else %>$Title<% end_if %></a></h4>
		<h5>$SubTitle</h3>
	</header>
	<div class="clearfix">
		<div class="two columns alpha">
			
			<% if PreviewThumb %>
				<a href="$Link"><img src="$PreviewThumb.URL" class="scale-with-grid" alt="$Title Thumbnail"></a>
			<% else %>
				<div class='calendar'><a href="$Link"><img src="$ThemeDir/images/calendar.jpg" class="scale-with-grid calendar-image" alt="$Title Thumbnail"><div class="calendar-month">$Date.Format(M)</div><div class="calendar-day">$Date.Format(d)</div></a></div>
			<% end_if %>
			
		</div>
		<div class="ten columns omega">
			<p>
				<strong>When:</strong> $Date.Format(F j Y)<% if $EndDate %> - $EndDate.Format(F j Y)<% end_if %><br>
				<strong>Time:</strong> $Time.Format(g:i a)<% if $EndTime %> - $EndTime.Format(g:i a)<% end_if %><br>
			</p>
			
			<% if Abstract %>
				<p>$Abstract.LimitWordCount</p>
			<% else %>
				$Content.FirstParagraph(html)
			<% end_if %>
			
			<% if Tags %>
				<div class="half-bottom half-top">
					<span class="tags"> Tags:&nbsp;&nbsp;
						<% loop Tags %>
							<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Title</a><% if not Last %>&nbsp;&nbsp;|&nbsp;&nbsp;<% end_if %>
						<% end_loop %>
					</span>
				</div>
			<% end_if %>
			<p class="add-top clearfix"><a href="$Link" class="readmore" title="Read Full Post">View the event</a></p>
		</div>
	</div>
	
	
	<hr>
