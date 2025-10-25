slides-build:
	cd slides && typst c s.typ slides.pdf

slides-watch:
	cd slides && typst w s.typ slides.pdf