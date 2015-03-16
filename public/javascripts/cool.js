window.onload = function(){
	document.getElementById("combat").onclick = function() {
		document.getElementById("fstats").style.display = 'inline-block' ;
		document.getElementById("portraitbig").style.display = 'none' ;
		document.getElementById("fresistencias").style.display = 'none' ;
		document.getElementById("fhabilidades").style.display = 'none' ;
		document.getElementById("fmagias").style.display = 'none' ;
		document.getElementById("fscrolls").style.display = 'none' ;
		document.getElementById("ftesoros").style.display = 'none' ;
	};
	document.getElementById("rostro").onclick = function() {
		document.getElementById("portraitbig").style.display = 'inline-block' ;
		document.getElementById("fstats").style.display = 'none' ;
		document.getElementById("fresistencias").style.display = 'none' ;
		document.getElementById("fhabilidades").style.display = 'none' ;
		document.getElementById("fmagias").style.display = 'none' ;
		document.getElementById("fscrolls").style.display = 'none' ;
		document.getElementById("ftesoros").style.display = 'none' ;
	};
	document.getElementById("resistencias").onclick = function() {
		document.getElementById("fresistencias").style.display = 'inline-block' ;
		document.getElementById("fstats").style.display = 'none' ;
		document.getElementById("portraitbig").style.display = 'none' ;
		document.getElementById("fhabilidades").style.display = 'none' ;
		document.getElementById("fmagias").style.display = 'none' ;
		document.getElementById("fscrolls").style.display = 'none' ;
		document.getElementById("ftesoros").style.display = 'none' ;
	};
	document.getElementById("habilidades").onclick = function() {
		document.getElementById("fhabilidades").style.display = 'inline-block' ;
		document.getElementById("fstats").style.display = 'none' ;
		document.getElementById("portraitbig").style.display = 'none' ;
		document.getElementById("fresistencias").style.display = 'none' ;
		document.getElementById("fmagias").style.display = 'none' ;
		document.getElementById("fscrolls").style.display = 'none' ;
		document.getElementById("ftesoros").style.display = 'none' ;
	};
	document.getElementById("hechizos").onclick = function() {
		document.getElementById("fmagias").style.display = 'inline-block' ;
		document.getElementById("fstats").style.display = 'none' ;
		document.getElementById("portraitbig").style.display = 'none' ;
		document.getElementById("fresistencias").style.display = 'none' ;
		document.getElementById("fhabilidades").style.display = 'none' ;
		document.getElementById("fscrolls").style.display = 'none' ;
		document.getElementById("ftesoros").style.display = 'none' ;
	};
	document.getElementById("scrolls").onclick = function() {
		document.getElementById("fscrolls").style.display = 'inline-block' ;
		document.getElementById("fstats").style.display = 'none' ;
		document.getElementById("portraitbig").style.display = 'none' ;
		document.getElementById("fresistencias").style.display = 'none' ;
		document.getElementById("fhabilidades").style.display = 'none' ;
		document.getElementById("fmagias").style.display = 'none' ;
		document.getElementById("ftesoros").style.display = 'none' ;
	};
	document.getElementById("tesoros").onclick = function() {
		document.getElementById("ftesoros").style.display = 'inline-block' ;
		document.getElementById("fstats").style.display = 'none' ;
		document.getElementById("portraitbig").style.display = 'none' ;
		document.getElementById("fresistencias").style.display = 'none' ;
		document.getElementById("fhabilidades").style.display = 'none' ;
		document.getElementById("fmagias").style.display = 'none' ;
		document.getElementById("fscrolls").style.display = 'none' ;
	};
}