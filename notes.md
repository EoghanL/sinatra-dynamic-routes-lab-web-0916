Review Request Response Cycle

localhost:3000/users
  HTTP Request

  (GET /users/)
  gets sent to the server which in this case is the local one

  (DNS)
  listen for requests(create/index/show/update/destroy)
  (Computer Server)--Application && HTTP Server
  our app controller takes care of the requests that are submitted
  (RACK)--Rack comes loaded with various applications(security, )
  and then chooses the pathway and then renders the erb file

  Response

  the server sends back the response to the browser
