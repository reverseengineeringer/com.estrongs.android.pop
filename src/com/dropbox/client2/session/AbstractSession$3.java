package com.dropbox.client2.session;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

class AbstractSession$3
  implements HttpRequestInterceptor
{
  AbstractSession$3(AbstractSession paramAbstractSession) {}
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if (!paramHttpRequest.containsHeader("Accept-Encoding")) {
      paramHttpRequest.addHeader("Accept-Encoding", "gzip");
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */