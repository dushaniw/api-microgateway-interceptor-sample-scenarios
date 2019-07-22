import ballerina/io;
import ballerina/http;
import ballerina/runtime;

public function transformResponse (http:Caller outboundEp, http:Response res) {
    io:println("Response is intercepted to remove address field for iphone users.");
    any device = runtime:getInvocationContext().attributes["CLIENT_ACCESS_DEVICE"];
    if (res.statusCode == 200) {
    	if (device is string) {
      	    if (device == "iPhone") {
		var response  = res.getJsonPayload();
	        if (response is json) {
		    response.remove("address");
        	    res.setPayload(untaint response);
		}
	    }
	}
    } 
}
