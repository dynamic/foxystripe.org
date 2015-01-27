		<% if $YouTubeSpiffs %>
			<% loop $YouTubeSpiffs.Limit(2) %>
				<div class="GalleryHolder">
					<div class="Video half-top">
						<div class="overlay-container">
							<a href="$Link" rel="#VideoClicker-{$ID}">
								<% if $Image %>
									<img src="$Image.URL" alt="$Title" class="scale-with-grid">
								<% else %>
									<div style="width: 100%; background: gray; height: 50px;"></div>
								<% end_if %>
							</a>
							<br class="clearfix">
							<p class="remove-top"><a href="$Link" rel="#VideoClicker-{$ID}">$Title</a></p>
							<div class="simple_overlay" id="VideoClicker-{$ID}">
								$EmbedCode
								<div id="transparent-bg"></div>
							</div>
						</div>
					</div>
				</div>
			<% end_loop %>
		<% end_if %>

<%-- video.js used for triggering overlays, jquery.tools used for overlay--%>
<script src="$ThemeDir/javascript/video.js"></script>
<script src="$ThemeDir/javascript/jquery.tools.min.js"></script>