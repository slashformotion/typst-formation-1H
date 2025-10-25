#import "@preview/polylux:0.4.0": *
#import "@preview/metropolis-polylux:0.1.0" as metropolis
#import metropolis: focus, new-section


#show: metropolis.setup

#show link: it => {
  if type(it.dest) == str {
    // Style links to strings red
    text(fill: blue.darken(30%), it)
  } else {
    // Return other links as usual
    it
  }
}

#let pkg = (name, description) => [
  #link("https://typst.app/universe/package/alchemist" + name, name): #description
]



#slide[
  #set page(header: none, footer: none, margin: 3em)


  #text(size: 1.3em)[
    *ENIB: Typst hands on*
  ]

  #metropolis.divider

  #set text(size: .8em, weight: "light")

  October 29, 2025

  Théophile ROOS
]

#slide[
  = Agenda

  #metropolis.outline
]

#new-section[Intro]

#slide[

  = A quick word about myself

  Théophile Roos
  - Software engineer at Orness (Parisian consultancy firm).
  - User of Typst since early 2023 (v0.4.0).
]

#slide[
  = What is Typst

  - Open-Source markup-based typesetting system : modern alternative to LaTeX with a simpler and more readable syntax.

  - Fast and instant preview : real-time rendering.

  - Powerful programing capabilities : giving more flexibility than LaTeX without needing separate scripting.

  - Cross-platform and browser-friendly – Can be used on the web without compromise (via https://typst.app).
]

// sdfsf
"magick convert"

/*
sdfsf*/

#new-section[Practice !]

#new-section[Tips and tricks]

#slide[
  = Slides

  2 main slide toolkit for  Typst

  - _Touying_ (https://touying-typ.github.io/)failed to convert SVG to PDF: The SVG's nesting depth is too high.
  - _Polylux_ (https://polylux.dev/book/) #footnote[this presentation was created using polylux and the #link("https://github.com/polylux-typ/metropolis", "metropolis") theme]
]

#slide[
  = Useful community packages

  Packages can be found at #link("https://typst.app/universe")
]

#slide[
  = Useful community packages: _glossarium_
  https://typst.app/universe/package/glossarium/
  #toolbox.side-by-side[#figure(
    image("example-glossariu.png"),
  )][]
]

#slide[
  = Useful community packages: _lilaq_
  https://lilaq.org/

  #image("plot1.svg", height: 80%)

]

#slide[
  = Useful community packages: _lilaq_
  https://lilaq.org/

  #image("plot2.png", height: 80%)

]

#slide[
  = Useful community packages: _lilaq_
  https://lilaq.org/
  #image("plot3.svg", height: 65%)
  - multiples axes

]

#slide[
  = More Useful community packages

  - #pkg("alchemist", [A package to render skeletal formulas])
  - #pkg(
      "unify",
      [Format numbers, units, and ranges with international units (alternative to `siunitx` from LaTeX)],
    )
  - #pkg("cetz", [Powerful drawing library (alternative to `tikz` from LaTeX)])
  - #pkg("pavemat", [Style matrices with custom paths, strokes and fills.])

  And many mores at https://typst.app/universe/

]


#slide[
  #show: focus
  Thank you for listening.
]

#slide[
  = Some links
  #set text(size: .8em)

  - Typst official website: #link("https://typst.app", "https://typst.app")
  - Typst documentation: #link("https://typst.app/docs", "https://typst.app/docs")
  - Typst community packages: #link("https://typst.app/universe", "https://typst.app/universe")
  #line(length: 60%)
  - An in depth article about Typst and it comparison with LaTeX and Word: https://blog.jreyesr.com/posts/typst/
  - The unofficial Typst example book: https://sitandr.github.io/typst-examples-book/book/getting_started.html
  - A review of Typst as a programming language: https://justinpombrio.net/2024/11/30/typst.html
  - _Typst Community_ -> community-driven organization for sustaining software related to the Typst ecosystem.  : https://github.com/typst-community/

]
