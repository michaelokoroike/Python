## Cascading Style Sheets Basics (section #1)

Reading: Welcome to Course 2: Introduction to CSS3
- Instructor note: "This course is all about foundations of cascading style sheets. We will start with the basics, move on to rule conflict resolution, the box model, and CSS layout techniques. Then, we'll be learning how to use media queries and code responsive websites without any frameworks. It would be a mistake to jump straight to a responsive frameworks like Twitter Bootstrap without first understanding the foundation topics. We will finish up the module with an introduction to the Twitter Bootstrap CSS framework, which is one of the most popular CSS frameworks today. Keep going and you will finish the course in no time. See you in the module."

Reading: Recommended Books
- https://clearlydecoded.com/recommended-books/

Reading: New Tutorials...
- Basically a new course is coming on CSS

**Video 1: Lecture 11: Power of CSS**
- If all you wanted was raw content you could take HTML files upload them to a server and there they'd be...but we need style and creative presentation (don't want a house without drywall covering the actual bricks and stuff); this is the point of CSS
- csszengarden.com (submit css version of website; can't change html)

**Video 2: Lecture 12: Anatomy of a CSS rule**
- CSS associates rules with HTML elements
- ![image](https://github.com/user-attachments/assets/4e23809f-f209-424e-9636-7c2b37b5ac68)
- ![image](https://github.com/user-attachments/assets/bcd9bdb7-6ebc-47f8-ba99-d75ccf2bf0b2)
  - selector tag; basically says, in this example, what's in the curly brackets should apply to every p tag in the entire html page
  - declaration: what's inside the curly brackets
    - property: color in this example (predefined by CSS specification...also for every property there are predefined values)
    - value: blue in the example
- CSS rules can consist of several declarations (maybe color, font-size, width, etc)
- ***Stylesheet: collection of CSS rules (see below):***
- ![image](https://github.com/user-attachments/assets/9a66a34d-53b5-426b-b9aa-515f6da7fcf4)
  - styling (see style tag) can be placed in the head section of an html page, even though not best practice

Optional Practice Quiz - Anatomy of CSS rules
- ![image](https://github.com/user-attachments/assets/2996b1c9-2519-4e9a-99e6-87d7c0e4d2f5)
- ![image](https://github.com/user-attachments/assets/29306071-f139-494e-9f5c-90f86970a745)

**Video 3: Lecture 13: Element, Class, and ID Selectors**
- ***Element selector (below):***
- ![image](https://github.com/user-attachments/assets/0e727b7a-4800-4832-83b3-301f32ef6e02)
  - above says every p (paragraph, p tag) should be colored blue
- ***Class selector (below):***
- ![image](https://github.com/user-attachments/assets/b10cac53-d4ec-474a-8607-23ef68cec1dd)
- ![image](https://github.com/user-attachments/assets/d1078fb6-3fc0-4441-9203-bced26ca21e9)
  - if you create a class .blue, then the rules you give that class take place when you call class = "blue" in an html tag (give the tag that attribute)
- ***id selector (below):***
- ![image](https://github.com/user-attachments/assets/352e9d60-996d-45f7-a502-4d8a06dd579f)
- ![image](https://github.com/user-attachments/assets/415443d1-df54-40fd-ae51-a53df87ba0cb)
  - if you create an id #name, then the rules you give that class take place when you call id = "name" in an html tag (give the tag that attribute)
- Selectors can be grouped (see below):
- ![image](https://github.com/user-attachments/assets/262d40f5-28cb-4551-94b4-8c3db432213a)
- id can only appear once a document

Optional Practice Quiz - Element, Class, and ID Selectors
- ![image](https://github.com/user-attachments/assets/e153e678-bca4-4c83-903c-775a5b382f28)

**Video 4: Lecture 14: Combining Selectors**
- Ways to combine CSS selectors:
- ***Element with class selector (below):***
- ![image](https://github.com/user-attachments/assets/761f2451-eaf4-4f92-b209-3712c9e2aec2)
- ![image](https://github.com/user-attachments/assets/fe26c200-f7c1-4170-a493-32a9faada146)
  - Above will target every p (paragraph) element that has a class="big"
- ***Child selector (below):***
- ![image](https://github.com/user-attachments/assets/b94c9d11-521f-40d3-8f5b-0fb1eb516fdb)
- ![image](https://github.com/user-attachments/assets/f3094a78-4b40-49a5-bc3f-e702bb19ea95)
  - Above will target every p (paragraph) element that is a direct child of an article element (can't be a regular p tag by itself, or a p tag that is the child of an element that's a child of article (a descendant))
- ***Descendant selector (below):***
- ![image](https://github.com/user-attachments/assets/25cd7fcc-991c-43a3-94e3-635afbe23e24)
- ![image](https://github.com/user-attachments/assets/7dad8265-3b3c-4e69-b262-d5237f74f736)
  - Above will target every p (paragraph) element that is a descendant of an article element at any level
- Combinations aren't confined to elements...see below:
- ![image](https://github.com/user-attachments/assets/50e91c10-d8ec-4e75-ac34-683f9d5c4a2c)
- **Note: You can apply multiple classes to a tag by just listing them in the " " after class (example: p class="class1 class2")**
- **Note: Also there are "adjacent sibling selectors" and "general sibling selectors"**

Optional Practice Quiz - Combining Selectors
- ![image](https://github.com/user-attachments/assets/89c0b2af-6c78-4c55-a016-eb33e1dcbc94)
- ![image](https://github.com/user-attachments/assets/577a7c29-28ee-472b-91b0-d3f817716574)
- ![image](https://github.com/user-attachments/assets/d3a64462-b116-4490-ad93-8a7579cf53a7)

**Video 5: Lecture 15: Pseudo-Class Selectors**
- Pseudo-class selectors address targeting only the structures that can be targeted by simple combinations of regular selectors, or targeting the ability to style based on user interaction with the page. For example, we would want the styling of an element to change if the user hovers or moves their mouse over that element.
- General way of specifying a pseudo-class selector (see below):
- ![image](https://github.com/user-attachments/assets/ab7a4161-8930-4371-b06e-d7434c1b633a
- Pseudo-class selectors that exist and are being covered in the video (see below):
- ![image](https://github.com/user-attachments/assets/2724fde1-fe69-4b6d-b0a9-ce3270df6a0a)
- Example (see below):
- ![image](https://github.com/user-attachments/assets/3c53ee02-20bc-401f-b090-daf9cae8c8ca)
- ![image](https://github.com/user-attachments/assets/0edeba39-6987-4272-a057-8ef42b81a75e)
- ![image](https://github.com/user-attachments/assets/08ed3d61-3fde-4461-9aa7-f596ab10ffd6)
- ![image](https://github.com/user-attachments/assets/b253a832-ceec-4934-a138-61c3fc84d257)
  - a:link is general links; a:visited is links that were clicked, like above
  - a:hover is what happens when you hover over something, and a:active is when you click but heve not yet released the button
  - header li:nth-child(3) says basically the third link that is a descendant within a header section (Facebook in this example)...can do nth-child(even) or nth-child(odd) when working with long lists of stuff
  - section div:nth-child(4):hover says basically the fourth div inside section will have this style and behavior when hovered over
- **Note: Make sure it is still readable**

Optional Practice Quiz - Pseudo-Class Selectors
- ![image](https://github.com/user-attachments/assets/13c951cd-03c1-44fd-8245-30ff1b4fab06)
- ![image](https://github.com/user-attachments/assets/fcef0c3c-b84b-4fc5-8abf-6c9a26a09026)
