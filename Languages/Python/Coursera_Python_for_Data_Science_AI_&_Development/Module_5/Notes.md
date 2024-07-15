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

 

 
