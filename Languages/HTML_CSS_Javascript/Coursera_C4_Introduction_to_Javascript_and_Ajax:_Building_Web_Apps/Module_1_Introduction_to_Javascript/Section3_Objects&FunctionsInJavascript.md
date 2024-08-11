## Objects & Functions In Javascript (section #3)

**Video 1 - Lecture 45, Part 1: Creating Objects Using 'new Object()' Syntax**
- Object = collection of name/value pairs
- ![image](https://github.com/user-attachments/assets/3adcccb9-bb9c-44e0-bf7f-63856bfa7344)
  - new Object() initializes a new object...".name" adds a name attribute
- ![image](https://github.com/user-attachments/assets/3b7252e3-f679-4966-94d8-774d80e237e2)
  - initialize descending levels with new Object() still...for company.ceo.firstname, company.ceo has to be initialized as an object
- ![image](https://github.com/user-attachments/assets/70c74a42-675f-40cb-a5fe-c7f60cdb4f50)
  - different ways to get a value...
- ![image](https://github.com/user-attachments/assets/5bc9febe-3dab-400c-93f5-920ead4970c5)
  - when spaces, do bracket notation instead of dot notation

**Video 2 - Lecture 45, Part 2: Creating Objects Using 'new Object()' Syntax**
- Object literal is {}
- Better way to do object liberals...see below
- ![image](https://github.com/user-attachments/assets/c19610b0-fc85-4926-873d-d5dd0cb0311c)
- Still can call aspects of the object like below...
- ![image](https://github.com/user-attachments/assets/c1b0f8f3-d3b1-4fa4-a865-ef5c7eb2a2c7)
  - facebook.ceo.firstName = 'Mark'
- **Note: // at the beginning of a line comments it out**

<ins> Optional Practice Quiz - Creating Objects... </ins>
![image](https://github.com/user-attachments/assets/9cfb97de-dd85-43d9-9a35-1ba09e05fefb)

**Video 3 - Lecture 46: Functions Explained**
- Functions are first class data types (whatever you can do with objects, you can do with functions...they are objects with special options to them)...see below for a simple example
- ![image](https://github.com/user-attachments/assets/a7e571ab-d963-40e3-8480-fc7b5a220c7e)
- You can set a property...see below:
- ![image](https://github.com/user-attachments/assets/a23b63a8-1654-4578-af68-2a2449db5583)
  - .version is the property
- Functions being an object allow us to have diffeent levels of doing things...good example below; this
- ![image](https://github.com/user-attachments/assets/0c916a5c-f776-47e6-acd8-eae851c90529)
- Leads to 10*3, as seen below
- ![image](https://github.com/user-attachments/assets/61ad90bb-f662-4025-abb5-995d57f2b547)
- Functions can be passed as arguments
- ![image](https://github.com/user-attachments/assets/d01192af-05d9-4424-b8b6-d3c570bcf6d5)

<ins> Optional Practice Quiz - Creating Objects... </ins>
![image](https://github.com/user-attachments/assets/6b301a2c-e956-438f-b2b1-430f3a6aec22)

**Video 4 - Lecture 47, Part 1: Passing Variables by Value vs. by Reference**
- Pass by Value =
- ![image](https://github.com/user-attachments/assets/7bb8e783-a317-4fb1-85ec-3829c95348cb)
- Pass by Reference =
- ![image](https://github.com/user-attachments/assets/133f7a0f-ea3a-47cb-a104-bd631e53f525)
- How it works in Javascript =
- ![image](https://github.com/user-attachments/assets/3e765cee-4203-400b-8947-5566d43b7cb4)
- Examples of Primitives vs Objects =
- ![image](https://github.com/user-attachments/assets/671797df-25d0-4e3c-85f7-6b7ab095a804)
- With primitives, you declare a variable and set it to a value (see below example of setting a to 7):
- ![image](https://github.com/user-attachments/assets/ca828a61-908a-493a-9289-af9cbb846b06)
  - a gets memory allocation (in above example, memory address is 001...value sitting in the address is 7)
  - when we declare b and copy contents of variable a into b, we're allocating another memory location/address (002) and copy value into that memory location (see below):
  - ![image](https://github.com/user-attachments/assets/5366f79e-0809-4812-b88a-af7673fff88a)
  - When we overwrite the variable b with another value (example is 5), we're placing a different value into the same address that b is pointing to:
  - ![image](https://github.com/user-attachments/assets/7745afd7-ba8a-4207-9d87-d8db5a873096)
  - a and b have nothing to do with each other in this case...this is **pass by value**
- With objects, you declare an object literal with a property x: 7
- ![image](https://github.com/user-attachments/assets/1a8afd9b-3706-47e5-8750-71eadb367688)
  - a gets memory allocation of 001, but what is put in that address is another memory address (inside 001 is 003 which points to the actual value x = 7)
  - when we declare b and copy contents of variable a into b, we're copying now a memory location/address:
  - ![image](https://github.com/user-attachments/assets/c40eab13-62b5-4fda-a9f5-746644a26a04)
  - When we overwrite the variable b with another value (example is 5), we're updating the memory address that b is pointing to:
  - ![image](https://github.com/user-attachments/assets/e2e9cbb8-00f6-4c95-8818-c06b2ad7dd77)
  - a and b are both changed in this case...this is **pass by reference**

**Video 5 - Lecture 47, Part 2: Passing Variables by Value vs. by Reference**
- ![image](https://github.com/user-attachments/assets/bed695ef-d56c-43e0-88d9-30da26f7492c)
  - a = 7 and is passed into b...because a is just a number, it's a primitive, meaning the pass was *by value*
    - when we change b = 5...
    - ![image](https://github.com/user-attachments/assets/ffd0ecc9-2851-4105-838f-f115b32d404b)
    - b is 5, but a is still 7
- ![image](https://github.com/user-attachments/assets/99314090-c8a8-4197-9016-aa7792548e77)
  - a now is {x:7} and that is copied into b...being an object, the pass is _by reference_
  - when we change b.x = 5...
  - ![image](https://github.com/user-attachments/assets/8688a9a7-909d-4a24-a4fb-65973af6084a)
  - both a and b are 5
- Summary
- ![image](https://github.com/user-attachments/assets/66a50235-8f02-4c2f-9cdc-21c06e8759c2)











