// ═══════════════════════════════════════════════════════════
// CV — Andrey Dodonov
// Compile: typst compile cv_groups.typ
// ═══════════════════════════════════════════════════════════

#set page(paper: "a4", margin: 0pt)
#set text(font: "Inter", size: 8pt, fill: rgb("#2d2d2d"))
#set par(leading: 0.45em)

// ── Colors ──
#let dark       = rgb("#1b1b2f")
#let accent     = rgb("#1f5f8b")
#let sidebar-bg = rgb("#1b2838")
#let sb-text    = rgb("#c8d6e0")
#let sb-head    = rgb("#6db8d4")
#let sb-skill   = rgb("#8cc4db")
#let sb-dim     = rgb("#9fb8c8")
#let sb-meta    = rgb("#7a9aad")
#let sb-border  = rgb("#2d4a5e")
#let main-text  = rgb("#3a3a3a")
#let main-light = rgb("#888888")
#let summary-fg = rgb("#444444")

// ── Layout constants ──
#let sidebar-width = 66mm
#let sidebar-pad   = (top: 12mm, bottom: 8mm, left: 6mm, right: 5mm)
#let main-pad      = (top: 12mm, bottom: 8mm, left: 9mm, right: 10mm)

// ═══════════════════════════════════════════════════════════
// Helper functions
// ═══════════════════════════════════════════════════════════

#let sb-section-title(title) = {
  v(3.5mm)
  text(7pt, weight: "bold", fill: sb-head, tracking: 1pt, upper(title))
  v(1mm)
  line(length: 16mm, stroke: 0.4pt + sb-border)
  v(1.2mm)
}

#let sb-item(body) = {
  text(7.5pt, fill: rgb("#b8cad6"), body)
  v(0.3mm)
}

#let sb-skill-group(label, skills) = {
  text(7.5pt, weight: "bold", fill: sb-skill, label)
  linebreak()
  text(7.5pt, fill: sb-dim, skills)
  v(2mm)
}

#let sb-edu(title, meta) = {
  text(7.5pt, weight: "bold", fill: rgb("#d0dce5"), title)
  linebreak()
  text(7.5pt, fill: sb-meta, meta)
  v(2.5mm)
}

#let sb-lang(name, level) = {
  grid(
    columns: (1fr, auto),
    text(7.5pt, fill: sb-text, name),
    text(7.5pt, fill: sb-meta, style: "italic", level),
  )
  v(0.3mm)
}

#let main-section-title(title) = {
  v(2.5mm)
  text(8.5pt, weight: "bold", fill: accent, tracking: 0.8pt, upper(title))
  v(0.6mm)
  line(length: 100%, stroke: 1pt + accent)
  v(1.5mm)
}

#let job-header(title, dates) = {
  grid(
    columns: (1fr, auto),
    text(8.5pt, weight: "bold", fill: dark, title),
    text(7pt, fill: main-light, dates),
  )
  v(0.3mm)
}

#let job-company(name) = {
  text(7.5pt, fill: accent, style: "italic", name)
  v(1mm)
}

#let bullet(body) = {
  grid(
    columns: (2.5mm, 1fr),
    gutter: 0pt,
    text(5.5pt, fill: accent, baseline: -1pt, "▪"),
    text(8pt, fill: main-text, body),
  )
  v(0.6mm)
}

#let sub-item(body) = {
  grid(
    columns: (2.5mm, 1fr),
    gutter: 0pt,
    text(8pt, fill: accent, "–"),
    text(8pt, fill: main-text, body),
  )
  v(0.2mm)
}

// ═══════════════════════════════════════════════════════════
// Page layout: sidebar + main, side by side
// ═══════════════════════════════════════════════════════════

#grid(
  columns: (sidebar-width, 1fr),
  gutter: 0pt,

  // ════════════════════════════════════════
  // SIDEBAR
  // ════════════════════════════════════════
  rect(
    width: 100%, height: 297mm,
    fill: sidebar-bg, stroke: none,
    inset: sidebar-pad,
  )[
    #text(16pt, weight: "bold", fill: white, tracking: 0.5pt)[Andrey\ Dodonov]
    #v(1.5mm)
    #text(7.5pt, fill: sb-head, tracking: 0.3pt)[Advanced Software Engineer]

    #sb-section-title("Contact")
    #sb-item(link("mailto:aadodonov@gmail.com")[aadodonov\@gmail.com])
    #sb-item(link("https://github.com/AndreyDodonov-EH")[github.com/AndreyDodonov-EH])
    #sb-item(link("https://linkedin.com/in/andrey-dodonov")[linkedin.com/in/andrey-dodonov])

    #sb-section-title("Skills")
    #sb-skill-group(
      "Systems & Embedded",
      [C/C++, Rust,\
       Zephyr RTOS,\
       STM32, NRF,\
       SIL3 & Ex-safety,\
       NB-IoT, LTE-M, Wi-Fi,\
       BLE, Ethernet],
    )
    #sb-skill-group(
      "Web & Full Stack",
      [Lit, React, Vite,\
       JS/TS, Node.js,\
       REST, WS, HTTP,\
       TCP/IP],
    )
    #sb-skill-group(
      "Blockchain",
      [Polkadot-API, Polkadot SDK, JAM,\
       EVM, Solidity],
    )
    #sb-skill-group(
      "Test & DevOps",
      [Python, C\#,\
       Docker, containerized development,\
       Jenkins, GitHub Actions],
    )

    #sb-section-title("Education")
    #sb-edu(
      [Polkadot Blockchain Academy (PBA) Campus\ _cum laude_],
      [Hochschule Luzern (HSLU) · 2025],
    )
    #sb-edu(
      [M.Sc. Computer Science &\ Engineering\ _cum laude_],
      [Southern Federal University\ 2008 – 2014],
    )

    #sb-section-title("Languages")
    #sb-lang("English", "proficient")
    #sb-lang("German", "advanced")
    #sb-lang("Russian", "proficient")
  ],

  // ════════════════════════════════════════
  // MAIN CONTENT
  // ════════════════════════════════════════
  rect(
    width: 100%, height: 297mm,
    fill: white, stroke: none,
    inset: main-pad,
  )[
    #text(11pt, weight: "bold", fill: accent)[Advanced Software Engineer]
    #v(0.8mm)
    #text(7pt, fill: rgb("#777777"), tracking: 0.3pt)[Embedded · Blockchain · Full Stack · Industrial IoT]

    #main-section-title("Profile")
    #par(justify: true, leading: 0.5em, text(8pt, fill: summary-fg)[
      *12+ years* of system design with constrained resources,\
      specializing in embedded full-stack web, and blockchain. \
      Deep understanding of low-level protocols and efficient software design.\
      Programmed client and server web devices with under 1#sym.space.thin MB footprint.\
      Filed patent on delivering rich web interfaces over arbitrary non-IP links.\
      Wrangling AI since GPT 3.5.\
      Polkadot Blockchain Academy Campus graduate (cum laude).
    ])

    #main-section-title("Experience")

    #job-header("Advanced Software Engineer", "2014 – Present")
    #job-company[Endress+Hauser Group · Germany]

    #bullet[
      *#link("https://www.de.endress.com/en/field-instruments-overview/level-measurement/qwx43-fermentation-monitor?t.tabId=product-overview")[Architecture & Patents]*
      - Designed and patented a architecture that tunnels web traffic over arbitrary non-IP links #sym.dash.em Bluetooth, serial, proprietary buses. Any protocol that can carry bytes can now host a full service website, even on devices with no TCP/IP stack
      - Built complete client & server web stacks for industrial sensors with under 1 MB total footprint
      - Contributed upstream to Zephyr RTOS (TCP/IP stack, drivers)
      - Integrated industrial protocols: Ethernet/IP, PROFINET, Modbus/TCP
    ]

    #bullet[
      *#link("https://www.endress.com/en/endress-hauser-group/events-training/online-seminars/tank-gauging-solutions")[Security & Compliance]*
      #sub-item[Hired as "fireman" on a safety-critical oil & gas sensor #sym.dash.em tracked down complex bugs across 10 interconnected embedded chips, then implemented SIL3-certified features with formal verification]
      #sub-item[Achieved Cyber Resilience Act compliance; survived external pen-test with zero findings; zero security incidents in the field]
    ]

    #bullet[
      *Developer Experience & Tooling*
      #sub-item[Drove company-wide Git migration (1#sym.space.thin 000+ engineers) off legacy version control #sym.dash.em championed adoption, contributed to open-source GitExtensions]
      #sub-item[Migrated front-end component library from React to Lit: average bundle dropped 10#sym.times (2#sym.space.thin MB #sym.arrow.r 200#sym.space.thin KB), unlocking full-featured UIs on resource-constrained devices]
      #sub-item[Introduced containerized development for embedded #sym.dash.em quick onboarding, reproducible builds, and supply-chain attack mitigation]
      #sub-item[Reduced vendor lock-in across compilers, IDEs, and toolchains]
    ]

    #bullet[
      *Prototyping & Deep Dives*
      #sub-item[Prototyped devices with NB-IoT, LTE-M, Wi-Fi, BLE #sym.dash.em all under 1#sym.space.thin MB, selected most efficient and secure stack for each constraint profile]
      #sub-item[Built AR prototype on HoloLens: fused Bluetooth, Wi-Fi, factory layouts and 3D mesh so operators could see through walls of storage vessels]
      #sub-item[Added multi-sensor fusion to an AI-powered #link("https://www.de.endress.com/en/endress-hauser-group/capabilities-efficient-safe-operations/netilion-dynamischer-pegel")[flood prediction system]]
      #sub-item[Optimized #link("https://www.endress.com/en/field-instruments-overview/netilion-iiot")[cloud] data pipelines end-to-end #sym.dash.em traced a performance issue from JS sort, through V8 internals, into the underlying C++ standard library, down to CPU cache locality]
      #sub-item[Migrated #link("https://www.endress.com/en/field-instruments-overview/netilion-iiot")[cloud] services from Heroku to GCP / Azure / on-prem]
    ]

    #v(1.5mm)

    #job-header[Freelance Consultant #sym.dash.em Web, Mobile & Blockchain]["2016 – Present"]
    #job-company[BusyBytes GmbH · Germany]

    #bullet[
      Real-time DB sync for a real estate app (#link("https://immodigi.ch/en/")[ImmoApp]) #sym.dash.em bridged legacy systems to live data
    ]
    #bullet[
      Rewrote BLE protocol for a smart cycling lamp (#link("https://www.lupinelights.com/")[Lupine]) #sym.dash.em made it robust and user-friendly
    ]
    #bullet[
      Hardened Linux environments for Polkadot validator staking #sym.dash.em secure, unattended, production-grade
    ]
  ],
)
