## Welcome to HTML, CSS, and Javascript for Web Developers! (section #1)

Reading: How Grading and Being Late on Assignments Works
- Essentially how to go about taking the course

Reading: Recommended Books
- https://clearlydecoded.com/recommended-books/

Reading: Check Out My Site!
- The author of the course's site

Reading: All of the Example Source Code for this Course
- https://github.com/jhu-ep-coursera/fullstack-course4

Reading: Frequently Asked Questions
- https://github.com/jhu-ep-coursera/fullstack-course4/blob/master/FAQ.md

Optional Practice Quiz
- ![image](https://github.com/user-attachments/assets/16212b33-6fc6-43ff-ba19-a7efd0d3c597)
- ![image](https://github.com/user-attachments/assets/7090f6bc-fa37-4eee-a995-719ef228851d)

## Development Environment Setup (section #2)

Reading: Welcome to Introduction to HTML5
- Instructor introduction
- Learning about HTML5 basics in this course

Video 1 - Development Environment Setup, Part 1
- Need Github, Google Chrome browser (Chrome Developer Tools comes with it), sublime text 3 (code editor...visual studio code, brackets other options), Git, Browser Sync (need NodeJS)

Video 2 - Development Environment Setup, Part 2 (MacOS)
- Don't need this
- sublime text installed (the code of a webpage is done in here)
  - html + ctrl/space + enter gives an html template
  - in terminal, going to directory of your html files, then running (browser-sync start --server --directory --files "*") starts a tab in your browser that will update as you change things in sublime text...have to save to see the updates
- Git version = 2.39.2 (do things in terminall related to Github)
- NodeJS version = v20.15.1
- npm version = 10.7.0 (user local bin in our path (echo $PATH))
- browser-sync version = 3.0.2 (use this to run html files and as we change them with sublime text, the html files change automatically)

Video 3 - Development Environment Setup, Part 2 (Windows)
- did it all when watching video 2

Optional Practice Quiz - Browser Sync install
- ![image](https://github.com/user-attachments/assets/73ba264f-08db-44b2-ae6d-936e1b3b071f)

Video 4 - Development Environment Setup, Part 3: Github and Browser Sync
- To learn Git: https://git-scm.com/book/en/v2 (first 2 or 3 pages)
- got it figured out how to change the layout of my webpage from Github…create a _config.yml page at your main folder in your repository, then https://pages.github.com/themes/, then click one of them, then click the _config.yml of that repository, then copy what  is in that file and paste it in your file and go from there
- You would need to merge if you did old school launch automatic page generator and it made another branch where the html info was...merge onto the html info branch
- https://www.coursera.org/learn/html-css-javascript-for-web-developers/lecture/4T1t0/development-environment-setup-part-3-github-and-browser-sync is the site for all the knowledge

Video 5 - Resources for Asking Questions
- Coursera.org
- Stackoverflow.org (provide working code)
- JSfiddle.net (run html, css, java code)
- Codepen.io (Chris coyer...created css-tricks.com; same type of thing as JSfiddle.net)

## HTML Basics (section #3)

Video 1 - Lecture 1: What is HTML?
- HTML = HyperText Markup Language (human readable)
  - Hypertext = text that contains links to other texts (entire web...1 doc points to another which points to another...meaning of web; also hypermedia)
  - Markup = to annotate (using tags to tell what something is, like body, title, etc)
  - Language = it has its own syntax and semantics...right and wrong way to code it
- Three technologies that drive the web
  - HTML = Provides structure (headings, paragraphs, footer)...like knowing the components of a house but nothing about them (3 rooms and a kitchen...what are their colors, size, etc)
  - CSS = Provides color/style (tells us the color/style of headings, paragraphs, footers, etc)
  - Javascript = Provides behavior/functionality (what happens when you click on a heading, etc)
 
Optional Practice Quiz - HTML purpose
  - ![image](https://github.com/user-attachments/assets/e4b33fd7-0800-4563-8f4d-7b92edc07644)

Video 2 - Lecture 2: Relevant History of HTML
- Before 1997, there were no community standards (browsers did what they wanted...had their own tags, etc); go to a website and very often browser would be incompatible with the website and you'd have to go get a different browser to even view the website
- Around 1997, World Wide web Consortium (W3C) created first standard browsers took into consideration (HTML4, HTML4.01), but was still loose
- Around 2000, W3C came up with XHTML 1.0 (based on XML)...problem was browser vendors started to feel the W3C was moving to slowly and the specifications were not going in the right direction
- Browser vendors banded together and created Web Hypertext Application Technology Group (WHATWG) and in 2004, they started driving toward HTML5
- Around 2007, WHATWG and W3C started to work together (W3C knew this group was important)...produced HTML5
- How are things working now?
  - W3C is in charge of HTML5 standards (current stuff)...take new things that appear to work well from WHATWG innovation and implement them into official standards slowly
  - WHATWG is in charge of HTML (constanrly evolving...some of their standards may not yet be accepted by W3C)
- This history shows HTML is muddy waters...developers must keep track of changes...especially since most browsers are evergreen (silently update themselves on computers)
- Track changes using...
  - w3c (w3.org)
  - caniuse.com (keeps track of standards, tells you which browser supports what)
  - validator.w3.org (see if HTML would work in browsers
  - browser statistics at w3schools.com (which browsers are most popular, which web page should you market to)
  - google.com (you have to look things up; things are changing and no human being can know it all)
 
Optional Practice Quiz - W3C and WHATWG
- ![image](https://github.com/user-attachments/assets/90de6267-e907-4b58-b5a7-4dc8850e8d6a)

Video 3 - Lecture 3: Anatomy of an HTML tag
- Example: "<p id="myId"> "</p>"
  - p is element name; "<p>" is opening tag, "</p>" is closing tag, id is attribute name, "myId" is attribute value, whatever is in between the opening and closing tags is content
- Attributes can only be specified in the opening tag; no space between opening bracked and tag name of opening tag, forward slash and opening bracket of closing tag; must be at least one space between tag and any attributes; attribute values should be in quotes

Optional Practice Quiz - HTML5 Tags
- ![image](https://github.com/user-attachments/assets/6724fbdd-fe6d-40bc-8257-5f14e2c714be)

Video 4 - Lecture 4: Basic HTML Document Structure
- Structure
  - All documents should start with "<!doctype html>"...tell browser get ready to render HTML (historical)
  - Next is "<html> </html"
  - Next is "<head> </head>" which contains items describing the main contents of the page
    - Typically includes metadata like "<meta charset='utf-8'>"
    - Includes "<title></title>" (required)
  - Next is "<body> </body>"...root of all content viewable to the user (referred to as viewport)
    - Example: "<body> Coursera is so cool! </body>" will print this out in the browser
- Interpreted from top to bottom

Optional Practice Quiz - HTML5 page declaration
- ![image](https://github.com/user-attachments/assets/e16d3d59-2818-4dd9-b51a-1325824e47de)
- ![image](https://github.com/user-attachments/assets/08539eae-9d3c-4206-a039-1dd6d9ed44c2)
- ![image](https://github.com/user-attachments/assets/707cab1f-cc30-4713-937c-f9c2ca4a7688)

Video 5 - Lecture 5: HTML Content Models
- _Content model_ refers to the full behavior the browser applies to the elements belonging to that content model, and to the nesting rules of those elements. In other words, which elements are allowed to be nested inside which other elements.
- Elements used to be categorized as one of two types:
  - Block-level elements: render to begin on a new line in the flow of a document by default
    - can contain inline or other block-level elements
    - flow content of HTML5
    - "<div></div>" is block-level...requires new line
  - Inline elements: render on the same line (as if there's no new line character present)
    - can only contain other inline elements
    - phrasing content of HTML5
    - "<span></span>" is inline...no new line
- The new standards have become more complex, but above distinction remians practical (aligns well with still existing CSS rules)

Optional Practice Quiz - HTML5 page declaration
- ![image](https://github.com/user-attachments/assets/2ed0663d-317c-4cca-b26e-4897592739d0)
- ![image](https://github.com/user-attachments/assets/95df9ed9-64d5-406d-8e8a-256c1a4b34ce)

