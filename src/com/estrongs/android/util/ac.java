package com.estrongs.android.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import java.security.KeyStore;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
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

public class ac
{
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
      localObject = new af((KeyStore)localObject);
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
    paramWebView = new ct(paramContext).b();
    int j = 2131428581;
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
      paramSslError = String.format("%s %s", new Object[] { paramContext.getString(i), paramContext.getString(2131428394) });
      paramWebView.setTitle(2131428393);
      paramWebView.setMessage(paramSslError);
      paramWebView.setConfirmButton(paramContext.getString(2131427339), new ad(paramSslErrorHandler));
      paramWebView.setCancelButton(paramContext.getString(2131427340), new ae(paramSslErrorHandler));
      paramWebView.setCanceledOnTouchOutside(false);
      paramWebView.show();
      return;
      i = 2131428387;
      continue;
      i = 2131428388;
      continue;
      i = 2131428389;
      continue;
      i = 2131428390;
      continue;
      i = 2131428391;
      continue;
      i = 2131428392;
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
 * Qualified Name:     com.estrongs.android.util.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */