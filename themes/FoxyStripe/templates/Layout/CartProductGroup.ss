<div class="twelve columns alpha">
	<article>
		$Breadcrumbs
	
		<h2>$Title</h2>
		<div class="typography">$Content</div>
		
		<% if Products %>
		<p>$Products.FirstItem - $Products.LastItem of $Products.getTotalItems products</p>
		<ul class="PageList">
			<% loop Products %>
				<li class="clearfix">
					<article>
						<div class="three columns alpha">
							<a href="$Link" title="$Title.XML">$Image.SetRatioSize(150,200)</a>
						</div>
						<div class="nine columns omega">
							<h3><a href="$Link" title="$Title.XML">$Title</a></h3>
							<p>$Content.Summary</p>
							<% if Price %><p><b>Price:</b> $Price.Nice</p><% end_if %>
							<p><a href="$Link">Learn More</a>
						</div>
					</article>
				</li>
			<% end_loop %>	
		</ul>
		
		<% if Products.MoreThanOnePage %>
			<ul id="PageNumbers">
			<% if Products.NotFirstPage %>
				<li><a class="prev" href="$Products.PrevLink">Prev</a></li>
			<% end_if %>
			
			<% control Products.PaginationSummary(4) %>
				<% if CurrentBool %>
					<li class="current">$PageNum</li>
				<% else %>
					<% if Link %>
						<li><a href="$Link" title="View page number $PageNum">$PageNum</a></li>
					<% else %>
						<li>&hellip;</li>
					<% end_if %>
				<% end_if %>
			<% end_control %>
	
			<% if Products.NotLastPage %>
				<li><a class="next" href="$Products.NextLink">Next</a></li>
			<% end_if %>
			</ul>
		<% end_if %>
		
		<% end_if %>
	</article>
</div>
<div class="four columns side omega">
	<aside>
		<% include SideBar %>

		<% if FeaturedProducts %>
		<nav class="secondary sidebox">
			<h3>Featured</h3>
			<ul class="FeaturedProducts">
				<% loop FeaturedProducts %>
				<li>
					<div class="ProductPreview"><a href="$Link">$Image.CroppedImage(80,80)</a></div>
					<div class="ProductBrief">
						<a href="$Link">$MenuTitle.LimitCharacters(50)</a> 
						<p><b>Price:</b> $Price.Nice</p>
					</div>
				</li>
				<% end_loop %>
			</ul>
		</nav>
		<% end_if %>
			
	</aside>
</div>