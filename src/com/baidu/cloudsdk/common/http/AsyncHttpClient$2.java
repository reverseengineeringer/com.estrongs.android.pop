package com.baidu.cloudsdk.common.http;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

class AsyncHttpClient$2
  implements HttpRequestInterceptor
{
  AsyncHttpClient$2(AsyncHttpClient paramAsyncHttpClient) {}
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if (!paramHttpRequest.containsHeader("Accept-Encoding")) {
      paramHttpRequest.addHeader("Accept-Encoding", "gzip");
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.AsyncHttpClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */