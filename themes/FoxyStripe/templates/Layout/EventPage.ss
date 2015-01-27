<div class="sixteen columns crumbs double-bottom">
	$Breadcrumbs
</div>
<div class="twelve columns typography alpha">
	<article>
		<h1>$Parent.Title</h1>
		<p><a href="$Parent.Link">&laquo; Back to $Parent.Title</a></p>
		<div class="vevent">
			<h3 class="summary">$Title</h3>
		
			<p>
				<strong>When:</strong> $Date.Format(F j Y)<% if $EndDate %> - $EndDate.Format(F j Y)<% end_if %><br>
				<strong>Time:</strong> $Time.Format(g:i a)<% if $EndTime %> - $EndTime.Format(g:i a)<% end_if %><br>
			</p>
		  
		  $Content
		  
		</div>
		$Form
		$PageComments
	</article>
</div>

<div class="four columns sidebar omega">
	<aside>
		<% include EventSideBar %>
	</aside>
</div>
