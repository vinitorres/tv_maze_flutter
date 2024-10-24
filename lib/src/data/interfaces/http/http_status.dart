///
/// Internal HttpStatus reference
///
enum HttpStatus {
  /*
  ------------------------------------------------------------------
  Informational response (1xx)
  Informational responses indicate the acceptance and continuation of the requests.
  ------------------------------------------------------------------
  */

  /// The server tells the client that everything is OK so far keeps sending requests.
  continue_(100),

  /// The client requests the server to switch the protocol.
  /// This response is sent for the Upgrade HTTP header.
  switchingProtocols(101),

  /// An interim response used to inform the client that the server has accepted the complete request but has not yet completed it.
  processing(102),

  /*
  ------------------------------------------------------------------
  Successful Responses (2xx)
  As the term suggests, these status codes indicate that the request is successfully received, accepted, and resolved.
  ------------------------------------------------------------------
  */

  /// This status code indicates the successful HTTP request.
  /// It's a standard successful response for GET, POST, PUT, HEAD, and TRACE.
  ok(200),

  /// This status code is sent by the server to indicates that a new resource has been created.
  /// Generally used for the POST and PUT requests.
  created(201),

  /// Typically used for the async response.
  /// The server confirms to the client that the request has been accepted.
  accepted(202),

  /// The server indicates that all is good but nothing to return.
  noContent(204),

  /// The server usually returns this to indicate that server is a proxy that received this data from its origin.
  /// The proxy returns the modified version of the origin's data.
  nonAuthoritativeInformation(203),

  /// The server indicates the client to reset the document.
  /// Nothing to return as response data.
  resetContent(205),

  /// The server returns this code with the partial data that the client asked for with the Range HTTP header.
  partialContent(206),

  /// A Multi-Status response conveys information about multiple resources in situations where multiple status codes might be appropriate.
  multiStatus(207),

  /// Used inside a DAV: propstat response element to avoid enumerating the internal members of multiple bindings to the same collection repeatedly.
  alreadyReported(208),

  /// The server has fulfilled a GET request for the resource,
  /// and the response is a representation of the result of one or more instance-manipulations applied to the current instance.
  imUsed(226),

  /*
  ------------------------------------------------------------------
   Redirection messages (3xx)
   The server usually returns a 3xx redirection status code to indicate that some additional action has to be done by the client to fulfill the request.
  ------------------------------------------------------------------
  */

  /// The server returns this code when it has multiple options for response.
  multipleChoices(300),

  /// Server sends the new URL with a 301 status code if the requested URL has been shifted to new URL.
  movedPermanently(301),

  /// 302 indicates that the requested URL has been changed temporarily.
  /// Therefore, can't fulfill the request for this moment.
  found(302),

  /// The target resource resides temporarily under a different URI.
  /// Since the redirection might be altered on occasion,
  /// the client ought to continue to use the effective request URI for future requests.
  movedTemporarily(302), // Common alias fo(ound,
  /// Server tells the client to get the desired resource at another URL with a GET request.
  seeOther(303),

  /// 304 Indicates that the resources are the same since the last visit.
  /// In this case, the client can use the cached resources.
  notModified(304),

  /// Defined in a previous version of this specification and is now deprecated,
  /// due to security concerns regarding in-band configuration of a proxy.
  useProxy(305),

  /// The server tells the client that you will get the desired resource at another URL with the same request that the client has just made.
  /// URL shifting is temporary.
  temporaryRedirect(307),

  /// The server tells the client that you will get the desired resource at another URL with the same request that the client has just made.
  /// URL shifting is permanent.
  permanentRedirect(308),

  /*
  ------------------------------------------------------------------
  Client Error Responses (4xx)
  The server usually returns 4xx status codes if a client request causes some problem.
  ------------------------------------------------------------------
  */

  /// Incorrect syntax or invalid URLs are generally the reason for 400 Bad Request.
  badRequest(400),

  /// The server returns 401 to indicate that the client should authenticate itself before making requests.
  unauthorized(401),

  /// Reserved for future use.
  paymentRequired(402),

  /// The client is authenticated but doesn't have permission to access the resource.
  forbidden(403),

  /// We see a 404 response most often. It means that the requested URL is not valid.
  notFound(404),

  /// The server returns the 405 status code when the request method is valid but not appropriate to get the desired resource.
  methodNotAllowed(405),

  /// In simple terms, the server returns a 406 Not Acceptable response when it does not find any suitable response according to the request.
  notAcceptable(406),

  /// The server returns this code when the client must authenticate itself with the proxy.
  proxyAuthenticationRequired(407),

  /// The server sends this response without the request, indicating that the server would like to suspend the connection.
  requestTimeout(408),

  /// The server usually returns this when there is a conflict in the current state of resources.
  conflict(409),

  /// The resource has been deleted permanently from the server with any redirect URL.
  gone(410),

  /// The server indicates that the client must send Content-Length to get the resource.
  lengthRequired(411),

  /// The server doesn't meet the precondition that the client mentioned in the request headers.
  preconditionFailed(412),

  /// Request is too large that the server can't handle. In this case, the server might close the connection.
  requestEntityTooLarge(413),

  /// The server returned a 414 code when the URI provided was too long for the server to process.
  requestUriTooLong(414),

  /// The server does not support the media type mentioned in the request.
  /// For example, the client wants to upload an image as .png,
  /// but the server supports the .jpeg media type.
  unsupportedMediaType(415),

  /// The server returns a 416 code when the range mentioned in the Range HTTP request header is unsatisfactory.
  /// For example, asking for a portion of data that doesn't exist.
  requestedRangeNotSatisfiable(416),

  /// The server is not able to provide the relevant data mentioned in the Expect HTTP header.
  expectationFailed(417),

  /// The request was directed at a server that is not able to produce a response.
  /// This can be sent by a server that is not configured to produce responses for the combination of scheme and authority that are included in the request URI.
  misdirectedRequest(421),

  /// The server returns a 422 status when there are semantic errors in the request.
  unprocessableEntity(422),

  /// The source or destination resource of a method is locked.
  locked(423),

  /// The method could not be performed on the resource because the requested action depended on another action and that action failed.
  failedDependency(424),

  /// The server indicates that the client should use another protocol to fulfill the request.
  /// In response, server sends the required protocol in the Upgrade header.
  upgradeRequired(426),

  /// The server indicates that the request should be conditional to reduce the chances of conflicts.
  preconditionRequired(428),

  /// The client has sent too many requests in the given time frame.
  /// For example, the server only handles 100 requests per second.
  tooManyRequests(429),

  /// Server indicates that the request header is too larger which can't be handled by the server.
  /// In this case, the client can reinitiate the request after reducing the sizer of the request header.
  requestHeaderFieldsTooLarge(431),

  /// A non-standard status code used to instruct nginx to close the connection without sending a response to the client,
  /// most commonly used to deny malicious or malformed requests.
  connectionClosedWithoutResponse(444),

  /// The server can't provide the requested resource due to legal reasons.
  unavailableForLegalReasons(451),

  /// A non-standard status code introduced by nginx for the case when a client closes the connection while nginx is processing the request.
  clientClosedRequest(499),

  /*
  ------------------------------------------------------------------
  Server error responses (5xx)
  The 5xx status codes indicate that everything is excellent with the request,
  but an error occurred on the server-side.
  ------------------------------------------------------------------
  */

  /// An unexpected situation occurs which server can't handle at this moment.
  serverError(500),

  /// An unexpected situation occurs which server can't handle at this moment.
  internalServerError(500),

  /// The server returns 501 when the request is not handled by the server.
  /// For example, the client initiates the DELETE request but the server supports only GET and HEAD.
  notImplemented(501),

  /// 502 status code indicates when the server got the invalid response while acting as the gateway.
  badGateway(502),

  /// Usually, when the server is down for maintenance,
  /// the server returns 503 indicating server is not ready to handle the request.
  serviceUnavailable(503),

  /// Server cannot get the response from the origin while acting as a gateway.
  gatewayTimeout(504),

  /// The server does not support the HTTP protocol version used in the request.
  httpVersionNotSupported(505),

  /// The server returns the 506 Variant Also Negotiates code when there is an internal configuration error.
  variantAlsoNegotiates(506),

  /// The server is unable to store the representation needed to complete the request.
  insufficientStorage(507),

  /// The server detected an infinite loop while processing the resource.
  loopDetected(508),

  /// The server requires some additional extensions in the request to fulfill it.
  notExtended(510),

  /// The client needs to authenticate to gain network access.
  networkAuthenticationRequired(511),

  /// This status code is not specified in any RFCs but is used by some HTTP proxies to signal a network connect timeout behind the proxy to a client in front of the proxy.
  networkConnectTimeoutError(599);

  /// Returns the http status code
  final int code;

  /// Default [HttpStatus] constructor
  const HttpStatus(this.code);

  factory HttpStatus.fromCode(int code) {
    return values.firstWhere((e) => e.code == code);
  }
}
