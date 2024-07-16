## Simple APIs (section #1)

Video 1 - Application Program Interface
- API = lets two pieces of software talk to each other...similar to a function which you don't have to know how it works, just its inputs and outputs (pandas is an example API)
  - Example:
    - import pandas as pd
    - dict = {'a':1} #create data
    - df = pd.DataFrame(dict) #pass it along to pandas API
    - df.head() #dataframe communicates with the API to display first few rows of dataframe (returns values)
- REST APIs = allow coomunication through the internet and take advantage of storage, more data, AI algorithms, etc
  - RE stands for representational
  - S for State
  - T for Transfer
  - Program (df in regular API) is called a _client_; web service is a _resource_; client finds service via _endpoint_; client sends request to resource and the reponse to the client
  - HTTP is the way of transmitting data over the internet, which usually contains a JSON file (instructions for what operation we'd like the web service/resource to perform)...the transfer of the JSO file from client to web service is done via the _internet_ and the service/resource performs the operation; web service/resource returns a response which is typically returned via a JSON file, and that is returned to the client
  - Pycoingecko is an API for bitcoin info
 
## REST APIs, Web Scraping, and Working with Files (section #2)

Video 1 - REST APIs and HTTP Requests - Part 1
- HTTP protocol can be thought of as a general protocol of transferring info through the web
- When the client uses a web page, the browser sends an HTTP request to sthe server where the page is located; the server tries to find the desired resource by default 'index.html'. If the request is successful, the server will send the object to the client in an HTTP response; this includes information like the type of the resource, the length of the resource, and other information.
  - Files sent include html, png, or txt
- Uniform Resource Locator 9urL) is the most popular way to find resources on the web. It can be broken into three parts:
  - Scheme: the protocol (http://)
  - Internet address/base URL: finds the location (www.google.com)
  - Route: location on the web server (/images/logo.png)
- Example of a Request Message below:
  - ![image](https://github.com/user-attachments/assets/4eaec325-f4c8-4f90-ad1f-8a0ccee913ce)
  - In the start line, GET requests file index.html...Request Header passes additional info with an HTTP request (empty with a GET request)...Requst Body exists
- Example of a Response Message below:
  - ![image](https://github.com/user-attachments/assets/fd3f7dd7-256b-4c63-b0ca-581dbc9b3eaf)
  - The response start line contains the version number followed by a descriptive phrase. In this case, HTTP/1.0 a status code (200) meaning success, and the descriptive phrase, OK...Response Header contains info on the server...response body containing the requested file, in this case an HTML document.
- Status Codes
  - ![image](https://github.com/user-attachments/assets/d49fcbc1-c191-4058-bc0d-53e44053b0d7)
  - Prefix indicates class (ex: 1xx is oinformation, 4xx is client error, etc)
- HTTP methods (when requests are made, methods are sent, telling the serve what action to perform...see below)
  - ![image](https://github.com/user-attachments/assets/58d93b92-26ad-4925-b043-15d54d3ac8c9)

Video 2 - REST APIs and HTTP Requests - Part 2
- Requests module
  - Part of several libraries (httplib and urllib including) that can work with HTTP protocol (especially HTTP/1.1)
  - Example:
    - import requests
    - url = 'https://www.google.com'
    - r = requests.get(url)
      - r.status_code (view status code)
      - r.request.headers (view request headers)
      - r.request.body (view request body)
      - r.headers (view HTTP response headers)
      - r.encoding (check encoding)
      - r.text[0:] (print html of request)
- Get request (modifies result of query)
  - Example of GET request:
    - ![image](https://github.com/user-attachments/assets/345e7931-d0fc-4e94-a9ba-e3ace0424097)
      - Route /get says we want to perform GET request
  - Example of Query String (after GET is requested...part of the URL and sends other info to the web server)
    - ![image](https://github.com/user-attachments/assets/5cacd8c4-c7d0-4c1c-9501-ef6ba3416932)
      - Start of query is ?, followed by parameter name/value  (name and value separated by =, pairs separated by &)
      - Example of Query string in Python:
        - url_get = 'http://httpbin.org/get'
        - payload = {'name':'Joseph', 'ID':'123'} #dictionary that will become query string...keys are parameter names, values are Query string values
        - r = requests.get(url_get, params=payload) #pass the dictionary to the params parameter of the get() function
        - r.url #see names and values by printing url
        - r.request.body #see request body
        - r.status_code #see status code
        - r.text #view response as text
        - r.headers['Content-Type'] #look at content type
        - r.json() #format content to JSON
        - r.json()['args'] #see names and values for query string
- POST request (like GET sends info to a server, but sends it in a reuest body, not a URL)
    - Example of Query string in Python (for POST):
      - url_post = 'http://httpbin.org/post'
      - payload = {'name':'Joseph', 'ID':'123'} #dictionary that will become query string...keys are parameter names, values are Query string values
      - r_post = requests.post(url_get, data=payload) #pass the dictionary to the params parameter of the get() function
      - r_post.url #no names and values are seen by printing url
      - r_post.request.body #see request body (has one)
      - r_post.json()['form'] #see names and values for query string

 Video 3 - (Optional) HTML for Web Scraping
 - HTML composition (see below):
   - ![image](https://github.com/user-attachments/assets/89f11143-660c-4ab4-9dd8-1034a5bda6d7)
     - DOCTYPE HTML declares it's HTML
     - "<html>" is root element of HTML page
     - "<head>" contains meta info about the HTML page
     - "<body>" is what is displayed on HTML page
     - "<h3>" is type 3 heading (like # in markdown), and makes text larger and bold
     - "<p>" is for paragraph
 - HTML anchor tag
   - ![image](https://github.com/user-attachments/assets/11cbd936-ebdc-419a-a349-f1b476554218)
   - a is tag name, like class in Python...what's in between the a's are what is displayed on the webpage; href is attribute name and the website is the attribute value
 - HTML Tree
   - ![image](https://github.com/user-attachments/assets/377c7067-672c-4ff7-8887-fc9ab139ae31)
   - html is parent of head and body (who are siblings), etc, etc
 - HTML Tables
   - ![image](https://github.com/user-attachments/assets/f78aa9c3-9568-4864-b1a7-78554a532319)
   - table rows have tr tag...table cells in a row have a td tag
  
Video 4 - (Optional) Web Scraping
- To find the name and salaryies of players in the NBA from this webpage/HTML:
  - ![image](https://github.com/user-attachments/assets/7827a49d-5bfb-4b98-a670-114d47602464)
- First import BeautifulSoup
  - ![image](https://github.com/user-attachments/assets/ab44b475-f365-4f7a-8f1d-55a49b6e0906)
    - store the webpage html as a string in variable html
    - parse the html into the BeautifulSoup() constructor...document is now represented as a nested data structure
      - soup.title prints "<title>Page Title</title>"
      - soup.h3 prints Lebron James tag because it is the first h3 tag
        - soup.h3.b shows the "<b id='boldest>" tag which is the child of the Lebron James h3 tag
        - soup.h3.b.parent brings it back to h3, as the parent of the "<b id='boldest>" tag
        - soup.h3.b.next_sibling finds the next sibling
        - soup.h3.b.child.attrs prints dictionary of child
        - soup.h3.b.child.string prints string version of child
- Next use find_all (filter based on tag's name, attributes, text, combination of these, etc
  - ![image](https://github.com/user-attachments/assets/f4269a27-bf91-4553-a5e0-f10dd6c20399)
    - apply to table with tag 'tr' and you get all rows in the table...like a list you can get a list item from (table_row[0] is the first row found in the find_all search), or iterate through
- Full example:
  - ![image](https://github.com/user-attachments/assets/b5b8cd58-cd94-4af5-8ad6-f79fc9a39ec0)
    - First import requests and BeautifulSoup, which are needed
    - Next download the webpage using the get method...get the text of it and assign it to a variable
    - Next create a BeautifulDoup object from the variable, which will allow you to parse through the HTML from the variable
    - Now scrape the page (example above scrapes for a links

Video 5 - Working with Different File Formats
- Goes over downloading CSV, JSON, and XML files





     


 
