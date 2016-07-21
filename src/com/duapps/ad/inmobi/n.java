package com.duapps.ad.inmobi;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class n
{
  public WebView a;
  public int b;
  public boolean c = false;
  
  public n(Context paramContext)
  {
    a = new WebView(paramContext);
    a.getSettings().setJavaScriptEnabled(true);
    a.getSettings().setCacheMode(2);
    a.getSettings().setLoadsImagesAutomatically(true);
    a.getSettings().setBlockNetworkImage(false);
    a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */