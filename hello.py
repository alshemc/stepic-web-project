def wsgi_application(environ, start_response):
	#business logic
	status = '200 OK'
	headers = [
		('Content-type', 'text/plain')
	]
	resp = environ['QUERY_STRING'].split("&")
  	resp = [item+"\r\n" for item in resp]
	start_response(status, headers)
	return resp
