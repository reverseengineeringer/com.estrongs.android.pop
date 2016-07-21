package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class ex
  extends RelativeLayout
{
  private static final String a = ex.class.getName();
  private WebView b = null;
  private String c = "";
  private ex.b d;
  private ProgressBar e;
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public ex(Context paramContext, String paramString)
  {
    super(paramContext);
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("AuthUrl cannot be null");
    }
    c = paramString;
    b = new WebView(paramContext);
    b.getSettings().setJavaScriptEnabled(true);
    b.getSettings().setUseWideViewPort(true);
    b.getSettings().setLoadWithOverviewMode(true);
    b.getSettings().setBuiltInZoomControls(true);
    b.setWebViewClient(new ex.a(this, null));
    b.setWebChromeClient(new ex.c(this, null));
    b.loadUrl(c);
    paramString = new RelativeLayout.LayoutParams(-1, -1);
    paramString.addRule(12);
    b.setLayoutParams(paramString);
    addView(b);
    e = new ProgressBar(paramContext, null, 16842872);
    e.setMax(100);
    e.setProgress(0);
    paramContext = new RelativeLayout.LayoutParams(-1, lr.b(5));
    e.setLayoutParams(paramContext);
    addView(e);
  }
  
  public void setRequestCompleteListener(ex.b paramb)
  {
    d = paramb;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */