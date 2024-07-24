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

**Video 3: Lecture 19, Part 3: The Box Model**
- Use overflow property in the case content spills over
- Summary to box model:
- ![image](https://github.com/user-attachments/assets/fb1d4717-fcbe-4a78-b1f0-cdaa1d94762b)

Optional Practice Quiz - Box Model
- ![image](https://github.com/user-attachments/assets/77798143-e8b3-4a11-aa70-f07328990e43)
- ![image](https://github.com/user-attachments/assets/bc1f94be-35d8-45bd-a219-17e0e0f3a74e)

**Video 4: Lecture 20: The background Property**
- A lot of things you can do with background:
- ![image](https://github.com/user-attachments/assets/74df2038-e120-4bb4-9413-aa22ffa4d7b4)
  - sub-properties = -image, -color, -position, etc
  - Note: background-color/other inherited background things, if they come before background, will be overwritten

Optional Practice Quiz - background Property
- ![image](https://github.com/user-attachments/assets/fc24f848-efe4-4f24-b383-cac1661f6132)

**Video 5: Lecture 21: Positioning Elements by Floating**
- Most UIs are made by floating the elements
- With floated elements, margins never collapse
- "clear" property...see https://developer.mozilla.org/en-US/docs/Web/CSS/clear, https://www.w3schools.com/css/css_float_clear.asp
- Summary below:
  - ![image](https://github.com/user-attachments/assets/7ddf47ed-8efd-407d-a3ab-6ca507f8d47c)

Optional Practice Quiz - Floating Elements
- ![image](https://github.com/user-attachments/assets/afffbff2-fb02-49b3-a610-27e591670bfb)

**Video 5: Lecture 22, Part 1: Relative and Absolute Element Positioning**
- ![image](https://github.com/user-attachments/assets/3bf8a275-2f49-48cf-af4b-5b79d200d05e)
  - Positioning offsets are ignored
- ![image](https://github.com/user-attachments/assets/61391b98-74f5-463f-816d-5ee8efa2ddd4)
  - Relative positioning
- Examples:
  - ![image](https://github.com/user-attachments/assets/72a0c135-4def-4ef6-8656-4310c8bec49c)
  - ![image](https://github.com/user-attachments/assets/3ff9600b-25b8-4642-8554-3a0a59270000) (relative positioning)
- Absolute positioning
  - ![image](https://github.com/user-attachments/assets/c22c16e8-9b5e-4cfe-ab52-645b89d86cbb)
  - Example
    - ![image](https://github.com/user-attachments/assets/179e05ba-9209-459f-9902-111c00f1c1dc)
    - ![image](https://github.com/user-attachments/assets/46061777-df47-49de-96af-9c9b0fa3df85)
      - position of absolute, 1 didn't move and no offsets can be made on it
    - ![image](https://github.com/user-attachments/assets/b4ead489-91e7-4374-91db-659085a185d4)
      - bottom and right offsets the absolute

**Video 6: Lecture 22, Part 2: Relative and Absolute Element Positioning**
- Summary:
  - ![image](https://github.com/user-attachments/assets/63214726-0545-429f-90c8-37f2dcc73d36)
 
Optional Practice Quiz - Relative and Absolute Element Positioning
- ![image](https://github.com/user-attachments/assets/8efa491b-6429-4b4f-a80f-3eee0934a258)
