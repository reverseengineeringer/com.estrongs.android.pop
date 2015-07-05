package com.baidu.cloudsdk.common.http;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

class AsyncHttpClient$3
  implements HttpResponseInterceptor
{
  AsyncHttpClient$3(AsyncHttpClient paramAsyncHttpClient) {}
  
  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    paramHttpContext = paramHttpResponse.getEntity();
    int j;
    int i;
    if (paramHttpContext != null)
    {
      paramHttpContext = paramHttpContext.getContentEncoding();
      if (paramHttpContext != null)
      {
        paramHttpContext = paramHttpContext.getElements();
        j = paramHttpContext.length;
        i = 0;
      }
    }
    for (;;)
    {
      if (i < j)
      {
        if (paramHttpContext[i].getName().equalsIgnoreCase("gzip")) {
          paramHttpResponse.setEntity(new AsyncHttpClient.InflatingEntity(paramHttpResponse.getEntity()));
        }
      }
      else {
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.AsyncHttpClient.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */