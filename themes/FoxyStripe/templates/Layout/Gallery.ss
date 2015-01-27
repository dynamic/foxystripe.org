<div class="sixteen columns alpha omega half-bottom crumbs">
	$Breadcrumbs
</div>
<div class="sixteen columns alpha omega">

	<article>
		<h2>$Title</h2>
		<div class="typography">$Content</div>
	</article>


	<% if PhotoAlbums %>
		<% loop PhotoAlbums %>
			<div class="four columns gallery <% if MultipleOf(4,4) %> column-row alpha <% else_if MultipleOf(4,1) %>omega <% else %><% end_if %> add-bottom">
				<a href="#{$Pos}" class="view-gallery"><img src="{$Photo.URL}" class="scale-with-grid" alt="$Title Thumbnail"></a>
				<h5><a href="#{$Pos}" class="view-gallery">{$Title}</a></h5>
				<p>{$Description}</p>
				<a href="#{$Pos}">View Album</a>
			</div>
		<% end_loop %>
	<br class="clear">

	<div class="opaque-layer toggle-modal"></div>
	<% loop PhotoAlbums %>
	<div id="modal-{$Pos}" class="modal flex-container">
		<h3>$Title</h3>
		<a href="#" class="toggle-modal" title="Done"><span>Done</span></a>
		<div class="modal-inner">
			<div id='slider-{$Pos}' class="flexslider flexslides">
				<ul class="slides">
					<% loop PhotoItems %>
					<li>
						<img src="$Photo.URL" alt="$Title slideshow image" />
					</li>
					<% end_loop %>
				</ul>
			</div>
			<div id="carousel-{$Pos}" class="flexslider carousel">
				<ul class="slides">
					<% loop PhotoItems %>
					<li>
						<img src="$Photo.croppedImage(100,75).URL" alt="$Title filmstrip thumbnail" />
					</li>
					<% end_loop %>
				</ul>
			</div>
		</div>
	</div>
	<% end_loop %>


	<% end_if %>



	<% if Slides %>
		<section>
			<div class="slideshow clearfix">
				<% include FlexSlider %>
			</div>
		</section>
	<% end_if %>
	$Form
	$PageComments
</div>
