// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "Linux Libertine", lang: "en")
  set heading(numbering: "1.a)")
  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  set heading()
  set par(leading: 0.75em)

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
  ]

  // Author information.
  pad(
    top: 0.8em,
    bottom: 0.8em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Main body.
  set par(justify: true)

  body
}


#let cong=$tilde.eqq$
#let id = $#math.bb("1")$

#let nsg=symbol("⊴")
#let subgroup = nsg;

#let iprod(inner)=$lr(angle.l #inner angle.r)$

#let proof(body) = [
  *_Proof:_*

  #body
  
  #align(right)[
    $square$
  ]
]

#let thm_counter = counter("thm_counter")

#let thm(body) = [
  *Theorem* #thm_counter.display()
  #thm_counter.step()
  #text(style: "italic")[
    #body
  ]
]

#let question(body)=[
  #text(font: "DM Sans")[
    #body
  ]
]

#let lemma_counter = counter("lemma_counter")

#let lemma(body) = [
  *Lemma* #lemma_counter.display()
  #lemma_counter.step()
  #text(style: "italic")[
    #body
  ]
]

