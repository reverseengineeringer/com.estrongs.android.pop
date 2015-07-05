package com.dropbox.client2.session;

import org.apache.http.HeaderElement;
import org.apache.http.HeaderElementIterator;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.message.BasicHeaderElementIterator;
import org.apache.http.protocol.HttpContext;

class AbstractSession$DBKeepAliveStrategy
  implements ConnectionKeepAliveStrategy
{
  public long getKeepAliveDuration(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    long l1 = 20000L;
    paramHttpResponse = new BasicHeaderElementIterator(paramHttpResponse.headerIterator("Keep-Alive"));
    for (;;)
    {
      if (!paramHttpResponse.hasNext()) {
        return l1;
      }
      Object localObject = paramHttpResponse.nextElement();
      paramHttpContext = ((HeaderElement)localObject).getName();
      localObject = ((HeaderElement)localObject).getValue();
      if ((localObject != null) && (paramHttpContext.equalsIgnoreCase("timeout"))) {
        try
        {
          long l2 = Math.min(l1, Long.parseLong((String)localObject) * 1000L);
          l1 = l2;
        }
        catch (NumberFormatException paramHttpContext) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.AbstractSession.DBKeepAliveStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */