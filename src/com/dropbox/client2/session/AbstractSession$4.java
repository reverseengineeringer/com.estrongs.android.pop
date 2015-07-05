package com.dropbox.client2.session;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

class AbstractSession$4
  implements HttpResponseInterceptor
{
  AbstractSession$4(AbstractSession paramAbstractSession) {}
  
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
      if (i >= j) {
        return;
      }
      if (paramHttpContext[i].getName().equalsIgnoreCase("gzip"))
      {
        paramHttpResponse.setEntity(new AbstractSession.GzipDecompressingEntity(paramHttpResponse.getEntity()));
        return;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */