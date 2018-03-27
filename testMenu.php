<!DOCTYPE html>
<html>
<head>
	<title>WolveNet France || Télécom & Internet</title>
	<link rel="stylesheet" type="text/css" href="styles/testMenu.css">
</head>

<script type="text/javascript">
fHover = function() {
	var sfEls = document.getElementById("nav").getElementsByTagName("LI");
	for (var i=0; i<sfEls.length; i++) {
		sfEls[i].onmouseover=function() {
			this.className+=" sfhover";
		}
		sfEls[i].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" sfhover\\b"), "");
		}
	}
}
if (window.attachEvent) window.attachEvent("onload", sfHover);
</script>

<div id="menuHaut">
<ul id="nav">
<li><a href="#">Catalogue</a>
	<ul>
		<li><a href="#">Mobiles</a></li>
		<li><a href="#">Accessoires</a></li>
		<li><a href="#">Autres</a></li>
	</ul>
</li>

<li><a href="#">Offres aux particuliers</a>
	<ul>
		<li><a href="#">Forfaits</a></li>
		<li><a href="#">Internet</a></li>
		<li><a href="#">TV</a></li>
	</ul>
</li>


<!-- etc. -->

</ul>
</div>

</html>