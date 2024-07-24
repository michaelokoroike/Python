## Introduction to Responsive Design (section #4)

**Video 1: Lecture 23, Part 1: Media Queries**
- Media queries allow you to group styles together and target them to devices based on some criteria. For example, you can target a device by its width, its height, or orientation like landscape or portrait. (at 0:49 of video)
- Media query syntax below:
- ![image](https://github.com/user-attachments/assets/d65b0a96-ab1e-4a41-8061-b21b3cab949e)
- Media query common features below:
- ![image](https://github.com/user-attachments/assets/3c28a87a-6894-4791-a557-3fb9e0560693)
- Media queries use common logical operators! See below:
- ![image](https://github.com/user-attachments/assets/681ff362-6739-4740-8f87-496daf31511a)
- See the common approach for media queries below:
- ![image](https://github.com/user-attachments/assets/d931e96c-f594-411d-82f4-6d7a69d03bdf)
  - Start with the base styles, then go into specific media sizes, etc

**Video 2: Lecture 23, Part 2: Media Queries**
- Start with base styles (see below):
- ![image](https://github.com/user-attachments/assets/a8bb757a-b73b-4dc0-883c-3b9d35f4bfeb)
  - With above base styles, nothing happens if screen of browser shrunk...see below for adaptation to large devices
  - ![image](https://github.com/user-attachments/assets/33ea6c96-707f-4d09-925b-42b142b4edc6)
    - Once a browser is larger than 1200px is when this applies...when smaller, base styles apply
- Developer Tools are good for debugging
- Summary
- ![image](https://github.com/user-attachments/assets/e2c24a01-661e-4439-81ec-0f99760cd8cd)

Optional Practice Quiz - Media Queries
- ![image](https://github.com/user-attachments/assets/9771ba05-627e-4d1f-b5e9-1b6d6e054876)

**Video 3: Lecture 24, Part 1: Responsive Design**
- Responsive design was born primarily out of the need to deal with the explosion of mobile devices that started being able to browse the web much in the same way that a desktop browser user browsed the web. Mobile browsing exceeded web browsing by 2014.
- Support all devices.
- Responsive design is a site that's designed to adapt its layout to the viewing environment by using fluid, proportion-based grids (width/height in percentages), flexible images, and CSS3 media queries. Content/visual delivery may change.
- Alternative to this: a server-side technology that detects your user agent (browser) and figure out if you're on mobile or desktop, and based on that info, serve up a desktop or mobile version of it...problems are risk of feature diversion, and mobile devices are too diversified in size.
- Common layout is a 12-column grid; 12 is used because of factors of 12

**Video 4: Lecture 24, Part 2: Responsive Design**
- Start with styling a paragrah tag...see below:
- ![image](https://github.com/user-attachments/assets/ed991697-f2b5-417a-a067-1fb390e0e727)
- Below is a responsive framework off of that paragraph/content:
- ![image](https://github.com/user-attachments/assets/e6763d0d-0804-4e9a-97cb-8be8391ccb5f)
  - Defines each column for a 12-column layout and properties if screen is larger than 1200px..the.col-lg things don't exist outside of the media query. See demo below:
  - ![image](https://github.com/user-attachments/assets/805d5bfe-4c0b-4fcd-9dbf-9beb17e03556)
    - Based on above, class will toggle between col-lg-3 and col-md-6 depending on screen size...when larger (above 1200px), the structure of those 8 paragraphs will be 4 a row (3 columns in a 12-column layout becomes one), like below
    - ![image](https://github.com/user-attachments/assets/bf80cdf6-4a9a-416b-91ab-1022c3f40d18)
    - When screen is between 950 and 1200px, the structure of those 8 paragraphs will be 2 a row (6 columns in a 12-column layout becomes one...col-md-6), like below
    - Below 950px, they stack on top of each other
- In phones, they naturally try to zoom out to fit all data; the meta tag with name='viewport' below is the meta tag to add to html to ensure this doesn't happen
- Summary:
- ![image](https://github.com/user-attachments/assets/3699e6b0-ea2a-434a-b817-5cee0267f43d)


Optional Practice Quiz - Responsive Design
- ![image](https://github.com/user-attachments/assets/0f9406c2-a330-44d3-9299-8b4f639126eb)


