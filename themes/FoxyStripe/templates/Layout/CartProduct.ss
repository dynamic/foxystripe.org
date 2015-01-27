<div class="twelve columns alpha">
	<article>
		$Breadcrumbs

		<h2>$Parent.Title</h2>
		
		<div class="row">
			<div class="four columns alpha">$Image.SetWidth(220)</div>
			
			<div class="eight columns omega">
				<h3>$Title</h3>
				<p>
					<% if Price %><b>Price:</b> $Price.Nice<br><% end_if %>
					<% if ProductCode %><b>Item#:</b> $ProductCode<% end_if %>
				</p>
				<p>
					[mini_cart_item name="$Title.XML" price="$Price.XML"]Add To Cart[/mini_cart_item]
				</p>
				$ShareIcons
				<div class="content">$Content</div>
				
			</div>
		</div>
	</article>
</div>
<div class="four columns side omega">
	<aside>
		<% include SideBar %>
	</aside>
</div>