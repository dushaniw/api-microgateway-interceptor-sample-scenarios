import ballerina/http;
import ballerina/time;
import ballerina/log;
import ballerina/runtime;

public function logRequest (http:Caller outboundEp, http:Request req) {
    time:Time time = time:currentTime();
    int correlationID = time.time;
    runtime:getInvocationContext().attributes["CORRELATION_ID"] = correlationID; 
    log:printInfo("Request correlationID: " + correlationID);
    req.setHeader("CorrelationID", <string> correlationID);
}	

