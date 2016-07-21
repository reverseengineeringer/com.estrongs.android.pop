package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.qa;

@me
public class m
{
  public final int a;
  public final ViewGroup.LayoutParams b;
  public final ViewGroup c;
  public final Context d;
  
  public m(qa paramqa)
  {
    b = paramqa.getLayoutParams();
    ViewParent localViewParent = paramqa.getParent();
    d = paramqa.d();
    if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
    {
      c = ((ViewGroup)localViewParent);
      a = c.indexOfChild(paramqa.getWebView());
      c.removeView(paramqa.getWebView());
      paramqa.a(true);
      return;
    }
    throw new zzd.zza("Could not get the parent of the WebView for an overlay.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */