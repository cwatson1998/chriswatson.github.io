---
permalink: /
title: "Christopher Watson"
author_profile: true
---

My name is Chris Watson and I'm a fifth-year Ph.D. student at the University of Pennsylvania, where I am very fortunate to be advised by [Rajeev Alur](https://www.cis.upenn.edu/~alur/) and [Dinesh Jayaraman](https://www.seas.upenn.edu/~dineshj/). 


I work at the intersection of robot learning and formal methods. In particular, I study how human-provided and autonomously-discovered task structure can be combined to scaffold effective learning. 
Ideally, it would be easy for a human to specify a task in a way that 
both aligns with their desired intent and exposes task structure (e.g. subgoals, relevant skills) to facilitate efficient learning.
However, a lot of the most interesting and useful task structure may not be obvious to humans; it must be
discovered by the robot during learning.
To address this, my research focuses on:
- Forms of specification that expose task structure while leaving room for a robot to incorporate its own learned information
- Learning algorithms that let a robot discover task structure from firsthand experience
- Training methodologies that harmoniously combine both sources of structure

<!-- I am part of the [ASSET Center](https://asset.seas.upenn.edu/) and [PLClub](https://www.cis.upenn.edu/~plclub/) at Penn. -->

{% assign selected_pubs = site.publications | where: "selected", true | sort: 'date' | reverse %}
{% if selected_pubs and selected_pubs != empty %}
## Selected Publications and Preprints {#publications}
{% for pub in selected_pubs %}
- **{{ pub.title }}**. {{ pub.citation | markdownify | remove: '<p>' | remove: '</p>' | strip_newlines }}{% if pub.paperurl %} ([Paper]({{ pub.paperurl }})){% endif %}
{% endfor %}

{% endif %}

## Additional Publications {#additional-publications}
{% assign pubs = site.publications | sort: 'date' | reverse %}
{% for pub in pubs %}
{% if pub.selected %}
{% continue %}
{% endif %}
- **{{ pub.title }}**. {{ pub.citation | markdownify | remove: '<p>' | remove: '</p>' | strip_newlines }}{% if pub.paperurl %} ([Paper]({{ pub.paperurl }})){% endif %}
{% endfor %}


## Teaching {#teaching}
{% assign courses = site.teaching | sort: 'date' | reverse %}
{% for course in courses %}
- **{{ course.title }}**. {{ course.venue }}. {{ course.term | default: course.date | date: "%B %Y" }}{% if course.class_url %} ([Course site]({{ course.class_url }})){% endif %}
{% endfor %}


## Activities {#activities}
I've had the pleasure of being a student volunteer at [POPL 2022](https://popl22.sigplan.org/) and [CCC 2022](https://www.computationalcomplexity.org/), and of being a student at [SSFT 2022](https://fm.csl.sri.com/SSFT22/) and [OPLSS 2022](https://www.cs.uoregon.edu/research/summerschool/summer22/).

You can reach me at `ccwatson [at] seas [dot] upenn [dot] edu`.
