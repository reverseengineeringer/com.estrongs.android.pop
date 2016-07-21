package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsoluteLayout.LayoutParams;
import android.widget.ProgressBar;
import com.baidu.sapi2.SapiWebView;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;

public class an
{
  public static void a(Context paramContext, SapiWebView paramSapiWebView)
  {
    d(paramContext, paramSapiWebView);
    b(paramContext, paramSapiWebView);
    c(paramContext, paramSapiWebView);
  }
  
  public static void b(Context paramContext, SapiWebView paramSapiWebView)
  {
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903301, null);
    paramContext = new ao(paramContext);
    localView.findViewById(2131625107).setOnClickListener(paramContext);
    paramSapiWebView.setNoNetworkView(localView);
  }
  
  public static void c(Context paramContext, SapiWebView paramSapiWebView)
  {
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903300, null);
    paramContext.findViewById(2131624637).setOnClickListener(new ap(paramSapiWebView, paramContext));
    paramSapiWebView.setTimeoutView(paramContext);
  }
  
  public static void d(Context paramContext, SapiWebView paramSapiWebView)
  {
    try
    {
      ProgressBar localProgressBar = new ProgressBar(paramContext, null, 16842872);
      localProgressBar.setLayoutParams(new AbsoluteLayout.LayoutParams(-1, SapiUtils.dip2px(paramContext, 2.0F), 0, 0));
      paramSapiWebView.setProgressBar(localProgressBar);
      return;
    }
    catch (Throwable paramContext)
    {
      L.e(paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */