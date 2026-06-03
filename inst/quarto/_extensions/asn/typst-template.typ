// 00 Default Values ------------------------------------------------------

#let asn_primary_blue = rgb("#00468b")
#let asn_secondary_blue = rgb("#0077c8")
#let asn_orange = rgb("#ff8200")

#let main_font = "Gotham"
#let cover_text_color = rgb("#ffffff")

// 01 Custom Functions ----------------------------------------------------

#let blueline() = {
  line(
    length: 100%,
    stroke: 2pt + asn_primary_blue
  )
}

// #let highlight_box(content) = {
//   rect(
//     stroke: 2pt + asn_secondary_blue,
//     radius: 0.85em,
//     inset: 8pt,
//     body: content
//   )
// }
// 
#let highlight_box(body) = {
  rect(
    stroke: 2pt + asn_secondary_blue,
    radius: 0.85em,
    inset: 8pt,
    body
  )
}

#let source_text(source_info) = {
  align(right)[
    #text(
      source_info,
      font: main_font,
      size: 9pt, 
      style: "italic",
    )
  ]
}

// 02 Report Function -----------------------------------------------------

#let report(
  title: none,
  footer-title: none,
  subtitle: none,
  author: "",
  date: none,
  doi: "",
  toc: "",
  cover-image: "",
  cover-image-credit: "",
  society: "",
  department: "",
  director-name: "",
  director-title: "",
  address-i: "",
  address-ii: "",
  city-state-zip: "",
  email: "",
  departmentwebsite: "",
  content,
) = {
  
  // Function to Extract Year for Copyright Date 
  let year = if date != none and date != "" {
  // Extract first 4-digit number (the year)
  let matches = str(date).matches(regex("\d{4}"))
  if matches.len() > 0 {
    matches.first().text
  } else {
    str(datetime.today().year())
  }
  } else {
    str(datetime.today().year())
  }

  // Function to magically extract name elements to assmeble into a citation automagically 
  
  let first_initial = director-name.match(regex("^([A-Z])")).captures.at(0)
  let middle_initial = director-name.match(regex(" ([A-Z])\\. ")).captures.at(0)
  let last_name = director-name.match(regex("\\. ([^,]+),")).captures.at(0)

  // 02.01 COVER PAGE -----------------------------------------------------

  page(
    paper: "us-letter",
    margin: 0pt, 
    numbering: none,
    fill: asn_primary_blue
  )[
  
    // IMPORTANT: Remove Escaping of Underscores in Filepaths on Windows
    #let img-path = if type(cover-image) == content {
      str(cover-image).replace("\\_", "_")
    } else if type(cover-image) == str {
      cover-image.replace("\\_", "_")
    } else {
      cover-image
    }

    #place(
      top, 
      if img-path != none and img-path != "" {
        image(img-path, width: 115%)
      }  
    )
      
    #place(
      top + right,
      dx: -0.5in,
      dy: 0.25in,
      image("logo_ko.png", width: 2.5in)
    )
    
    #let title_block = block([
      #text(
        weight: 800, 
        2em, 
        title, 
        font: main_font,
        fill: cover_text_color,
        )
      #v(1em, weak: true)
      #text(
        weight: 500, 
        1.5em, 
        subtitle, 
        font: main_font,
        fill: cover_text_color,
        )
      #v(1em, weak: true)
      #text(
        weight: 400, 
        1.5em, 
        author, 
        font: main_font,
        fill: cover_text_color,
        )
      #v(0.7em, weak: true)
      #text(weight: 300, 
        1em, 
        date, 
        font: main_font,
        fill: cover_text_color,
      )
    ])
    
    #place(
      bottom + left,
      dx: 1in,
      dy: -1in,
      title_block
    )]
  
  pagebreak()

  // 02.02 COPYRIGHT PAGE -------------------------------------------------

  page(
    paper: "us-letter",
    margin: auto, 
    numbering: none,
  )[



    #v(1fr)

    #text(
      weight: 400, 
      font: main_font,
      size: 10pt,
    )[*Cover Image: * #cover-image-credit.]

    #v(0.7em, weak: true)

    #text(
      weight: 400,
      font: main_font,
      size: 10pt
    )[*Suggested Citation:* #last_name #first_initial#middle_initial. #title. #year. DOI: #doi.]

    #v(0.7em, weak: true)

    #text(
      weight:400,
      font: main_font,
      size: 10pt
    )[*©︎ #year American Society of Nephrology*]
  ]


  // 02.03 MAIN DOCUMENT SETTINGS -------------------------------------------
  // MAIN DOCUMENT SETTINGS
  set page(
    paper: "us-letter",
    margin: 1in,
    numbering: "1",
    footer: [
      #pad(top: 16pt, block([
        #grid(
          columns: (1fr, 1fr, 1fr),
          align(left)[
            #text(upper(footer-title), font: main_font, size: .8em, weight: 300)
          ],
          align(center)[
            #context text(font: main_font, size: 0.8em)[#counter(page).display()]
          ],
          align(right)[
            #text(upper(date), font: main_font, size: 0.8em, weight: 300)
          ]
        )
      ]))
      
      #place(
        bottom,
        dy: -4pt,  // Position second rule height
        rect(width: 115%, height: 4pt, outset: (x: 15%), fill: asn_secondary_blue)
      )
      
      #place(
        bottom,
        rect(width: 115%, height: 4pt, outset: (x: 15%), fill: asn_primary_blue)
      )
    ]
  )
  
  set text(
    lang: "en",
    region: "US",
    font: main_font,
    size: 11pt, 
  )
  

  // 02.03.01 OPTIONAL TOC PAGE -------------------------------------------------
  
  if toc == true or toc == [true] {
    {
      show outline.entry.where(
        level: 1
      ): it => {
        v(12pt, weak: true)
        strong(it)
      }
      outline(indent: auto)
    }
    pagebreak()
  }


  show heading: it => {
    let sizes = (
      "1": 16pt, 
      "2": 10pt,
    )
    let level = str(it.level)
    let size = sizes.at(level, default: 11pt)
    let formatted_heading = if level == "2" { it } else { upper(it) }
    let alignment = if level == "2" { center } else { left }
    
    align(alignment)[
      #text(size: size, formatted_heading)
    ]
  }
  
  // 02.04 Table Styling for Markdown ...and gt::gt()! Tables ---------------
  // Table Styling for Markdown ...and gt::gt()! Tables
  show table: it => {
    align(center)[
      #it
    ]
  }

  set table(
    stroke: none,
    fill: (x, y) => {
      if y == 0 { asn_primary_blue }  // Header row
      else if calc.rem(y, 2) == 0 { rgb("#f0f0f0") }  // Even rows (light gray)
      else { white }  // Odd rows
    },
    inset: 8pt,
  )

  show table.cell.where(y: 0): it => {
    set text(fill: white, weight: 700, size: 0.9em)
    it
  }

  show table.cell: it => {
    set text(size: 0.95em)
    if it.x == 0 {
      // First column - left align, handle section headers
      set align(left)
      set text(weight: if it.body == [] or it.fill == rgb("#e0e0e0") { 700 } else { 400 })
      it
    } else {
      // Data columns - center align
      set align(center)
      it
    }
  }

  // Add lines at top and bottom of table...NEED TO ADJUST
  show table: it => {
    block(
      above: 12pt,
      below: 12pt,
      [
        #line(length: 100%, stroke: 2pt + asn_primary_blue)
        #it
        #line(length: 100%, stroke: 2pt + asn_primary_blue)
      ]
    )
  }

  show heading.where(level: 2): it => [
  #block(
    width: 100%,
    above: 1.2em,
    below: 0.6em,
    text(size: 1.2em, weight: "bold")[#it.body]
    )
  ]

  show heading.where(level: 3): it => [
  #block(
    width: 100%,
    above: 1em,
    below: 0.6em,
    text(size: 1em, weight: "bold")[#it.body]
    )
  ]

  content

  // TK: Back Page 
  // 03 BACK COVER ----------------------------------------------------------

  page(
    paper: "us-letter",
    margin: 0pt, 
    numbering: none,
    fill: asn_primary_blue,
    footer: none
  )[

    #let clean-email = if email != none {
      str(email).replace("\\@", "@")
    } else {
      ""
    }

    #place(
      left + bottom,
      dx: 0.5in,
      dy: -0.5in,
      text(
        weight: 400,
        size: 1em,
        font: main_font,
        fill: cover_text_color,
      )[
        #society \
        #department
        #v(1em)
        #director-name \
        #director-title 
        #v(1em)
        #address-i \
        #address-ii \
        #city-state-zip \
        #link("mailto:"+clean-email, clean-email) \
        #link("https://"+departmentwebsite, departmentwebsite)
      ]
    )
  
    #place(
      bottom + right,
      dx: -.5in,
      dy: -.5in,
      image("logo_ko.png", width: 2.5in)
    )
  ]
}
