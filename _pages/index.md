---
permalink: /
title: "Christopher Watson"
author_profile: true
---

My name is Chris Watson and I'm a fifth-year Ph.D. student at the University of Pennsylvania, where I am very fortunate to be advised by [Rajeev Alur](https://www.cis.upenn.edu/~alur/) and [Dinesh Jayaraman](https://www.seas.upenn.edu/~dineshj/). I work at the intersection of Robot Learning and Formal Methods.


I study how human-provided and autonomously-discovered task structure can work together to scaffold effective
learning.
<!-- TODO: needs a bit of work- look back at my WPE 2. -->
Ideally, a task specification would be
intuitive for a human to provide,
flexible enough to let the robot make the most of its capabilities,
and expose structure (e.g. subgoals, relevant skills) within the task to facilitate efficient learning.
However, a lot of the most interesting and useful task structure may not be obvious to humans; it must be
discovered by the robot during learning.

My research focus is to develop
- forms of specification that leave room for the robot to add its own learned information,
- learning algorithms that let the robot discover task structure from firsthand experience,
- training methodologies that harmoniously combine both sources of structure.

<!-- I am part of the [ASSET Center](https://asset.seas.upenn.edu/) and [PLClub](https://www.cis.upenn.edu/~plclub/) at Penn. -->

## Publications {#publications}
{% assign pubs = site.publications | sort: 'date' | reverse %}
{% for pub in pubs %}
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
