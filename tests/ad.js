(function(d, e, s) {
	s = d.querySelectorAll("script");
	if (s.length === 0) return;
	s = s[s.length - 1];
	e = d.createElement("div");
	e.appendChild(d.createTextNode("[AD AD AD AD AD AD]"));
	s.parentNode.insertBefore(e, s);
})(document);
