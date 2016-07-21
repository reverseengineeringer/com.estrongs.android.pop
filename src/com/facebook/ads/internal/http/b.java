package com.facebook.ads.internal.http;

import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

class b
  implements Runnable
{
  private final AbstractHttpClient a;
  private final HttpContext b;
  private final HttpUriRequest c;
  private final c d;
  private int e;
  
  public b(AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, c paramc)
  {
    a = paramAbstractHttpClient;
    b = paramHttpContext;
    c = paramHttpUriRequest;
    d = paramc;
  }
  
  private void a()
  {
    if (!Thread.currentThread().isInterrupted())
    {
      HttpResponse localHttpResponse = a.execute(c, b);
      if ((!Thread.currentThread().isInterrupted()) && (d != null)) {
        d.a(localHttpResponse);
      }
    }
  }
  
  private void b()
  {
    boolean bool = true;
    Object localObject1 = null;
    Object localObject2 = a.getHttpRequestRetryHandler();
    IOException localIOException2;
    while (bool) {
      try
      {
        a();
        return;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        while (d == null) {}
        d.b(localUnknownHostException, "can't resolve host");
        return;
      }
      catch (SocketException localSocketException)
      {
        while (d == null) {}
        d.b(localSocketException, "can't resolve host");
        return;
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        while (d == null) {}
        d.b(localSocketTimeoutException, "socket time out");
        return;
      }
      catch (IOException localIOException1)
      {
        i = e + 1;
        e = i;
        bool = ((HttpRequestRetryHandler)localObject2).retryRequest(localIOException1, i, b);
      }
      catch (NullPointerException localNullPointerException)
      {
        localIOException2 = new IOException("NPE in HttpClient" + localNullPointerException.getMessage());
        int i = e + 1;
        e = i;
        bool = ((HttpRequestRetryHandler)localObject2).retryRequest(localIOException2, i, b);
      }
    }
    localObject2 = new ConnectException();
    ((ConnectException)localObject2).initCause(localIOException2);
    throw ((Throwable)localObject2);
  }
  
  public void run()
  {
    try
    {
      if (d != null) {
        d.c();
      }
      b();
      if (d != null) {
        d.d();
      }
      return;
    }
    catch (IOException localIOException)
    {
      while (d == null) {}
      d.d();
      d.b(localIOException, (String)null);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.http.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */