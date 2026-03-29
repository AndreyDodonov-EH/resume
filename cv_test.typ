#let dark = rgb("#1b1b2f")
#let accent = rgb("#1f5f8b")
#let sidebar-bg = rgb("#1b2838")
#let sb-text = rgb("#c8d6e0")
#let sb-head = rgb("#6db8d4")
#let sb-skill = rgb("#8cc4db")
#let sb-dim = rgb("#9fb8c8")
#let sb-meta = rgb("#7a9aad")
#let sb-border = rgb("#2d4a5e")
#let sb-item = rgb("#b8cad6")
#let sb-edu = rgb("#d0dce5")
#let main-text = rgb("#3a3a3a")
#let main-light = rgb("#888888")
#let summary-fg = rgb("#444444")

#set document(title: "CV — Andrey Dodonov", author: "Andrey Dodonov")

#set page(
  paper: "a4",
  margin: 0pt,
  background: align(left)[
    #rect(width: 66mm, height: 100%, fill: sidebar-bg)
  ]
)

#set text(
  font: "Roboto",
  size: 8pt,
  fill: main-text,
  lang: "en",
  fallback: false
)

#set par(leading: 0.35em)
#show link: set text(fill: main-text)

#let sb-section(title) = {
  v(3.5mm)
  text(size: 7.5pt, weight: 700, fill: sb-head, tracking: 1pt, upper(title))
  v(1mm)
  line(length: 16mm, stroke: 0.4pt + sb-border)
  v(1.2mm)
}

#let sb-contact(item) = {
  text(size: 8.5pt, fill: sb-item)[#item]
  v(0.3mm)
}

#let sb-skill-grp(label, skills) = {
  text(size: 8pt, weight: 700, fill: sb-skill)[#label]
  linebreak()
  text(size: 8pt, fill: sb-dim)[#skills]
  v(2mm)
}

#let sb-edu-item(title, meta) = {
  text(size: 8.5pt, weight: 700, fill: sb-edu)[#title]
  linebreak()
  text(size: 8pt, fill: sb-meta)[#meta]
  v(2.5mm)
}

#let sb-lang-item(name, level) = {
  grid(
    columns: (1fr, auto),
    text(size: 8.5pt, fill: sb-text)[#name],
    text(size: 8pt, fill: sb-meta, style: "italic")[#level]
  )
  v(0.3mm)
}

#let main-section(title) = {
  v(2.5mm)
  text(size: 9pt, weight: 700, fill: accent, tracking: 0.8pt, upper(title))
  v(0.6mm)
  line(length: 100%, stroke: 1pt + accent)
  v(1.5mm)
}

#let job-header(title, dates, company) = {
  grid(
    columns: (1fr, auto),
    text(size: 8.5pt, weight: 700, fill: dark)[#title],
    text(size: 7.5pt, fill: main-light)[#dates]
  )
  v(0.3mm)
  text(size: 7.5pt, fill: accent, style: "italic")[#company]
  v(1mm)
}

#let bullet(body) = {
  grid(
    columns: (2.5mm, 1fr),
    text(size: 5.5pt, fill: accent, baseline: -0.5pt)[▪],
    text(size: 8.5pt, fill: main-text)[#body]
  )
  v(0.6mm)
}

#let sub-bullet(body) = {
  grid(
    columns: (5mm, 2mm, 1fr),
    [],
    text(size: 5pt, fill: accent, baseline: -0.5pt)[–],
    text(size: 8pt, fill: main-text)[#body]
  )
  v(0.3mm)
}

#grid(
  columns: (66mm, 1fr),
  
  // ════ SIDEBAR ════
  block(
    inset: (top: 12mm, right: 5mm, bottom: 8mm, left: 6mm),
    [
      #text(size: 17pt, weight: 700, fill: white)[Andrey\ Dodonov]
      #v(1.5mm)
      #text(size: 8pt, fill: sb-head, tracking: 0.3pt)[Advanced Software Engineer]

      // Contact
      #sb-section("Contact")
      #sb-contact("aadodonov@gmail.com")
      #sb-contact("github.com/AndreyDodonov-EH")
      #sb-contact("linkedin.com/in/andrey-dodonov")

      // Skills
      #sb-section("Skills")
      
      #sb-skill-grp("Systems & Embedded", [C/C++, Rust,\ Zephyr RTOS,\ STM32, NRF,\ SIL3 & Ex-safety,\ NB-IoT, LTE-M, Wi-Fi,\ BLE, Ethernet])
      
      #sb-skill-grp("Web & Full Stack", [Lit, React, Vite,\ JS/TS, Node.js,\ REST, WS, HTTP,\ TCP/IP])
      
      #sb-skill-grp("Blockchain", [Polkadot-API, Polkadot SDK, JAM,\ EVM, Solidity])
      
      #sb-skill-grp("Test & DevOps", [Python, C\#,\ Docker, containerized development,\ Jenkins, GitHub Actions])

      // Education
      #sb-section("Education")
      
      #sb-edu-item([Polkadot Blockchain Academy (PBA)\ Campus\ cum laude], [Hochschule Luzern (HSLU) · 2025])
      
      #sb-edu-item([M.Sc. Computer Science &\ Engineering\ cum laude], [Southern Federal University\ 2008 – 2014])

      // Languages
      #sb-section("Languages")
      #sb-lang-item("English", "proficient")
      #sb-lang-item("German", "advanced")
      #sb-lang-item("Russian", "proficient")
    ]
  ),

  // ════ MAIN ════
  block(
    inset: (top: 12mm, right: 10mm, bottom: 8mm, left: 9mm),
    [
      #text(size: 11.5pt, weight: 700, fill: accent)[Advanced Software Engineer]
      #v(0.8mm)
      #text(size: 7.5pt, fill: rgb("#777777"), tracking: 0.3pt)[Embedded · Blockchain · Full Stack · Industrial IoT]

      #main-section("Profile")
      #block(
        text(size: 8.5pt, fill: summary-fg)[
          #set par(justify: true, leading: 0.4em)
          *12+ years* of system design with constrained resources, specializing in embedded, web development and blockchain technologies. Deep understanding of low-level, protocols, efficient software design. Programmed client and server web devices with under 1 Megabyte footprint. Filed patent on transferring web-pages over arbitrary non-IP protocols. Wrangling AI since GPT 3.5. Polkadot Blockchain Academy Campus graduate (cum laude).
        ]
      )

      #main-section("Experience")

      #job-header("Advanced Software Engineer", "2014 – Present", "Endress+Hauser Group · Germany")

      #bullet([
        *#link("https://www.de.endress.com/en/field-instruments-overview/level-measurement/qwx43-fermentation-monitor?t.tabId=product-overview")[Family of web-connected industrial devices for liquid analyzis]*\
        Architecture and implementation of secure, web-compatible industrial sensors:
      ])
      #sub-bullet([Enabled rich Web UI for tiny devices (patent filed, architecture supports sockets of arbitrary protocols on non-ip direct links, allowing HTTP/WS interfaces for devices without TCP/IP stack)])
      #sub-bullet([Open-source contributions to the underlying ZephyrRTOS, specializing in networking])
      #sub-bullet([Added security features, CRA compliance, successfully surviving pen-test and ensuring zero security incidents in the field])
      #sub-bullet([Supported integration of industrial IP-based protocols])

      #bullet([*Organisational improvements*])
      #sub-bullet([Introduced containerized development with embedded devices, allowing quick on-boarding for new members, eliminating works-on-my-machine and mitigating supply chain attacks])
      #sub-bullet([Reduced vendor-lock on multiple fronts (compilers, version controles, IDEs etc.)])
      #sub-bullet([Migrated company-wide front-end component library from React to Lit, reducing average front-end size 10 times from 2Megabytes to 200KBytes, enabling full-featured front-end for devices with limited resources])
      #sub-bullet([Pushed company-wide (1000+ users) migration to Git from legacy systems])
      #sub-bullet([Contributed to open-source Git wrappers, including popular GitExtensions])

      #bullet([
        *Augmented reality prototype for Hololens for industries*\
        Integrating Unity, low-level protocols and Hololens features, allowing to look into storage facilities and vessels as if they were transparent, based on bluetooth, wifi and 3d-mesh
      ])

      #bullet([
        *Prototypes of embedded devices with various connectivity*\
        Prototyped devices with communication NB-IOT, LTE-M, Wi-Fi, BLE with memory footprints of under 1 MB, selected most efficient and secure approaches for systems
      ])

      #bullet([
        *#link("https://www.de.endress.com/en/endress-hauser-group/capabilities-efficient-safe-operations/netilion-dynamischer-pegel")[Flood Predictor]*\
        Added multi-sensor fusion to AI-powered flood prediction system
      ])

      #bullet([
        *#link("https://www.endress.com/en/field-instruments-overview/netilion-iiot")[Cloud platform]*\
        Integrated cloud services, web pages and sensors into coherent systems, performed migrations to cheaper hostings (from Heroku to GCP, Azure and on-prem), optimized data-heavy algorithms for cloud services (deep-dive from JS sorting to JS engines to underlying C++ libraries to cache locality)
      ])

      #bullet([
        *#link("https://www.endress.com/en/endress-hauser-group/events-training/online-seminars/tank-gauging-solutions")[Safety criticial oil and gas sensor]*\
        Hired as "fireman", quickly onboarded, fixed multiple complex bugs spread across 10 embedded chips in a single system, implemented safety-criticial features and tests, allowing SIL3 certification
      ])

      #v(1.5mm)

      #job-header("Freelance Consultant — Web & Mobile", "2016 – Present", "BusyBytes GmbH · Germany")

      #bullet([
        *Real estate managememt app (#link("https://immodigi.ch/en/")[ImmoApp])*\
        Added real-time data base synchronization, allowing on-boarding clients with legacy systems
      ])

      #bullet([
        *Smart biking lamp with Ble (#link("https://www.lupinelights.com/")[Lupine])*\
        Improved lamp to app protocol, making communication robust and user-friendly
      ])

      #bullet([
        *Staking*\
        Hardened Linux environments for blockchain staking
      ])
    ]
  )
)
