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

Optional Practice Quiz - Styling Text
- ![image](https://github.com/user-attachments/assets/f5ff846b-7f09-48b5-8cd8-16bc633345df)

