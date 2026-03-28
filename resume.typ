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
    #text(8pt, fill: sb-head, tracking: 0.3pt)[Senior Systems Engineer]

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
        driver development,\
        NB-IoT, LTE-M, Wi-Fi,\
        Bluetooth Low Energy, Ethernet],
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
      [Polkadot SDK, Polkadot-API, JAM,\
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
      [PBA-X],
      [2024],
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
    #text(12pt, weight: "bold", fill: accent)[Senior Systems Engineer]
    #v(1mm)
    #text(7.5pt, fill: rgb("#777777"), tracking: 0.3pt)[Embedded · Blockchain · Full Stack · Industrial IoT]

    // Profile
    #main-section-title("Profile")
    #par(justify: true, leading: 0.55em, text(9pt, fill: summary-fg)[
      *12+ years* of system design with constrained resources, \
     specializing in device drivers, industrial IoT solutions, full stack and blockchain technologies. \
      Deep understanding of low-level, protocols, efficient software design. \
      Programmed client and server web devices with under 1 Megabyte footprint. \
      Filed patent on transferring web-pages over arbitrary non-IP protocols.\
      Pushed company-wide migration to git (1000+ people).\
      Polkadot Blockchain Academy Campus graduate (*cum laude*). \
    ])

    // Experience
    #main-section-title("Experience")

    #job-header("Lead Developer / Advanced Software Engineer", "2014 – Present")
    #job-company("Endress+Hauser Group · Germany")

    #bullet[
      *Web-over-Serial Architecture* _(Patent pending)_ — Designed and implemented
      SOL/PAL, a layered protocol architecture enabling browser-native HTTP access to embedded device
      web interfaces over non-IP transports (UART, BLE). Conceived the abstraction model, built
      the Zephyr custom socket layer and C\# Device Bridge proxy, and drove the invention disclosure
      through to patent filing.
    ]
    #bullet[
      *Multi-Liquid Analyzer* 
      web-based HMI (Lit/TypeScript/Vite), Zephyr RTOS, on
      STM32H573 (Cortex-M33), REST API design (OpenAPI),
      multi-protocol connectivity (PROFINET, Modbus/TCP, EtherNet/IP, CDI).
      Docker-based CI/CD with GitHub Actions & HIL runners.
    ]
    #bullet[
      *Fermentation Monitor* — Architect & team lead for Wi-Fi cloud-connected
      real-time fermentation sensor. End-to-end ownership: firmware, connectivity, cloud integration.
    ]
    #bullet[
      *Flood Predictor* — Consultant on AI-powered flood prediction system
      using NB-IoT/LTE-M multi-sensor network.
    ]
    #bullet[
      *Netilion · IIoT Radar · Smartblue · Tank Gauging* — Cloud platform development,
      battery-powered IIoT level sensors, HoloLens AR prototype for factory device management,
      SIL3/Ex-certified gas & oil monitoring systems with HART/Modbus/4-20mA.
    ]

    #v(2mm)
    #job-header("Consultant — Web & Mobile", "Freelance")
    #job-company("BusyBytes GmbH · Germany")
    #bullet[
      Consulted and supported the digital agency's web and mobile application development projects.
    ]

    // Open Source & Research
    #main-section-title("Open Source & Research")
    #bullet[
      *Notable open source contributions* — ZephyrOS, GitExtensions.
    ]
    #bullet[
        *Patent* — filed patent on Web-over-Non-IP protocol architecture on direct links, \
        allowing socket-based (e.g. HTTP/WS) access over arbitrary protocols, even simple ones such as Bluetooth, Serial,
        etc. This allows serving a webpage from small devices, even headphones.
    ]
  ],
)
