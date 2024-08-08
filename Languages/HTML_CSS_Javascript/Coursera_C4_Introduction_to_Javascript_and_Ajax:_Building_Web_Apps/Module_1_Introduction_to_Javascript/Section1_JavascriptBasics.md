## Javascript Basics (section #1)

Reading - Welcome to Course 4: Introduction to Javascript
- "Hello, and welcome to Course 4 of the HTML, CSS, and Javascript for Web Developers Specialization! I'm very happy you decided to enroll, and most importantly, start the course work. To introduce myself, my name is Yakov Heiken, and I will be your instructor for this course. I've been teaching part-time at graduate computer science program of Johns Hopkins University for over ten years. My full time job is developing small and large scale web applications, working with both front end and server side technologies. 

  This course is all about JavaScript the language. Now JavaScript is one of the most used programming languages out there. Yet a lot of people don't really appreciate it's power. In my personal experience, this is largely due to the lack of understanding of the language fundamentals. I know, I was once in the same boat as well, I admit it. This is why I believe learning its fundamentals is crucial. Another reason why     JavaScript doesn't have such a great reputation is historical. In the early days of the web, the browsers implemented JavaScript support much in the same way they implemented HTML support, however they pleased. This called a lot of heartache for developers because you couldn't be certain that your code would run in the same way in all browsers. In addition, JavaScript used to lack tooling and frameworks that ease the difficulties with everyday programming. While things aren't perfect nowadays either they're much better. There are quite a number of good editors that support JavaScript development and a hefty number of frameworks and libraries that simplify programming JavaScript today.

  One word of warning, this course assumes that you have the basic understanding of programming. If you don't know general concepts like variables, looping, what an if statement is and so on, you will have a tough time getting this module. If you fall into the category I suggest you find and go through a programming basics tutorial first then come back and finish this module. See you in the module."

Reading - Recommended Books
- https://clearlydecoded.com/recommended-books/

**Video 1 - Lecture 40, Part 1: Adjusting Development Environment for Javascript Development**
- use "sublime ." and the sublime editor will be opened, with only the folder you're in as the particular workspace
- use the console to work through Javascript stuff; undock it to make it full screen

**Video 2 - Lecture 40, Part 2: Adjusting Development Environment for Javascript Development**
- javascript, when writing it in html, goes inside script tags; or in an external file
- ![image](https://github.com/user-attachments/assets/afbee81a-dcc6-485a-be68-6a4931f88e1f)
- then use console.log (which logs whatever you write inside of it, goes in the browser console)
- javascript has variables defined that can be printed...for example:
- ![image](https://github.com/user-attachments/assets/231e5ed6-7739-47cd-9131-535badfb9bf6)
  - console.log(x) prints Hello World! in the browser console, because...
- ![image](https://github.com/user-attachments/assets/f010bcfc-6441-4557-94a2-dc9a1fc63735)
  - x was defined in script.js, which is defined in the html already
- If multiple "console.log()", what is printed will be ordinally based off of the succession of the html page (if there's a console log on line 1 and another on line 5, the content in the line 1 log will be printed first)

**Video 3 - Lecture 41, Part 1: Defining Variables, Function, and Scope**
- Defining variables below...
- ![image](https://github.com/user-attachments/assets/600583a1-5db3-4263-aecd-a5a695267a6d)
- Defining functions below...
- ![image](https://github.com/user-attachments/assets/041ae0db-dc5f-4b32-a950-fd683cfc9da0)
- ![image](https://github.com/user-attachments/assets/f98ac70e-aba1-4d46-b6aa-29c1e2d8794a)
- Executing a function...
- ![image](https://github.com/user-attachments/assets/f19cdd5d-bc3b-4eb1-94e4-cadd8263c62c)
- Define arguments to be passed to a function...
- ![image](https://github.com/user-attachments/assets/12c55c3c-4c25-4313-b60f-da50d53b8d8f)
- Legal ways of calling functions...
- ![image](https://github.com/user-attachments/assets/a37a132c-5392-4c41-9aca-21606ceff8a9)
- Information about scope...
- ![image](https://github.com/user-attachments/assets/08bb4830-1f8f-411d-accc-8850e35b2b02)
- ![image](https://github.com/user-attachments/assets/7ec586c5-53b3-4446-b465-7ddc951d5ad5)
- ![image](https://github.com/user-attachments/assets/285b7c7e-0469-4d99-8aed-dbc6deba73bc)
- ![image](https://github.com/user-attachments/assets/117dc337-dc82-41e1-95cb-9667b766bca1)
  - This prints 2 because B is defined within the global scope

**Video 4 - Lecture 41, Part 2: Defining Variables, Function, and Scope**
- ![image](https://github.com/user-attachments/assets/6467e8e7-bd02-49ce-9aac-3cae65125171)
  - a: message = inside a because this message variable is sitting inside of the function scope
- ![image](https://github.com/user-attachments/assets/470dd45e-e5df-4b16-856f-5847488c7619)
  - b does not define its own message on an inner scope basis...search to the outer scope
- ![image](https://github.com/user-attachments/assets/8b5c8583-1ede-42c9-bb9a-56ce96da5a15)
  - b is now inside function a...now its message is inside a because it senses that now beforein global
- Summary
- ![image](https://github.com/user-attachments/assets/8613898b-dac5-43bc-b1f0-cebdd1532611)

<ins> Optional Practice Quiz - Defining Variables, Function, and Scope </ins>
![image](https://github.com/user-attachments/assets/733422b5-c3ca-4881-98aa-e637e7adbf0e)
![image](https://github.com/user-attachments/assets/8827f749-0bab-42fe-ace3-fcd7136502c6)











