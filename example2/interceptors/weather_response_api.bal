import ballerina/io;
import ballerina/http;

public function transformXmlToJson (http:Caller outboundEp, http:Response res) {
    io:println("Response is intercepted.");
    io:println("Initial content type : ", res.getContentType());
    var xmlPayload = res.getXmlPayload();
    if (xmlPayload is xml) {
io:println(xmlPayload);
	var jsonPayload = xmlPayload.toJSON({attributePrefix: "#", preserveNamespaces: false});
		res.setPayload(untaint jsonPayload);
	
    }
    io:println("After transformation content type : ", res.getContentType());
    io:println("After transformation request payload ", res.getJsonPayload());
}
