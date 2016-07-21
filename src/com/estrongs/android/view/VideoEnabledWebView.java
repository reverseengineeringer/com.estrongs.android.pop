package com.estrongs.android.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import com.estrongs.android.pop.esclasses.ESWebView;

public class VideoEnabledWebView
  extends ESWebView
{
  private fy a;
  private boolean b = false;
  private ge c = null;
  
  public VideoEnabledWebView(Context paramContext)
  {
    super(paramContext);
  }
  
  public VideoEnabledWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public VideoEnabledWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  @SuppressLint({"NewApi"})
  private void a()
  {
    if (!b)
    {
      addJavascriptInterface(new gd(this), "_VideoEnabledWebView");
      addJavascriptInterface(new VideoEnabledWebView.JSVideoDetailHelper(this), "JSVideoFullScreenHelper");
      b = true;
    }
  }
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    a();
    super.loadData(paramString1, paramString2, paramString3);
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a();
    super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public void loadUrl(String paramString)
  {
    a();
    super.loadUrl(paramString);
  }
  
  public void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (c != null) {
      c.a(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setOnWebViewScrollListener(ge paramge)
  {
    c = paramge;
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public void setWebChromeClient(WebChromeClient paramWebChromeClient)
  {
    getSettings().setJavaScriptEnabled(true);
    if ((paramWebChromeClient instanceof fy)) {
      a = ((fy)paramWebChromeClient);
    }
    super.setWebChromeClient(paramWebChromeClient);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.VideoEnabledWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */