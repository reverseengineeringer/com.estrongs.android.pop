package com.dianxinos.library.notify.download;

import android.content.Context;
import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

public final class a
  implements HttpClient
{
  public static long a = 256L;
  private static String[] b = { "text/", "application/xml", "application/json" };
  private static final HttpRequestInterceptor c = new b();
  private final HttpClient d;
  private RuntimeException e = new IllegalStateException("AndroidHttpClient created and never closed");
  private volatile e f;
  
  private a(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    d = new c(this, paramClientConnectionManager, paramHttpParams);
  }
  
  public static a a(String paramString, Context paramContext)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 60000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 60000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    if (Build.VERSION.SDK_INT > 7) {
      if (paramContext != null) {
        break label124;
      }
    }
    label124:
    for (paramString = null;; paramString = new SSLSessionCache(paramContext))
    {
      localSchemeRegistry.register(new Scheme("https", SSLCertificateSocketFactory.getHttpSocketFactory(60000, paramString), 443));
      return new a(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
    }
  }
  
  private static boolean a(HttpUriRequest paramHttpUriRequest)
  {
    Header[] arrayOfHeader = paramHttpUriRequest.getHeaders("content-encoding");
    int j;
    int i;
    if (arrayOfHeader != null)
    {
      j = arrayOfHeader.length;
      i = 0;
      if (i < j) {
        if (!"gzip".equalsIgnoreCase(arrayOfHeader[i].getValue())) {}
      }
    }
    for (;;)
    {
      return true;
      i += 1;
      break;
      paramHttpUriRequest = paramHttpUriRequest.getHeaders("content-type");
      if (paramHttpUriRequest != null)
      {
        int k = paramHttpUriRequest.length;
        i = 0;
        while (i < k)
        {
          arrayOfHeader = paramHttpUriRequest[i];
          String[] arrayOfString = b;
          int m = arrayOfString.length;
          j = 0;
          while (j < m)
          {
            String str = arrayOfString[j];
            if (arrayOfHeader.getValue().startsWith(str)) {
              return false;
            }
            j += 1;
          }
          i += 1;
        }
      }
    }
  }
  
  private static String b(HttpUriRequest paramHttpUriRequest, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("curl ");
    localStringBuilder.append("-X ");
    localStringBuilder.append(paramHttpUriRequest.getMethod());
    localStringBuilder.append(" ");
    Object localObject1 = paramHttpUriRequest.getAllHeaders();
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    if (i < j)
    {
      localObject2 = localObject1[i];
      if ((!paramBoolean) && ((((Header)localObject2).getName().equals("Authorization")) || (((Header)localObject2).getName().equals("Cookie")))) {}
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("--header \"");
        localStringBuilder.append(localObject2.toString().trim());
        localStringBuilder.append("\" ");
      }
    }
    localObject1 = paramHttpUriRequest.getURI();
    if ((paramHttpUriRequest instanceof RequestWrapper))
    {
      localObject2 = ((RequestWrapper)paramHttpUriRequest).getOriginal();
      if ((localObject2 instanceof HttpUriRequest)) {
        localObject1 = ((HttpUriRequest)localObject2).getURI();
      }
    }
    for (;;)
    {
      localStringBuilder.append("\"");
      localStringBuilder.append(localObject1);
      localStringBuilder.append("\"");
      if ((paramHttpUriRequest instanceof HttpEntityEnclosingRequest))
      {
        localObject1 = ((HttpEntityEnclosingRequest)paramHttpUriRequest).getEntity();
        if ((localObject1 != null) && (((HttpEntity)localObject1).isRepeatable()))
        {
          if (((HttpEntity)localObject1).getContentLength() >= 1024L) {
            break label369;
          }
          localObject2 = new ByteArrayOutputStream();
          ((HttpEntity)localObject1).writeTo((OutputStream)localObject2);
          if (!a(paramHttpUriRequest)) {
            break label342;
          }
          paramHttpUriRequest = com.dianxinos.library.dxbase.a.b(((ByteArrayOutputStream)localObject2).toByteArray(), 2);
          localStringBuilder.insert(0, "echo '" + paramHttpUriRequest + "' | base64 -d > /tmp/$$.bin; ");
          localStringBuilder.append(" --data-binary @/tmp/$$.bin");
        }
      }
      for (;;)
      {
        return localStringBuilder.toString();
        label342:
        paramHttpUriRequest = ((ByteArrayOutputStream)localObject2).toString();
        localStringBuilder.append(" --data-ascii \"").append(paramHttpUriRequest).append("\"");
        continue;
        label369:
        localStringBuilder.append(" [TOO MUCH DATA TO INCLUDE]");
      }
    }
  }
  
  public void a()
  {
    if (e != null)
    {
      getConnectionManager().shutdown();
      e = null;
    }
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)d.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return (T)d.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)d.execute(paramHttpUriRequest, paramResponseHandler);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return (T)d.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return d.execute(paramHttpHost, paramHttpRequest);
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return d.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return d.execute(paramHttpUriRequest);
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return d.execute(paramHttpUriRequest, paramHttpContext);
  }
  
  protected void finalize()
  {
    super.finalize();
    if (e != null)
    {
      Log.e("AndroidHttpClient", "Leak found", e);
      e = null;
    }
  }
  
  public ClientConnectionManager getConnectionManager()
  {
    return d.getConnectionManager();
  }
  
  public HttpParams getParams()
  {
    return d.getParams();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */