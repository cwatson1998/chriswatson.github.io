---
permalink: /
title: "Christopher Watson"
author_profile: true
---

My name is Chris Watson and I'm a fifth-year Ph.D. student at the University of Pennsylvania, where I am very fortunate to be advised by [Rajeev Alur](https://www.cis.upenn.edu/~alur/) and [Dinesh Jayaraman](https://www.seas.upenn.edu/~dineshj/). 
I am also very fortunate to have worked with [Corina Păsăreanu](https://www.andrew.cmu.edu/user/pcorina/) at the NASA Ames Research center as a research intern during summer 2024. Before starting my Ph.D., I completed my undergraduate studies in Computer Science at Cornell University.


I work at the intersection of robot learning and formal methods.
Recent advances in large AI models have brought us closer than ever to realizing the dream of general-purpose robots that adapt quickly and reliably to new tasks and environments.
However, approaches that focus entirely on scaling data lack safety guarantees and may not fully exploit task structure to make the most of (often scarce) robot training data.
My research takes inspiration from formal methods and symbolic reasoning to improve the reliability and efficiency of robot learning.
Recently, I've been focusing on ways to combine human-provided and autonomously-discovered task structure to scaffold effective learning. 
{% comment %}
Ideally, it would be easy for a human to specify a task in a way that 
both aligns with their desired intent and exposes task structure (e.g. subgoals, relevant skills) to facilitate efficient learning.
However, a lot of the most interesting and useful task structure may not be obvious to humans; it must be
discovered by the robot during learning.
To address this, my research focuses on:
- Forms of specification that expose task structure while leaving room for a robot to incorporate its own learned information
- Learning algorithms that let a robot discover task structure from firsthand experience
- Training methodologies that harmoniously combine both sources of structure
{% endcomment %}

<!-- I am part of the [ASSET Center](https://asset.seas.upenn.edu/) and [PLClub](https://www.cis.upenn.edu/~plclub/) at Penn. -->

<!-- Needlessly complicated: I am actually not testing for "selected" anymore- all publications are displayed -->
{% assign selected_pubs = site.publications | sort: 'order' %}
{% if selected_pubs and selected_pubs != empty %}
## Publications and Preprints {#publications}
{% for pub in selected_pubs %}
- **{{ pub.title }}**. {{ pub.citation | markdownify | remove: '<p>' | remove: '</p>' | strip_newlines }}{% if pub.paperurl %} ([Paper]({{ pub.paperurl }})){% endif %}
{% endfor %}

{% endif %}

## Teaching Assistantships {#teaching}
{% assign courses = site.teaching | sort: 'date' | reverse %}
{% for course in courses %}
- **{{ course.title }}**. {{ course.venue }}. Instructor: {{ course.instructor }}. {{ course.term | default: course.date | date: "%B %Y" }}{% if course.class_url %} ([Course site]({{ course.class_url }})){% endif %}
{% endfor %}


## Activities {#activities}
I've had the pleasure of being a student volunteer at [POPL 2022](https://popl22.sigplan.org/) and [CCC 2022](https://www.computationalcomplexity.org/), and of being a student at [SSFT 2022](https://fm.csl.sri.com/SSFT22/) and [OPLSS 2022](https://www.cs.uoregon.edu/research/summerschool/summer22/).
