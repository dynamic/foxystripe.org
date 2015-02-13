<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="$ContentLocale"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="$ContentLocale"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="$ContentLocale"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="$ContentLocale"> <!--<![endif]-->
<head>
	<% base_tag %>
	<meta charset="utf-8">
	<title><% if ClassName != DynamicHomePage %><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; <% end_if %>$SiteConfig.Title</title>
	$MetaTags(false)
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico">
	<link rel="apple-touch-icon" href="$ThemeDir/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="$ThemeDir/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="$ThemeDir/images/apple-touch-icon-114x114.png">
	
	<% if ClassName = NewsHolder %>
		<link rel="canonical" href="$AbsoluteLink" />
	<% end_if %>

	<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	
	ga('create', 'UA-45122066-3', 'auto');
	ga('require', 'ecommerce');
	ga('require', 'displayfeatures');
	ga('send', 'pageview');
	
	</script>
</head>
<body>
	<a class="githubFork" href="https://github.com/dynamic/foxystripe/fork" target="_blank"><img style="position: absolute; top: 0; right: 0; border: 0; z-index: 99999;" src="https://camo.githubusercontent.com/e7bbb0521b397edbd5fe43e7f760759336b5e05f/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f677265656e5f3030373230302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_green_007200.png"></a>
	
	<div class="container">
		<div class="sixteen columns header">
			<div class="five columns alpha brand">
				<h1 class="half-bottom"><a href="/"><img src="$ThemeDir/images/logo.jpg" class="scale-with-grid"></a></h1>
			</div>
			<div class="eleven columns omega navigation">
				<nav class="primary" id="access">
					<ul class="remove-bottom">
						<% loop Menu(1) %>	  
							<li class="$LinkingMode <% if Last %>last-parent<% end_if %>"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
						<% end_loop %>
					</ul>
				</nav>
				<nav class="mobile-navigation">
					<ul id="mobilenavs" class="clearfix remove-bottom">
						<li id="mobile-nav-click"><a href="#" id="mobile-nav-anchor" class="mobilemenu"><img src="$ThemeDir/images/mobile-menu.png" alt="Mobile Menu Graphic"></a>
							<ul class="mobilemenulist">
								<% loop Menu(1) %>
								  <li class="$LinkingMode"><a href="$Link" title="Go to the &quot;{$Title}&quot; page">$MenuTitle</a></li>
								<% end_loop %>
							</ul>
						</li>
					</ul>
				</nav>
			</div>		
				
		</div>
		
		
		
		<div class="sixteen columns clearfix content">
			$Layout
		</div>
		
		
		
		<div class="sixteen columns footer">
			<div class="twelve columns alpha">
				<nav class="footerNav">
					<ul>
						<% loop Menu(1) %>
							<li class="$LinkingMode $FirstLast"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
						<% end_loop %>
					</ul>
				</nav>
			</div>
			<div class="four columns omega text-right">
				<a href="http://www.dynamicagency.com" target="_blank">&copy; $Now.Year Dynamic, Inc</a>
				<%--<ul class="remove-bottom social">
					<li><a href="facebook.com" title="$SiteConfig.CompanyName Facebook page" target="_blank" class="fb"><span>Facebook</span></a></li>
					<li><a href="twitter.com" title="$SiteConfig.CompanyName Twitter page" target="_blank" class="tw"><span>Twitter</span></a></li>
					<li><a href="google.com" title="$SiteConfig.CompanyName Google+ page" target="_blank" class="go"><span>Google +</span></a></li>
					<li><a href="linkedin.com" title="$SiteConfig.CompanyName LinkedIn page" target="_blank" class="li"><span>LinkedIn</span></a></li>
					<li><a href="http://dynamic.github.io/foxystripe/" title="$FoxyStripe Github page" target="_blank" class="gh"><span>github</span></a></li>
					<li><a href="" title="$FoxyStripe packagist page" target="_blank" class="pa"><span>packagist</span></a></li>
				</ul>--%>
			</div>
		</div>
	</div>
	$BetterNavigator
</body>
</html>