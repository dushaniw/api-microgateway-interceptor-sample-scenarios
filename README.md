# api-microgateway-interceptor-sample-scenarios
This repository consist of sample artifacts related to WSO2 API Microgateway 3.0.1.

WSO2 API Microgateway is designed in a manner which allows you to extend its default mediation flow. If you need to modify or transform the requests and responses of the API, you can write your own request/response interceptor as a Ballerina function intercepting the default flow. Microgateway allows you to add request/response interceptors globally for the API and per each API resource.

## Example1

Assume, I have an employee record management backend service which expects the “Add employee” resource payload to be in XML format. This backend service is exposed as an API via API Microgateway. However, my client application is only capable of sending JSON payloads. 

## Example2

Assume the WeatherAPI backend can only send XML responses for all the API operations. However your client application always expects the response to be in JSON format.

## Example3

Consider a client who is accessing XYZ bank’s APIs and performing online account balance checking. The API developer wants to allow the mobile device clients to allow access a selected set of data of their account details, and expose all data to other desktop application clients. 

## Example4

In Microgateway the keyword “Authorization” is a reserved name used for the header to pass the JWT/OAuth Token for the API. There may be a requirement for you to directly pass a custom key in the header “Authorization” to the backend. 

## Example5

When your client application send API requests it may be required to log certain attributes of the API request or to assign a UUID as a header and log it during the message flow in order to trace the request and response in the Microgateway. 
