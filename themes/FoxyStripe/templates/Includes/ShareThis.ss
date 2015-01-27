<p>
	<span style="vertical-align: top;">Share this on:&nbsp;&nbsp;</span>
	<span><a target="_blank" class="fb-share ShareIcon" href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}" title="Share this on FaceBook"></a></span>
	<span><a target="_blank" class="tw-share ShareIcon" href="https://twitter.com/intent/tweet?text={$Title}&url={$AbsoluteLink}" title="Share this on Twitter"></a></span>
	<span><a target="_blank" class="go-share ShareIcon" href="https://plus.google.com/share?url={$AbsoluteLink}" title="Share this on Google+"></a></span>
	<span><a target="_blank" class="li-share ShareIcon" href="https://www.linkedin.com/shareArticle?mini=true&url={$AbsoluteLink}&title={$Title}&summary=<% if Abstract %>{$Abstract.XML}<% else %>{$Content.XML}<% end_if %>&source=YOUR-URL" title="share this on LinkedIn"></a></span>
	<span><a target="_blank" class="pi-share ShareIcon" href="https://pinterest.com/pin/create/button/?url={$AbsoluteLink}&description=<% if Abstract %>{$Abstract.XML}<% else %>{$Content.XML}<% end_if %>&media=$BaseHref$Image.Filename" title="Share this on Pinterest"></a></span>
	<span><a class="em-share ShareIcon" href="mailto:?subject={$Title}&amp;body=$Content.LimitCharacters(50) {$AbsoluteLink}" title="Email this to someone"></a></span>
</p>