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
- 
