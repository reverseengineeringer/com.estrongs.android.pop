package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@me
public class kd
  implements kb
{
  final Set<WebView> a = Collections.synchronizedSet(new HashSet());
  private final Context b;
  
  public kd(Context paramContext)
  {
    b = paramContext;
  }
  
  public WebView a()
  {
    WebView localWebView = new WebView(b);
    localWebView.getSettings().setJavaScriptEnabled(true);
    return localWebView;
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    b.a("Fetching assets for the given html");
    oe.a.post(new ke(this, paramString2, paramString3));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */