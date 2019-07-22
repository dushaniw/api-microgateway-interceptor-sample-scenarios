import ballerina/io;
import ballerina/http;
import ballerina/runtime;

public function interceptRequest (http:Caller outboundEp, http:Request req) {
    io:println("Request is intercepted to read User-Agent header.");
    runtime:getInvocationContext().attributes["CLIENT_ACCESS_DEVICE"]= untaint req.userAgent;
}	

