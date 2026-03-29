// ═══════════════════════════════════════════════════════════
// CV — Andrey Dodonov
// Compile: typst compile cv.typ
// ═══════════════════════════════════════════════════════════

#set page(paper: "a4", margin: 0pt)
#set text(font: "Noto Sans", size: 9pt, fill: rgb("#2d2d2d"))
#set par(leading: 0.5em)

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
#let sidebar-width = 68mm
#let sidebar-pad   = (top: 14mm, bottom: 10mm, left: 7mm, right: 6mm)
#let main-pad      = (top: 14mm, bottom: 10mm, left: 10mm, right: 12mm)

// ═══════════════════════════════════════════════════════════
// Helper functions
// ═══════════════════════════════════════════════════════════

#let sb-section-title(title) = {
  v(4.5mm)
  text(7.5pt, weight: "bold", fill: sb-head, tracking: 1pt, upper(title))
  v(1.2mm)
  line(length: 18mm, stroke: 0.5pt + sb-border)
  v(1.5mm)
}

#let sb-item(body) = {
  text(8.5pt, fill: rgb("#b8cad6"), body)
  v(0.5mm)
}

#let sb-skill-group(label, skills) = {
  text(8pt, weight: "bold", fill: sb-skill, label)
  linebreak()
  text(8pt, fill: sb-dim, skills)
  v(2.5mm)
}

#let sb-edu(title, meta) = {
  text(8.5pt, weight: "bold", fill: rgb("#d0dce5"), title)
  linebreak()
  text(8.5pt, fill: sb-meta, meta)
  v(3mm)
}

#let sb-lang(name, level) = {
  grid(
    columns: (1fr, auto),
    text(8.5pt, fill: sb-text, name),
    text(8.5pt, fill: sb-meta, style: "italic", level),
  )
  v(0.5mm)
}

#let main-section-title(title) = {
  v(3mm)
  text(9pt, weight: "bold", fill: accent, tracking: 0.8pt, upper(title))
  v(0.8mm)
  line(length: 100%, stroke: 1.2pt + accent)
  v(2mm)
}

#let job-header(title, dates) = {
  grid(
    columns: (1fr, auto),
    text(9pt, weight: "bold", fill: dark, title),
    text(7.5pt, fill: main-light, dates),
  )
  v(0.5mm)
}

#let job-company(name) = {
  text(8pt, fill: accent, style: "italic", name)
  v(1.2mm)
}

#let bullet(body) = {
  grid(
    columns: (3mm, 1fr),
    gutter: 0pt,
    text(6pt, fill: accent, baseline: -1pt, "▪"),
    text(8.5pt, fill: main-text, body),
  )
  v(1mm)
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
    // Name
    #text(18pt, weight: "bold", fill: white, tracking: 0.5pt)[Andrey\ Dodonov]
    #v(2mm)
    #text(8pt, fill: sb-head, tracking: 0.3pt)[Advanced Software Engineer]

    // Contact
    #sb-section-title("Contact")
    #sb-item("aadodonov@gmail.com")
    #sb-item("github.com/AndreyDodonov-EH")
    #sb-item("linkedin.com/in/andrey-dodonov")

    // Skills
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
       [ Lit, React, Vite,\
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

    // Education
    #sb-section-title("Education")
    #sb-edu(
      [Polkadot Blockchain Academy (PBA) \ Campus \ cum laude],
      [Hochschule Luzern (HSLU) · 2025],
    )
    #sb-edu(
      [M.Sc. Computer Science &\ Engineering\ cum laude],
      [Southern Federal University\ 2008 – 2014],
    )

    // Languages
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
    // Header
    #text(12pt, weight: "bold", fill: accent)[Advanced Software Engineer]
    #v(1mm)
    #text(7.5pt, fill: rgb("#777777"), tracking: 0.3pt)[Embedded · Blockchain · Full Stack · Industrial IoT]

    // Profile
    #main-section-title("Profile")
    #par(justify: true, leading: 0.55em, text(9pt, fill: summary-fg)[
      *12+ years* of system design with constrained resources, specializing in\ embedded, web development and blockchain technologies. \
      Deep understanding of low-level, protocols, efficient software design. \
      Programmed client and server web devices with under 1 Megabyte footprint. \
      Filed patent on transferring web-pages over arbitrary non-IP protocols.\
      Polkadot Blockchain Academy Campus graduate (cum laude). \
      Wrangling AI since GPT 3.5.
    ])

    // Experience
    #main-section-title("Experience")

    #job-header("Advanced Software Engineer", "2014 – Present")
    #job-company("Endress+Hauser Group · Germany")

    

    #bullet[
      *Family of web-connected industrial devices for liquid analyzis*\
      Architecture and implementation of secure, web-compatible industrial sensors:
- Enabled rich Web UI for tiny devices\ (patent filed, architecture supports sockets of arbitrary protocols on non-ip direct links, allowing rich Web-UI for devices without TCP/IP stack)
- Open-source contributions to the underlying ZephyrRTOS, including TCP/IP stack
- Added security features, CRA compliance, successfully surviving pen-test and ensuring zero security incidents in the field
- Supported integration of industrial IP-based protocols (Ethernet/IP, Profinet)
    ]
    #bullet[
      *Organisational improvements*\
- Introduced containerized development with embedded devices, allowing quick on-boarding for new members, eliminating works-on-my-machine and mitigating supply chain attacks
- Reduced vendor-lock on multiple fronts (compilers, version controles, IDEs etc.)
- Migrated company-wide front-end component library from React to Lit, reducing average front-end size 10 times from 2Megabytes to 200KBytes, enabling full-featured front-end for devices with limited resources
- Pushed company-wide (1000+ users) migration to Git from legacy systems, saving developer time
- Contributed to open-source Git wrappers, including popular GitExtensions
    ]

     #bullet[
      *Augmented reality prototype for Hololens for industries*\
Integrating Unity, low-level protocols and Hololens features,
allowing to look into storage facilities and vessels as if they were transparent, 
based on bluetooth, wifi, factory layout and 3d-mesh
     ]

     #bullet[
      *Prototypes of embedded devices with various connectivity*\
      Prototyped devices with communication NB-IOT, LTE-M, Wi-Fi, BLE with memory footprints of under 1 MB, selected most efficient and secure approaches for systems with constrained resources
     ]

     #bullet[
      *Flood Predictor*\
      added multi-sensor fusion to AI-powered flood prediction system
     ]

     #bullet[
      *Cloud platform*\
      integrated cloud services, web pages and sensors into coherent systems
      performed migrations to cheaper hostings (from Heroku to GCP, Azure and on-prem)
      Optimized data-heavy algorithms for cloud services (deep-dive from JS sorting to JS engines to underlying C++ libraries to cache localit)
     ]

     #bullet[
      *Safety criticial oil and gas sensor*\
      hired as "fireman", fixed multiple complex bugs spread across 10 embedded chips in a single system
      implemented safety-criticial features and tests, allowing SIL3 certification (Safety Integrity Level)
      added extensive automated tests.
     ]

     
     

    #v(2mm)
    #job-header("Freelance Consultant — Web & Mobile", "2016-present")
    #job-company("BusyBytes GmbH · Germany")
    
    #bullet[
      *Real estate managememt app (ImmoApp)*\
- added real-time data base synchronization, allowing on-boarding clients with legacy systems
    ]
#bullet[
      *Smart biking lamp with Ble (Lupine)*\
- improved lamp to app protocol, making communication robust and user-friendly
]
#bullet[
      *Staking*\
      hardened Linux environments for blockchain staking
]

  ],
)
