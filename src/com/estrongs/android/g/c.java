package com.estrongs.android.g;

import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.android.util.n;
import de.aflx.sardine.Version;
import de.aflx.sardine.util.Logger;
import java.io.IOException;
import java.net.ProxySelector;
import java.security.KeyStore;
import java.util.HashMap;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.ProxySelectorRoutePlanner;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

public class c
{
  public static HashMap<String, Integer> b = new HashMap();
  private static Logger d = new Logger();
  protected boolean a = false;
  HttpRequestInterceptor c = new d(this);
  private Header e = null;
  private AbstractHttpClient f;
  private HttpContext g = new BasicHttpContext();
  
  public c()
  {
    this(null, null);
  }
  
  public c(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public c(String paramString1, String paramString2, ProxySelector paramProxySelector)
  {
    a(a(paramProxySelector), paramString1, paramString2);
  }
  
  public c(AbstractHttpClient paramAbstractHttpClient, String paramString1, String paramString2)
  {
    a(paramAbstractHttpClient, paramString1, paramString2);
  }
  
  private void a(AbstractHttpClient paramAbstractHttpClient, String paramString1, String paramString2)
  {
    f = paramAbstractHttpClient;
    f.addRequestInterceptor(c, 0);
    a(paramString1, paramString2);
    d.warn("init");
  }
  
  public HttpResponse a(HttpRequestBase paramHttpRequestBase)
  {
    HttpResponse localHttpResponse;
    String str;
    int i;
    try
    {
      localHttpResponse = f.execute(paramHttpRequestBase, g);
      if (localHttpResponse.getStatusLine().getStatusCode() != 401) {
        break label323;
      }
      str = ((HttpHost)g.getAttribute("http.target_host")).getHostName();
      Integer localInteger = (Integer)b.get(str);
      Object localObject1 = localInteger;
      if (localInteger == null) {
        localObject1 = Integer.valueOf(0);
      }
      i = ((Integer)localObject1).intValue();
      localObject1 = localHttpResponse.getFirstHeader("WWW-Authenticate");
      if (localObject1 != null)
      {
        localObject1 = ((Header)localObject1).getValue();
        if (bk.b((CharSequence)localObject1))
        {
          localObject1 = ((String)localObject1).toLowerCase();
          if (((i == 0) && (((String)localObject1).contains("basic"))) || ((i == 1) && (((String)localObject1).contains("digest"))) || ((i == 2) && (((String)localObject1).contains("ntlm")))) {
            throw new IOException("File is unauthorized");
          }
        }
      }
    }
    catch (IOException localIOException1)
    {
      paramHttpRequestBase.abort();
      throw localIOException1;
    }
    Object localObject2;
    if (i == 0)
    {
      l.e("EEE", "basic auth failed, try get digest auth header");
      localObject2 = localHttpResponse.getHeaders("WWW-Authenticate");
      if ((localObject2 != null) && (localObject2.length > 0)) {
        e = localObject2[0];
      }
    }
    for (;;)
    {
      try
      {
        if (!localObject2[0].getValue().contains("NTLM"))
        {
          bool = localObject2[0].getValue().contains("ntlm");
          if (!bool) {
            break label326;
          }
        }
        i = 2;
      }
      catch (Exception localException)
      {
        try
        {
          boolean bool;
          l.e("EEE", "execute request again");
          localObject2 = a(paramHttpRequestBase);
          return (HttpResponse)localObject2;
        }
        catch (IOException localIOException2)
        {
          localIOException2.printStackTrace();
          throw localIOException2;
        }
        localException = localException;
        i = 1;
        continue;
      }
      b.put(str, Integer.valueOf(i));
      bool = paramHttpRequestBase instanceof HttpPut;
      if (!bool) {}
      label323:
      return localHttpResponse;
      label326:
      i = 1;
    }
  }
  
  protected ClientConnectionManager a(SchemeRegistry paramSchemeRegistry)
  {
    return new ThreadSafeClientConnManager(b(), paramSchemeRegistry);
  }
  
  protected HttpRoutePlanner a(SchemeRegistry paramSchemeRegistry, ProxySelector paramProxySelector)
  {
    return new ProxySelectorRoutePlanner(paramSchemeRegistry, paramProxySelector);
  }
  
  protected AbstractHttpClient a(ProxySelector paramProxySelector)
  {
    SchemeRegistry localSchemeRegistry = c();
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(a(localSchemeRegistry), b());
    localDefaultHttpClient.setRoutePlanner(a(localSchemeRegistry, paramProxySelector));
    return localDefaultHttpClient;
  }
  
  public HttpContext a()
  {
    return g;
  }
  
  public void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, "", "");
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString1 != null)
    {
      f.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "NTLM"), new NTCredentials(paramString1, paramString2, paramString4, paramString3));
      f.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "Basic"), new UsernamePasswordCredentials(paramString1, paramString2));
      f.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "Digest"), new UsernamePasswordCredentials(paramString1, paramString2));
    }
  }
  
  protected HttpParams b()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    String str2 = Version.getSpecification();
    String str1 = str2;
    if (str2 == null) {
      str1 = "UNAVAILABLE";
    }
    HttpProtocolParams.setUserAgent(localBasicHttpParams, "Sardine/" + str1);
    HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, false);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset(localBasicHttpParams, "ISO-8859-1");
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    return localBasicHttpParams;
  }
  
  protected SchemeRegistry c()
  {
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", d(), 80));
    try
    {
      Object localObject = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject).load(null, null);
      localObject = new n((KeyStore)localObject);
      ((SSLSocketFactory)localObject).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject, 443));
      return localSchemeRegistry;
    }
    catch (Exception localException) {}
    return localSchemeRegistry;
  }
  
  protected PlainSocketFactory d()
  {
    return PlainSocketFactory.getSocketFactory();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.g.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */