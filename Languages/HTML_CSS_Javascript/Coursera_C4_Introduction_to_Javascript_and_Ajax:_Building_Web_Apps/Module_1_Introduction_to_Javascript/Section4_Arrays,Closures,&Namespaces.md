## Arrays, Closures, & Namespaces (#section 4)

**Video 1 - Lecture 50, Part 1: Arrays**
- Arrays are collections of data
- Arrays are 0 based
- ![image](https://github.com/user-attachments/assets/51a0f62f-0131-46f9-b862-be937711d028)
- Print out the second item of an array...(array[1]; see below)
- ![image](https://github.com/user-attachments/assets/ac1d11e0-8775-4b27-9ccf-e391d92ea24f)
- Invoke a function (see below)
- ![image](https://github.com/user-attachments/assets/e24678a0-b62a-420c-9859-db1ef24c924a)
- Pass an array as an argument (see below)
- ![image](https://github.com/user-attachments/assets/77efbffd-1737-4388-a588-b77ed03b7db9)
- Get value of an item in an object that is in an array (see below)
- ![image](https://github.com/user-attachments/assets/acabdd42-94cc-4d1c-bec8-87fbabf68837)
- Shorthand array creation...
- ![image](https://github.com/user-attachments/assets/34b86782-bd3e-444d-8b29-3d0ca0c8427c)
- Shorthand array creration with objects...
- ![image](https://github.com/user-attachments/assets/a50ab797-8da1-405a-b3d8-48576ff7db0c)
- Loop over an array...
- ![image](https://github.com/user-attachments/assets/3b51f261-27ac-41f4-b21f-0b5763a7e80b)
- Arrays can be sparse...
- ![image](https://github.com/user-attachments/assets/b9b67c36-209a-4dee-bb30-98b7d719ad55)
  - Index of 0-2, then of 100

**Video 2 - Lecture 50, Part 2: Arrays**
- To grab properties from an object...
- ![image](https://github.com/user-attachments/assets/47a76b73-d9af-4a06-aa0e-583b3dc1bd76)
- Arrays are just objects, and indices are just property names,,,above can be used on a basic array as well...
- ![image](https://github.com/user-attachments/assets/cf0b22af-0816-4bd9-896e-bae6c3558e09)
- Problem is arrays are objects, and adding properties can make things confusing (adding a greeting property to names2, and it being printed with names,,,see below)
- ![image](https://github.com/user-attachments/assets/d0b33fc8-c3fe-4586-b398-e4a7b594c9f8)

<ins> Optional Practice Quiz - Arrays </ins>
![image](https://github.com/user-attachments/assets/f49f2e4b-4433-487a-b478-3e37d5eaff20)
- Note: ++ means to add 1

**Video 3 - Lecture 51: Closures**
- Closures makes Ajax possible
- ![image](https://github.com/user-attachments/assets/ae7e9660-9404-4c81-835d-c6befee966a5)
  - makeMultiplier takes a multiplier that is applied to it -- in case of doubleAll, 2 -- and return a function as part of return value that will take a number argument x (10 is x) and it will multiply it using the multiplier in the outer function (execution context, this, reference to outer lexical environment all 2 to be sensed as multiplier...when doubleAll is created, the inner function inherits all of this from the outer makeMultiplier variable)

**Video 4 - Lecture 52, Part 1: Fake Namespaces**
- Namespaces are containers for functionalities/declarations...you have to fake them
- ![image](https://github.com/user-attachments/assets/135fef38-3b93-48a7-9055-8039e8b3d39d)
- ![image](https://github.com/user-attachments/assets/45281718-d700-4262-b14a-4f6264dae099)
- Lead to...
- ![image](https://github.com/user-attachments/assets/78b55a5a-af8e-4614-ad3a-f2b9490d4e01)
- Without clarifying with the fake namespace objects yaakovGreeter and johnGreeter...
- ![image](https://github.com/user-attachments/assets/d674b68a-a1ae-4493-9cf0-77a8614d3c58)
- ![image](https://github.com/user-attachments/assets/3702efa0-f3db-4116-bea4-82cac210f839)
- Lead to...
- ![image](https://github.com/user-attachments/assets/de6b1f66-9a83-4b68-bc11-22a63526cc88)
  - When Hello Yaakov and Hi John are desired...because John overrides Yaakov as script runs

**Video 5 - Lecture 52, Part 2: Immediately Invoked Function Expressions (IIFEs)**
- ![image](https://github.com/user-attachments/assets/80a659d3-5cbd-4e87-8322-3b59fbd82ce9)
  - Taking a function objection and putting open parentheses behind it...this immediately invokes this function (the parentheses, if it asks for an argument, is where you put that argument...see below)
- ![image](https://github.com/user-attachments/assets/b574a897-f7dc-4bc6-8686-a8228b364306)
- Create an IIFE; expose the inner object to the "window"
- ![image](https://github.com/user-attachments/assets/9c533b2e-7aac-4c1e-b9a9-a75db8ae2ee8)

<ins> Optional Practice Quiz - Closures, Fake Namespaces, IIFEs </ins>
![image](https://github.com/user-attachments/assets/a70fa9e7-7113-42cf-aa4b-86db35d1c687)

Reading - Frequently Asked Questions
- https://github.com/jhu-ep-coursera/fullstack-course4/blob/master/FAQ.md
- https://github.com/jhu-ep-coursera/fullstack-course4/blob/master/FAQ.md#q-how-to-ask-and-get-your-question-answered-a-must-read

**Video 6 - Module 4 Wrap-Up**
- One module left...apply Javascript to web applications

