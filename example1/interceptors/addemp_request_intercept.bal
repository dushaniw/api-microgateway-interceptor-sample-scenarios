import ballerina/io;
import ballerina/http;

public function transformJsonToXml (http:Caller outboundEp, http:Request req) {
    io:println("Request is intercepted.");
    io:println("Initial content type : ", req.getContentType());
    var jsonPayload = req.getJsonPayload();
    if (jsonPayload is json) {
	var xmlPayload = jsonPayload.toXML({});
	if (xmlPayload is xml) {
		req.setPayload(untaint xmlPayload);
	}
    }
    io:println("After transformation content type : ", req.getContentType());
    io:println("After transformation request payload ", req.getXmlPayload());
}
