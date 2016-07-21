package com.facebook.ads.internal.http;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

class a$1
  implements HttpRequestInterceptor
{
  a$1(a parama) {}
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if (!paramHttpRequest.containsHeader("Accept-Encoding")) {
      paramHttpRequest.addHeader("Accept-Encoding", "gzip");
    }
    paramHttpContext = a.a(a).keySet().iterator();
    while (paramHttpContext.hasNext())
    {
      String str = (String)paramHttpContext.next();
      paramHttpRequest.addHeader(str, (String)a.a(a).get(str));
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.http.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */