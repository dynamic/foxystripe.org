<div class="twelve columns alpha">
	<article>
		$Breadcrumbs
		<h2>$Title</h2>
		<div class="content">$Content</div>
		<h3>$FeedTitle</h3>
		<% if YoutubeVideos.Count %>
			<p>$YoutubeVideos.FirstItem - $YoutubeVideos.LastItem of $YoutubeVideos.getTotalItems videos</p>
			<ul class="PageList youtubegallery">
			<% control YoutubeVideos %>
				<li class="clearfix">
					<h3>
						<% if Top.ShowVideoInPopup %>
							<a 
								params="lightwindow_width={$PlayerWidth},lightwindow_height={$PlayerHeight},lightwindow_loading_animation=false,lightwindow_type=external" 
								href="{$PlayerURL}" 
								class="lightwindow"
							>
								$Title
							</a>
						<% else %>
							<a href="$PlayerURL" title="$Title">$Title</a>
						<% end_if %>
					</h3>
					
					<% if Top.ShowVideoInPopup %>
						<a 
							params="lightwindow_width={$PlayerWidth},lightwindow_height={$PlayerHeight},lightwindow_loading_animation=false,lightwindow_type=external" 
							href="{$PlayerURL}" 
							class="lightwindow"
						>
							<% control SmallThumbnail %>
								<img src="$URL" alt="$Top.Title" width="$Width" height="$Height" />
							<% end_control %>
						</a>
					<% else %>
						<a href="$PlayerURL" title="$title">
							<% control SmallThumbnail %>
								<img src="$URL" alt="$Title" width="$Width" height="$Height" />
							<% end_control %>
						</a>
					<% end_if %>
					
					<p>
						$Description.Summary<br />
						<strong>Duration : </strong>$Runtime
					</p>
				</li>
			<% end_control %>
			</ul>
			
			<% if YoutubeVideos.MoreThanOnePage %>
			    <% if YoutubeVideos.NotFirstPage %>
			        <a class="prev" href="$YoutubeVideos.PrevLink">Prev</a>
			    <% end_if %>
			    <% loop YoutubeVideos.Pages %>
			        <% if CurrentBool %>
			            $PageNum
			        <% else %>
			            <% if Link %>
			                <a href="$Link">$PageNum</a>
			            <% else %>
			                ...
			            <% end_if %>
			        <% end_if %>
			        <% end_loop %>
			    <% if YoutubeVideos.NotLastPage %>
			        <a class="next" href="$YoutubeVideos.NextLink">Next</a>
			    <% end_if %>
			<% end_if %>
		<% else %>
			<span>Sorry! Gallery doesn't contain any images for this page.</span>
		<% end_if %>
	</article>
		$Form
		$PageComments
</div>
<div class="four columns omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>