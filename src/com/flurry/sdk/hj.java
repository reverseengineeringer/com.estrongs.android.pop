package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;

public class hj
{
  private he a;
  private WeakReference<Context> b = new WeakReference(null);
  private cj c;
  private hj.a d;
  private final String e = hj.class.getSimpleName();
  
  private void a(Context paramContext)
  {
    kg.a(3, e, "setting mContext");
    b = new WeakReference(paramContext);
  }
  
  private void a(hj.a parama)
  {
    hj.a locala = parama;
    if (parama == null) {}
    try
    {
      locala = hj.a.a;
      kg.a(3, e, "Setting FlurryWebViewState from " + d + " to " + locala + " for mContext: " + b);
      d = locala;
      return;
    }
    finally {}
  }
  
  public void a()
  {
    kg.a(3, e, "clearing webviews");
    d = null;
    b = new WeakReference(null);
    a = null;
  }
  
  public void a(Context paramContext, s params, cj paramcj)
  {
    if (paramContext == null) {}
    do
    {
      return;
      a(paramContext);
    } while (paramcj == null);
    c = paramcj;
  }
  
  public void b()
  {
    a.loadUrl("javascript:var closeButtonDiv =  document.getElementById('flurry_interstitial_close');if (typeof(closeButtonDiv) == 'undefined' || closeButtonDiv == null){var newdiv = document.createElement('div');var divIdName = 'flurry_interstitial_close';newdiv.setAttribute('id',divIdName);newdiv.innerHTML = '<a href=\"flurry://flurrycall?event=adWillClose\"><div id=\"rtb_close\"><img src=\"http://cdn.flurry.com/adSpaceStyles.dev/images/bttn-close-bw.png\" alt=\"close advertisement\" /></div></a></div>';document.body.appendChild(newdiv);}");
  }
  
  public he c()
  {
    if ((a == null) || (hj.a.a.equals(d))) {
      if (b != null)
      {
        a = new he((Context)b.get(), c);
        a(hj.a.b);
      }
    }
    for (;;)
    {
      return a;
      kg.a(3, e, "mContext is null");
      return null;
      if ((a == null) || (hj.a.a.equals(d))) {
        break;
      }
      kg.a(3, e, "fWebView is not null");
    }
    kg.a(3, e, "fWebView is null");
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */