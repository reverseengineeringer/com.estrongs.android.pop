package com.estrongs.android.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import java.security.KeyStore;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

public class ah
{
  public static String a(String paramString)
  {
    Object localObject1 = null;
    try
    {
      Object localObject2 = HttpUtils.getClient();
      paramString = new HttpGet(paramString);
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      localBasicHttpParams.setParameter("http.protocol.handle-redirects", Boolean.FALSE);
      paramString.setParams(localBasicHttpParams);
      localObject2 = ((HttpClient)localObject2).execute(paramString);
      int i = ((HttpResponse)localObject2).getStatusLine().getStatusCode();
      paramString = (String)localObject1;
      if (i >= 300)
      {
        paramString = (String)localObject1;
        if (i < 400)
        {
          localObject2 = ((HttpResponse)localObject2).getFirstHeader("Location");
          paramString = (String)localObject1;
          if (localObject2 != null) {
            paramString = ((Header)localObject2).getValue();
          }
        }
      }
      return paramString;
    }
    catch (Throwable paramString)
    {
      paramString = paramString;
      paramString.printStackTrace();
      return null;
    }
    finally {}
  }
  
  public static String a(HttpResponse paramHttpResponse)
  {
    paramHttpResponse = EntityUtils.toByteArray(paramHttpResponse.getEntity());
    if (paramHttpResponse != null) {
      return new String(paramHttpResponse, "utf-8");
    }
    return "";
  }
  
  public static HttpClient a(HttpParams paramHttpParams)
  {
    try
    {
      Object localObject = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject).load(null, null);
      localObject = new n((KeyStore)localObject);
      ((SSLSocketFactory)localObject).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      if (paramHttpParams == null) {}
      for (paramHttpParams = new BasicHttpParams();; paramHttpParams = paramHttpParams.copy())
      {
        HttpProtocolParams.setVersion(paramHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(paramHttpParams, "UTF-8");
        SchemeRegistry localSchemeRegistry = new SchemeRegistry();
        localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject, 443));
        localObject = new ThreadSafeClientConnManager(paramHttpParams, localSchemeRegistry);
        if (HttpConnectionParams.getConnectionTimeout(paramHttpParams) == 0) {
          HttpConnectionParams.setConnectionTimeout(paramHttpParams, 30000);
        }
        if (HttpConnectionParams.getSoTimeout(paramHttpParams) == 0) {
          HttpConnectionParams.setSoTimeout(paramHttpParams, 30000);
        }
        return new DefaultHttpClient((ClientConnectionManager)localObject, paramHttpParams);
      }
      return new DefaultHttpClient();
    }
    catch (Exception paramHttpParams) {}
  }
  
  @TargetApi(8)
  public static void a(Context paramContext, WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (Build.VERSION.SDK_INT < 8) {
      return;
    }
    paramWebView = new cv(paramContext).b();
    int j = 2131232498;
    int i = j;
    if (paramSslError != null) {
      switch (paramSslError.getPrimaryError())
      {
      default: 
        i = j;
      }
    }
    for (;;)
    {
      paramSslError = String.format("%s %s", new Object[] { paramContext.getString(i), paramContext.getString(2131232530) });
      paramWebView.setTitle(2131231621);
      paramWebView.setMessage(paramSslError);
      paramWebView.setConfirmButton(paramContext.getString(2131231270), new ai(paramSslErrorHandler));
      paramWebView.setCancelButton(paramContext.getString(2131231265), new aj(paramSslErrorHandler));
      paramWebView.setCanceledOnTouchOutside(false);
      paramWebView.show();
      return;
      i = 2131232372;
      continue;
      i = 2131232368;
      continue;
      i = 2131232369;
      continue;
      i = 2131232371;
      continue;
      i = 2131232370;
      continue;
      i = 2131232367;
    }
  }
  
  public static void a(HttpClient paramHttpClient)
  {
    if ((paramHttpClient != null) && (paramHttpClient.getConnectionManager() != null)) {
      paramHttpClient.getConnectionManager().shutdown();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */