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


#let experience_header(name, position, location, date) = [
  == #name #h(1fr) #location
  #emph([#position #h(1fr) #date])
]


#show: doc => template(
  name: [yousef irshaid],
  name_size: 20pt,
  font_size: 9pt,
  heading_font_size: 11pt,
  doc,
  info: ("+971507287818", link("mailto:" + "yousefirshaid17@gmail.com"), link("github.com/yousefbilal")),
)
= education
== American University of Sharjah (AUS) #h(1fr) August 2021 - June 2025

- BSc in Computer Engineering #h(1fr) _CGPA: 4.0_
- Minor in Data Science 

= awards

- Dean's List (8x) and Chancellor's List (4x)
- Tau Beta Pi Engineering Honor Society, Member 
- Undergraduate Academic Excellence Award -- Highest CGPA in Major

= relevant coursework

- Data Structures & Algorithms, Microcontrollers: Programming and Interfacing, Computer Architecture and Organization, Computer Networks, Data Mining, Neural Networks and Deep Learning, Software Design, Software Engineering, Electronics, Embedded Systems, Intelligent Autonomous Robotics, Computer Security, Signal Processing

= professional experience
#experience_header(
  [Beno Technologies FZ L.L.C],
  [Software Engineering Internship],
  [Dubai - United Arab Emirates],
  [June 2024 -- July 2024],
)

- Prototyped a server-driven UI system on Android using Kotlin and Jetpack Compose during the internship project, enabling dynamic UI rendering from backend JSON definitions within an MVVM architecture.
#experience_header(
  [American University of Sharjah],
  [Research Assistant],
  [Sharjah - United Arab Emirates],
  [October 2024 -- Present],
)

- Developed a novel oversampling technique using Gamma probability distribution with a professor from the Department of Statistics and Mathematics.
- Conducted literature reviews and implemented experiments demonstrating the method's advantages over existing oversampling techniques.

#experience_header(
  [American University of Sharjah],
  [Research Assistant],
  [Sharjah - United Arab Emirates],
  [April 2024 -- December 2024],
)

- Contributed to research in collaboration with Ajman University College of Dentistry to create a novel dental X-ray dataset with rotated bounding boxes for accurate teeth object detection, which is currently unavailable in existing datasets.
- Labeled each bounding box with condition and treatment classes to enhance diagnostic and clinical relevance of the dataset.

= projects & outside experience

== Fast Inference and Ultra-Low Power Platform for Desert Search and Rescue (Senior Design Project)

- Designed and implemented a low-power embedded system computer vision platform integrated with a Neural Processing Unit for accelerated Machine Learning inference to perform real-time human detection for desert search and rescue missions with 98.2% accuracy, a frame rate of 22 FPS, and an average power consumption of 0.895W.
- Integrated lightweight deep learning models optimized for fast inference on constrained hardware using TensorFlow Lite, PyTorch, and custom tools, leveraging quantization techniques such as Quantization-Aware Training and Post-Training Quantization.
- Integrated human-in-the-loop validation for false positives through image transmission using the LoRa communication protocol. The developed protocol supports coordinates and image transmission with re-transmission capabilities over half-duplex connection.
- Contributed to the field with a custom-made dataset that the team produced from UAV imagery in the deserts of the UAE.
- The project won the best Computer Engineering Senior Design Project among 124 teams.
- As of May 2025, the project is a top 20 finalist in the Dell Envision the Future Competition among 259 projects from the Middle East.

#box[== Banner Schedule Finder] _(Python, JavaScript, HTML, CSS)_

- Developed a full-stack web app as a personal project that allows American University of Sharjah students to find all valid course schedules without time overlaps based on their preferences such as specific course sections and break times.
- Deployed the application with over 3000 users among students and registrar staff utilizing it during the early registration period since Spring 2024.
#box[== Machine Sound Anomaly Detection] _(Python, Keras)_

- Trained and tested a combination of unsupervised deep learning and machine learning models for anomaly detection in machine sounds provided by the MIMII dataset consisting of audio from four machines: fan, pump, slider, and valve.
- The models are trained on the four machines provided by the MIMII dataset : fan, pump, slider, valve.

= skills

*Programming:* Python, C/C++, Java, JavaScript, React, Node.js, HTML/CSS, Kotlin, Golang, Maple, MATLAB, Raspberry Pi, Arduino \
*Tools:* Linux (Debian, Arch, and RedHat based), Windows, Git, GitHub, Keras, Pytorch, Jupyter, Flask, FastAPI, MongoDB, Docker, Anaconda, Bash, Virtualization, Selenium, Latex, Typst \
*Languages:* Arabic, English
