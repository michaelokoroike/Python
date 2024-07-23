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

## CSS Rules Conflict Resolution and Text Styling (section #2)

**Video 1: Lecture 16: Style Placement**
- See below picture:
- ![image](https://github.com/user-attachments/assets/5959f8f8-2aa7-4b33-aa34-16ac8f6c05fd)
  - You can have styles within style tags (lines 7-13) or you can update the style directly in an element in the html (see line 20)...line 20 technique is referred to as inline styling, and is not very reusable (use for quick testing)...style tags are better for single pages, but what about if there are multiple pages, external to the html file?
  - You need an external spreadsheet, like **LINE 6** (labeled a stylesheet, and given a relative location of 'style.css' which must be in the same folder as style-placement.html), which is how you should do it in a real world website
  - ![image](https://github.com/user-attachments/assets/b944178e-ac4a-4f60-b6a1-c0611f2e30de)
- Note: Head styles (the style tag option) are usually there to override external ones for particular pages...as stated above, inline styling is for quick testing only

Optional Practice Quiz - Style Placement
- ![image](https://github.com/user-attachments/assets/22e3c104-549c-44b5-8b00-8f3befef5870)

**Video 2: Lecture 17, Part 1: Conflict Resolution**
- Cascading is a fundamental principle of CSS. It's an algorithm defining how to combine properties values originating from different sources. The _cascade_ algorithm is at the core of understanding and using CSS. Essentially it's how to tell which CSS rule wins in conflict scenarios (like PEMDAS in math).
- Concepts of Cascading Algorithm:
  - Origin: Last declaration wins (when two declarations are in conflict, like two for font-size)...HTML is processed sequentially, from top to bottom...external CSS is declared at the spot it's linked to in HTML. Declarations merge (when two declarations are not in conflict/are different properties, like one for font-size and one for color for p tags).
  - Merge (I think see above)
  - Inheritance (see below):
  - ![image](https://github.com/user-attachments/assets/9ffeb4ad-29b7-4eb2-9c2a-48d848ad4acb)
    - Any thing specificed for the body is inherited by all of the nested elements/children (see red...anything specified for elements, children of those elements inherit what was specified ut not parents (see blue)
  - Specificity (done in Part 2)...

**Video 3: Lecture 17, Part 2: Conflict Resolution**
- Concepts of Cascading Algorithm (cont):
  - Specificity: Most specific selector combination wins. See depictions below:
  - ![image](https://github.com/user-attachments/assets/661e703e-afe9-4db3-90e4-d5ced66db55c)
    - left to right is based on the fact that you can use the attributes on the left less often than to the right...highest score is typically in the 1000s. Another example:
  - ![image](https://github.com/user-attachments/assets/c5bc1066-8039-4a45-b225-c3c40af55f34)
    - no style attribute in the code (0), no id selector (0), no class definition selector (0), 2 elements (div and p...descendant combination of selectors). A comparison example:
  - ![image](https://github.com/user-attachments/assets/97a3a718-41bc-4355-a8c9-334c631a326b)
    - first one = no style attribute in the code (0), 1 id selector (see "#" or "id="; 1), no class definition selector (see "." or "class="; 0), 1 element (div)
    - second one = no style attribute in the code (0), no id selector (see "#" or "id="; 0), 1 class definition selector (see "." or "class="; 0), 2 elements (div and p...descendant combination of selectors)
    - **the first one takes precedence; so the color of the text of the paragraph will be blue**
    - **Note: add !important to any attribute and it will override all specificity...not the greatest practice**

Optional Practice Quiz - Conflict Resolution
- ![image](https://github.com/user-attachments/assets/01b2a256-ccba-45ba-89d3-7ccb11ee029c)
- ![image](https://github.com/user-attachments/assets/55d6aae1-d839-4779-adbc-7eec430437fa)

**Video 3: Lecture 18, Part 1: Styling Text**
- ![image](https://github.com/user-attachments/assets/6f015007-a44e-4467-8bb7-f1242e7cc6f3)
  - multiple fonts because a client may not have one installed on their computer
  - for colors, you want hexadecimal values (example: #0000ff...first two numbers represent the value for red, second two numbers is green, last two numbers is blue)
  - Font-style (bold, italic, etc)
  - Font-weight (bold typically)
  - Font-size (24px)
  - Text-transform (capitalize)...every word is capitalized...uppercase would make all letters uppercase
  - Text-align (right)...right justify

**Video 4: Lecture 18, Part 2: Styling Text**
- ![image](https://github.com/user-attachments/assets/94230503-4bb8-4da9-b21c-aaba1919f13d)
  - font-size in body will make the font 1.2X default of browser
  - font-size with "em" that follow are _cumulative_; first 2em is essentially 120% of default multiplied by two; second em is 120% of default multiplied by two _multiplied by two again_; etc.
  - percentages can be used in place of em (example: 2em could be 200%)...don't mix and match
 
Reading - Connect with (the instructor)
- https://www.coursera.org/learn/introduction-to-css3-jhu/supplement/ySUYO/connect-with-me

Optional Practice Quiz
- ![image](https://github.com/user-attachments/assets/f5ff846b-7f09-48b5-8cd8-16bc633345df)

## The Box Model and Layout (section #3)

**Video 1: Lecture 19, Part 1: The Box Model**
- Elements in HTML are considered _boxes_...see below:
- ![image](https://github.com/user-attachments/assets/9dbc04df-800d-4565-bee3-51e4ed7d82b2)
  - each box has:
    - padding
    - border
    - margin
    - width/height
- Example:
- ![image](https://github.com/user-attachments/assets/57645914-071b-4943-9b29-411488606f47)
  - content is in the green; padding is around that; border is around that; margin is around that
  - width can be added to make it wider or skinnier...height naturally adjusts
  - **To set the width of the box and not the content, see below:**
  - ![image](https://github.com/user-attachments/assets/8a452756-e883-4755-9843-e6d03a4484ba)
    - in CSS3, you can set "box-sizing:"...when you equal it to border-box, the width you provide for the box will always be the total width from border to border of the box (not including margins); if set equal to content-box, the width provided will be the width of the content box only

**Video 2: Lecture 19, Part 2: The Box Model**
- "Box-sizing" is a non-inherited CSS property...can't set it on parent element and expect the child element to receive it. You get around that with the _*_ selector, which says select every element there is and apply these CSS properties, but is different from normal parent elements in that * doesn't say "inherit", it says "select every element".
- Caniuse.com...can it be used in every browser (border-box), yes it can.
- See below:
- ![image](https://github.com/user-attachments/assets/f7995fe2-b4a4-425c-b691-4121c66620e7)
  - When side by side, margins are cumulative...when stacked on top of each other, margins collapse (larger margin wins)




