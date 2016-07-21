package com.dianxinos.library.notify.download;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class d
  implements HttpRequestInterceptor
{
  private d(a parama) {}
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    paramHttpContext = a.a(a);
    if ((paramHttpContext != null) && (e.a(paramHttpContext)) && ((paramHttpRequest instanceof HttpUriRequest))) {
      e.a(paramHttpContext, a.a((HttpUriRequest)paramHttpRequest, false));
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */