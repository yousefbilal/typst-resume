#let template(name: none, name_size: 20pt, info: (), heading_font_size: 12pt, font_size: 10pt, doc) = {
  set text(size: font_size, font: "Times New Roman")
  set page(margin: (x: 0.56in, top: 0.5in, bottom: 0.2in))
  set block(above: 5pt, below: 5pt)
  set list(body-indent: 1em, indent: 1em)
  show list: set block(spacing: 1em)

  show heading.where(level: 1): it => [
    #set align(left)
    #set text(heading_font_size, weight: "bold")
    #set block(above: 0.5em, below: 0.5em)
    #block(upper(it.body))
    #set block(above: 0em, below: 0.5em)
    #line(length: 100%, stroke: 0.5pt)
  ]

  show heading.where(level: 2): it => [
    #set align(left)
    #set text(heading_font_size - 2pt, weight: "bold")
    #block(it.body)
    // #it.body
  ]

  align(center)[
    #upper(text(size: name_size, weight: "bold", name))\
    #info.join(" | ")
  ]
  doc
}
