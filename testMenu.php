<!DOCTYPE html>
<html>
<head>
	<title>WolveNet France || Télécom & Internet</title>
	<link rel="stylesheet" type="text/css" href="styles/testMenu.css">
</head>

<script type="text/javascript" src="monscript.js">
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

<ul id="nav">
<li><a href="/traduction/deroulants#">Squaliformes</a>
	<ul>
		<li><a href="/traduction/deroulants#">Echinorhinidés</a></li>
		<li><a href="/traduction/deroulants#">Oxynotidés</a></li>
		<li><a href="/traduction/deroulants#">Squalidés</a></li>
	</ul>
</li>

<li><a href="/traduction/deroulants#">Orectolobiformes</a>
	<ul>
		<li><a href="/traduction/deroulants#">Parascylliidés</a></li>
		<li><a href="/traduction/deroulants#">Brachaeluridés</a></li>
		<li><a href="/traduction/deroulants#">Orectolobidés</a></li>
		<li><a href="/traduction/deroulants#">Stégostomatidés</a></li>
		<li><a href="/traduction/deroulants#">Hémiscylliidés</a></li>
	</ul>
</li>

<!-- etc. -->

</ul>

</html>