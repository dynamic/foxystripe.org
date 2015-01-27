<% include Breadcrumbs %>

<div class="twelve columns omega main">
	<div class="rightcol">
		<article>
			<h2>$Title</h2>
			<div class="typography">
				$Content
				
				<div class="staff-container">
					<% if StaffMembers %>
						<% loop StaffMembers %>
							<div class="staff-member">
								<div class="staff-pic">$Thumbnail</div>
								<p>$FirstName $LastName<br />$JobTitle<br /><a href="mailto:$Email">$Email</a></p>
							</div>
						<% end_loop %>
					<% end_if %>
				</div>
				<div style="clear: both;"></div>
			</div>
		</article>
		$Form
		$PageComments
	</div>
</div>

<div class="four columns side alpha sidebar">
	<% if Menu(2) || SideBar %>
		<div class="leftcol">
			<aside>
				<% include SideBar %>
			</aside>
		</div>
	<% end_if %>
	
	<div class="leftcol">
		<p>Kohler Foundation, Inc. <br />725 X Woodlake Road <br />Kohler, WI 53044</p>
		<p>Tel: (920) 458-1972<br />Fax: (920) 458-4280</p>
		<p>Office Hours:<br />8:00am-5:00pm<br />Monday through Friday</p>
	</div>
</div>
