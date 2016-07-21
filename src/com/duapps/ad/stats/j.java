package com.duapps.ad.stats;

import com.duapps.ad.base.l;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;

class j
  implements i, RedirectHandler
{
  private p b;
  private volatile boolean c = false;
  
  public j(c paramc, p paramp)
  {
    b = paramp;
  }
  
  public void a()
  {
    c = true;
  }
  
  public URI getLocationURI(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    return null;
  }
  
  public boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    if (c)
    {
      if (l.a()) {
        l.c("ToolClickHandler", "[Http]Action canceled.");
      }
      u.g(c.a(a), b);
    }
    label248:
    do
    {
      do
      {
        do
        {
          return false;
          int i = paramHttpResponse.getStatusLine().getStatusCode();
          if ((i != 303) && (i != 302) && (i != 301) && (i != 307)) {
            break label248;
          }
          paramHttpResponse = paramHttpResponse.getHeaders("Location")[0].getValue();
          if (paramHttpResponse != null) {
            break;
          }
          if (l.a()) {
            l.c("ToolClickHandler", "[Http] null URL.");
          }
        } while (b.o());
        a.i(b, b.j());
        a.a();
        return false;
        if (!n.b(paramHttpResponse)) {
          break;
        }
        if (l.a()) {
          l.c("ToolClickHandler", "[Http] Market URL: " + paramHttpResponse);
        }
        a.a(b, paramHttpResponse);
        b.b(true);
      } while (b.o());
      a.h(b, paramHttpResponse);
      a.a();
      return false;
      a.c(b, paramHttpResponse);
      return false;
      if (l.a()) {
        l.c("ToolClickHandler", "[Http] non-Market URL: " + b.j());
      }
    } while (b.o());
    a.g(b, b.j());
    a.a();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */