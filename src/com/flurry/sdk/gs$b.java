package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class gs$b
  extends WebViewClient
{
  private gs$b(gs paramgs) {}
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    kg.a(3, gs.c(a), "onLoadResource: url = " + paramString);
    super.onLoadResource(paramWebView, paramString);
    if ((paramString == null) || (paramWebView == null) || (paramWebView != gs.e(a))) {}
    do
    {
      do
      {
        do
        {
          return;
          if (!paramString.equalsIgnoreCase(gs.e(a).getUrl())) {
            gs.f(a);
          }
        } while ((gs.g(a)) || (Uri.parse(paramString).getLastPathSegment() == null));
        if (!gs.h(a)) {
          break;
        }
        gs.a(a, true);
        gs.i(a).c().c();
      } while (!gs.j(a));
      gs.i(a).c().f();
      return;
    } while ((!gs.j(a)) || (!gs.k(a)) || (gs.l(a) != 2) || (gs.m(a)));
    gs.i(a).b();
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    kg.a(3, gs.c(a), "onPageFinished: url = " + paramString + " adcontroller index: " + a.getAdController().c());
    if ((paramString == null) || (paramWebView == null) || (paramWebView != gs.e(a))) {}
    do
    {
      do
      {
        do
        {
          return;
          gs.f(a);
          gs.o(a);
          a.dismissProgressDialog();
          if ((!a.a(gs.e(a))) && ((gs.l(a) == 2) || (gs.l(a) == 1)))
          {
            kg.a(3, gs.c(a), "adding WebView to AdUnityView");
            if ((ViewGroup)paramWebView.getParent() == null)
            {
              a.addView(gs.e(a));
              gs.i(a).c().f();
            }
          }
          gs.b(a, true);
          if (!gs.h(a)) {
            break;
          }
        } while (!gs.g(a));
        gs.i(a).c().f();
        return;
      } while (!gs.g(a));
      paramWebView = b.a("mraidAdNotSupported");
      gs.i(a).c().a(paramWebView);
      paramString = new HashMap();
      a.a(paramWebView, paramString, a.getAdController(), 0);
    } while ((!gs.k(a)) || (gs.l(a) != 2) || (gs.m(a)));
    gs.i(a).b();
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    kg.a(3, gs.c(a), "onPageStarted: url = " + paramString);
    if ((paramString == null) || (paramWebView == null) || (paramWebView != gs.e(a))) {
      return;
    }
    gs.n(a);
    gs.i(a).c().d();
    gs.b(a, false);
    gs.a(a, false);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    kg.a(3, gs.c(a), "onReceivedError: url = " + paramString2);
    a.dismissProgressDialog();
    paramWebView = Uri.parse(paramString2);
    if ("market".equals(paramWebView.getScheme()))
    {
      paramString1 = new Intent("android.intent.action.VIEW");
      paramString1.setData(paramWebView);
      a.getContext().startActivity(paramString1);
      gs.a(a);
      return;
    }
    paramWebView = new HashMap();
    paramWebView.put("errorCode", Integer.toString(ba.p.a()));
    paramWebView.put("webViewErrorCode", Integer.toString(paramInt));
    paramWebView.put("failingUrl", paramString2);
    a.a(bb.g, paramWebView, a.getAdController(), 0);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool1 = true;
    kg.a(3, gs.c(a), "shouldOverrideUrlLoading: url = " + paramString);
    if ((paramString == null) || (paramWebView == null) || (paramWebView != gs.e(a)))
    {
      bool1 = false;
      return bool1;
    }
    paramWebView = ma.c(gs.e(a).getUrl());
    if ((!TextUtils.isEmpty(paramWebView)) && (paramString.startsWith(paramWebView)))
    {
      paramWebView = paramString.substring(paramWebView.length());
      Uri localUri = Uri.parse(paramWebView);
      if ((localUri.isHierarchical()) && (!TextUtils.isEmpty(localUri.getScheme())) && (!TextUtils.isEmpty(localUri.getAuthority()))) {
        kg.a(3, gs.c(a), "shouldOverrideUrlLoading: target url = " + paramWebView);
      }
    }
    for (;;)
    {
      paramString = Uri.parse(paramWebView);
      kg.a(3, gs.c(a), "shouldOverrideUrlLoading: getScheme = " + paramString.getScheme());
      if ("flurry".equals(paramString.getScheme()))
      {
        paramWebView = paramString.getQueryParameter("event");
        kg.a(3, gs.c(a), "event is " + paramWebView);
        if (TextUtils.isEmpty(paramWebView)) {
          break;
        }
        paramWebView = b.a(paramWebView);
        if (paramWebView.equals(bb.A))
        {
          gs.c(a, true);
          if (gs.k(a))
          {
            gs.p(a);
            gs.q(a);
          }
        }
        gs.i(a).c().b(paramWebView);
        a.a(paramWebView, paramString);
        paramString = lt.h(paramString.getEncodedQuery());
        paramString.put("requiresCallComplete", "true");
        a.a(paramWebView, paramString, a.getAdController(), 0);
        return true;
      }
      a.a(bb.h, Collections.emptyMap(), a.getAdController(), 0);
      if (a.getAdController().l())
      {
        if (!ma.d(paramWebView)) {
          break label606;
        }
        kg.a(3, gs.c(a), "shouldOverrideUrlLoading: isMarketUrl ");
      }
      label606:
      for (bool1 = fi.a(a.getContext(), paramWebView);; bool1 = false)
      {
        boolean bool2 = bool1;
        if (!bool1)
        {
          bool2 = bool1;
          if (ma.f(paramWebView))
          {
            kg.a(3, gs.c(a), "shouldOverrideUrlLoading: isGooglePlayUrl ");
            bool2 = fi.b(a.getContext(), paramWebView);
          }
        }
        if (bool2)
        {
          a.a(bb.S, Collections.emptyMap(), a.getAdController(), 0);
          return true;
        }
        kg.a(3, gs.c(a), "shouldOverrideUrlLoading: loadUrl doGenericLaunch ");
        i.a().o().a(a.getContext(), paramWebView, true, a.getAdObject(), true, gs.r(a));
        return true;
        kg.a(3, gs.c(a), "shouldOverrideUrlLoading: doGenericLaunch ");
        i.a().o().a(a.getContext(), paramWebView, true, a.getAdObject(), true, gs.r(a));
        return true;
      }
      paramWebView = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */