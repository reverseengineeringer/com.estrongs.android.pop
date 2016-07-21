package com.duapps.ad.stats;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import com.dianxinos.a.a.f;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.entity.AdData;
import java.util.List;
import org.apache.http.impl.client.DefaultHttpClient;

public abstract class n
  implements Handler.Callback
{
  private static DefaultHttpClient c;
  protected Handler a;
  protected volatile boolean b;
  private Context d;
  private Toast e;
  
  public n(Context paramContext)
  {
    d = paramContext;
    if (Looper.getMainLooper() == Looper.myLooper()) {
      a = new Handler(this);
    }
  }
  
  public static boolean b(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() == 0)) {}
    while ((!paramString.startsWith("http://market.")) && (!paramString.startsWith("https://market.")) && (!paramString.startsWith("https://play.")) && (!paramString.startsWith("http://play.")) && (!paramString.startsWith("market:"))) {
      return false;
    }
    return true;
  }
  
  /* Error */
  static DefaultHttpClient f()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 73	com/duapps/ad/stats/n:c	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   6: ifnull +12 -> 18
    //   9: getstatic 73	com/duapps/ad/stats/n:c	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: new 75	org/apache/http/conn/scheme/SchemeRegistry
    //   21: dup
    //   22: invokespecial 76	org/apache/http/conn/scheme/SchemeRegistry:<init>	()V
    //   25: astore_0
    //   26: aload_0
    //   27: new 78	org/apache/http/conn/scheme/Scheme
    //   30: dup
    //   31: ldc 80
    //   33: invokestatic 86	org/apache/http/conn/scheme/PlainSocketFactory:getSocketFactory	()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   36: bipush 80
    //   38: invokespecial 89	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   41: invokevirtual 93	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   44: pop
    //   45: aload_0
    //   46: new 78	org/apache/http/conn/scheme/Scheme
    //   49: dup
    //   50: ldc 95
    //   52: invokestatic 100	org/apache/http/conn/ssl/SSLSocketFactory:getSocketFactory	()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   55: sipush 443
    //   58: invokespecial 89	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   61: invokevirtual 93	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   64: pop
    //   65: new 102	org/apache/http/params/BasicHttpParams
    //   68: dup
    //   69: invokespecial 103	org/apache/http/params/BasicHttpParams:<init>	()V
    //   72: astore_1
    //   73: new 105	org/apache/http/impl/client/DefaultHttpClient
    //   76: dup
    //   77: new 107	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
    //   80: dup
    //   81: aload_1
    //   82: aload_0
    //   83: invokespecial 110	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager:<init>	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   86: aload_1
    //   87: invokespecial 113	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    //   90: astore_0
    //   91: aload_0
    //   92: invokevirtual 117	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   95: sipush 10000
    //   98: invokestatic 123	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   101: aload_0
    //   102: invokevirtual 117	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   105: sipush 4000
    //   108: invokestatic 126	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   111: aload_0
    //   112: invokevirtual 117	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   115: ldc -128
    //   117: bipush 10
    //   119: invokeinterface 134 3 0
    //   124: pop
    //   125: aload_0
    //   126: invokevirtual 117	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   129: ldc -120
    //   131: invokestatic 142	org/apache/http/client/params/HttpClientParams:setCookiePolicy	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   134: aload_0
    //   135: invokevirtual 117	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   138: getstatic 147	com/duapps/ad/base/m:b	Ljava/lang/String;
    //   141: invokestatic 152	org/apache/http/params/HttpProtocolParams:setUserAgent	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   144: aload_0
    //   145: new 154	org/apache/http/impl/client/DefaultHttpRequestRetryHandler
    //   148: dup
    //   149: iconst_3
    //   150: iconst_1
    //   151: invokespecial 157	org/apache/http/impl/client/DefaultHttpRequestRetryHandler:<init>	(IZ)V
    //   154: invokevirtual 161	org/apache/http/impl/client/DefaultHttpClient:setHttpRequestRetryHandler	(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    //   157: aload_0
    //   158: putstatic 73	com/duapps/ad/stats/n:c	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   161: goto -148 -> 13
    //   164: astore_0
    //   165: ldc 2
    //   167: monitorexit
    //   168: aload_0
    //   169: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   12	146	0	localObject1	Object
    //   164	5	0	localObject2	Object
    //   72	15	1	localBasicHttpParams	org.apache.http.params.BasicHttpParams
    // Exception table:
    //   from	to	target	type
    //   3	13	164	finally
    //   18	161	164	finally
  }
  
  protected void a(String paramString)
  {
    a.post(new o(this, paramString));
  }
  
  protected void b(int paramInt)
  {
    a(d.getString(paramInt));
  }
  
  protected void b(p paramp)
  {
    if (l.a()) {
      l.c("BaseClickHandler", "Goto installed App: " + paramp.a());
    }
    u.b(d, paramp);
    ap.b(d, paramp.a());
  }
  
  protected void c(p paramp)
  {
    if (l.a()) {
      l.c("BaseClickHandler", "No network.");
    }
    u.c(d, paramp);
    e();
  }
  
  public void e()
  {
    l.c("BaseClickHandler", "Please check you network and try again.");
  }
  
  protected void f(p paramp, String paramString)
  {
    if (l.a()) {
      l.c("BaseClickHandler", "An apk link.");
    }
    g(paramp, paramString);
  }
  
  protected void g(p paramp, String paramString)
  {
    if (b)
    {
      l.c("BaseClickHandler", "Has already report");
      return;
    }
    b = true;
    if (paramString == null)
    {
      if (l.a()) {
        l.c("BaseClickHandler", "startBrowser: url is null");
      }
      u.c(d, paramp);
      l.c("BaseClickHandler", "Please check you network and try again.");
      return;
    }
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramString.addFlags(268435456);
    Object localObject = d.getPackageManager();
    if (((PackageManager)localObject).resolveActivity(paramString, 65536) == null)
    {
      if (l.a()) {
        l.c("BaseClickHandler", "Goto browser failed.");
      }
      b(f.duapps_ad_no_browser_play);
      l.c("BaseClickHandler", "No browser or Google Play installed");
      u.c(d, paramp);
      return;
    }
    localObject = ((PackageManager)localObject).queryIntentActivities(paramString, 65536);
    int j = ((List)localObject).size();
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        ActivityInfo localActivityInfo = getactivityInfo;
        if (exported) {
          paramString.setPackage(packageName);
        }
      }
      else
      {
        if (l.a()) {
          l.c("BaseClickHandler", "Goto browser");
        }
        d.startActivity(paramString);
        u.d(d, paramp);
        return;
      }
      i += 1;
    }
  }
  
  protected void h(p paramp, String paramString)
  {
    if (b) {
      l.c("BaseClickHandler", "Has already reported");
    }
    b = true;
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    localIntent.setFlags(268435456);
    localIntent.setPackage("com.android.vending");
    try
    {
      if (l.a()) {
        l.c("BaseClickHandler", "Goto Play");
      }
      d.startActivity(localIntent);
      u.e(d, paramp);
      return;
    }
    catch (Exception localException)
    {
      if (l.a()) {
        l.a("BaseClickHandler", "Goto Play failed:", localException);
      }
      g(paramp, paramString);
    }
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    return false;
  }
  
  void i(p paramp, String paramString)
  {
    if (b) {
      return;
    }
    Object localObject = paramp.g();
    if (localObject != null) {}
    for (localObject = c; TextUtils.isEmpty((CharSequence)localObject); localObject = null)
    {
      g(paramp, paramString);
      return;
    }
    localObject = "https://play.google.com/store/apps/details?id=" + (String)localObject;
    l.c("BaseClickHandler", gb + " start google play via mock url -->" + (String)localObject);
    if (ap.a(d, "com.android.vending"))
    {
      h(paramp, (String)localObject);
      return;
    }
    g(paramp, paramString);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */