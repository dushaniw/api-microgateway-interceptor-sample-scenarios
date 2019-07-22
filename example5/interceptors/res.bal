import ballerina/http;
import ballerina/runtime;

public function logResponse (http:Caller outboundEp, http:Response res) {
   any correlateId = runtime:getInvocationContext().attributes["CORRELATION_ID"];
   if (correlateId is int) { 
      log:printInfo("Response correlationID: " + correlateId);
      res.setHeader("CorrelationID", <string> correlateId);
   }
}
