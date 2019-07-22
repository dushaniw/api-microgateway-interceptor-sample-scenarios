import ballerina/io;
import ballerina/http;

public function setAuthHeaderInRequest (http:Caller outboundEp, http:Request req) {
    io:println("Request is intercepted.");
    if(req.hasHeader("X-Authorization")){
	string customHeader = req.getHeader("X-Authorization");
	req.setHeader("Authorization",customHeader);
        req.removeHeader("X-Authorization");
    }	
}	

