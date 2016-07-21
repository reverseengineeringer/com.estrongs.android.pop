package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bk;
import java.net.URI;
import java.net.URISyntaxException;

@me
public class qw
  extends WebViewClient
{
  private final String a = b(paramString);
  private boolean b = false;
  private final qa c;
  private final ld d;
  
  public qw(ld paramld, qa paramqa, String paramString)
  {
    c = paramqa;
    d = paramld;
  }
  
  private String b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return paramString;
      try
      {
        if (paramString.endsWith("/"))
        {
          String str = paramString.substring(0, paramString.length() - 1);
          return str;
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        b.b(localIndexOutOfBoundsException.getMessage());
      }
    }
    return paramString;
  }
  
  protected boolean a(String paramString)
  {
    paramString = b(paramString);
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return false;
      try
      {
        Object localObject1 = new URI(paramString);
        if ("passback".equals(((URI)localObject1).getScheme()))
        {
          b.a("Passback received");
          d.b();
          return true;
        }
        if (!TextUtils.isEmpty(a))
        {
          Object localObject2 = new URI(a);
          paramString = ((URI)localObject2).getHost();
          String str = ((URI)localObject1).getHost();
          localObject2 = ((URI)localObject2).getPath();
          localObject1 = ((URI)localObject1).getPath();
          if ((bk.a(paramString, str)) && (bk.a(localObject2, localObject1)))
          {
            b.a("Passback received");
            d.b();
            return true;
          }
        }
      }
      catch (URISyntaxException paramString)
      {
        b.b(paramString.getMessage());
      }
    }
    return false;
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    b.a("JavascriptAdWebViewClient::onLoadResource: " + paramString);
    if (!a(paramString)) {
      c.i().onLoadResource(c.getWebView(), paramString);
    }
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    b.a("JavascriptAdWebViewClient::onPageFinished: " + paramString);
    if (!b)
    {
      d.a();
      b = true;
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    b.a("JavascriptAdWebViewClient::shouldOverrideUrlLoading: " + paramString);
    if (a(paramString))
    {
      b.a("shouldOverrideUrlLoading: received passback url");
      return true;
    }
    return c.i().shouldOverrideUrlLoading(c.getWebView(), paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */