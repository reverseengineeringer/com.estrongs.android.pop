package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.j;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.n;
import com.google.android.gms.ads.internal.overlay.p;
import com.google.android.gms.ads.internal.overlay.w;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

@me
public class qb
  extends WebViewClient
{
  private static final String[] b = { "UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS" };
  private static final String[] c = { "NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID" };
  protected final qa a;
  private final HashMap<String, List<fq>> d = new HashMap();
  private final Object e = new Object();
  private a f;
  private p g;
  private qd h;
  private fd i;
  private qe j;
  private boolean k = false;
  private fy l;
  private ga m;
  private boolean n;
  private boolean o;
  private w p;
  private final jq q;
  private j r;
  private jg s;
  private js t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private int y;
  
  public qb(qa paramqa, boolean paramBoolean)
  {
    this(paramqa, paramBoolean, new jq(paramqa, paramqa.d(), new cn(paramqa.getContext())), null);
  }
  
  qb(qa paramqa, boolean paramBoolean, jq paramjq, jg paramjg)
  {
    a = paramqa;
    n = paramBoolean;
    q = paramjq;
    s = paramjg;
  }
  
  private String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    paramString = Uri.parse(paramString);
    if (paramString.getHost() != null) {
      return paramString.getHost();
    }
    return "";
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (!((Boolean)cz.af.c()).booleanValue()) {
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("err", paramString1);
    localBundle.putString("code", paramString2);
    localBundle.putString("host", a(paramString3));
    ae.e().a(paramContext, a.l().c, "gmob-apps", localBundle, true);
  }
  
  private static boolean b(Uri paramUri)
  {
    paramUri = paramUri.getScheme();
    return ("http".equalsIgnoreCase(paramUri)) || ("https".equalsIgnoreCase(paramUri));
  }
  
  private void g()
  {
    synchronized (e)
    {
      o = true;
      y += 1;
      e();
      return;
    }
  }
  
  private void h()
  {
    y -= 1;
    e();
  }
  
  private void i()
  {
    x = true;
    e();
  }
  
  public j a()
  {
    return r;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (s != null) {
      s.c(paramInt1, paramInt2);
    }
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    q.a(paramInt1, paramInt2);
    if (s != null) {
      s.a(paramInt1, paramInt2, paramBoolean);
    }
  }
  
  public void a(Uri paramUri)
  {
    Object localObject2 = paramUri.getPath();
    Object localObject1 = (List)d.get(localObject2);
    if (localObject1 != null)
    {
      paramUri = ae.e().a(paramUri);
      if (b.a(2))
      {
        b.d("Received GMSG: " + (String)localObject2);
        localObject2 = paramUri.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          b.d("  " + str + ": " + (String)paramUri.get(str));
        }
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((fq)((Iterator)localObject1).next()).a(a, paramUri);
      }
    }
    b.d("No GMSG handler found for GMSG: " + paramUri);
  }
  
  public void a(a parama, p paramp, fd paramfd, w paramw, boolean paramBoolean, fy paramfy, ga paramga, j paramj, js paramjs)
  {
    j localj = paramj;
    if (paramj == null) {
      localj = new j(false);
    }
    s = new jg(a, paramjs);
    a("/appEvent", new fc(paramfd));
    a("/backButton", ff.j);
    a("/canOpenURLs", ff.b);
    a("/canOpenIntents", ff.c);
    a("/click", ff.d);
    a("/close", ff.e);
    a("/customClose", ff.f);
    a("/delayPageLoaded", new qg(this, null));
    a("/httpTrack", ff.g);
    a("/log", ff.h);
    a("/mraid", new gc(localj, s));
    a("/mraidLoaded", q);
    a("/open", new gd(paramfy, localj, s));
    a("/precache", ff.l);
    a("/touch", ff.i);
    a("/video", ff.k);
    if (paramga != null) {
      a("/setInterstitialProperties", new fz(paramga));
    }
    f = parama;
    g = paramp;
    i = paramfd;
    l = paramfy;
    p = paramw;
    r = localj;
    t = paramjs;
    m = paramga;
    a(paramBoolean);
    u = false;
  }
  
  public final void a(AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel)
  {
    p localp = null;
    boolean bool = a.m();
    a locala;
    if ((bool) && (!a.h().f))
    {
      locala = null;
      if (!bool) {
        break label75;
      }
    }
    for (;;)
    {
      a(new AdOverlayInfoParcel(paramAdLauncherIntentInfoParcel, locala, localp, p, a.l()));
      return;
      locala = f;
      break;
      label75:
      localp = g;
    }
  }
  
  public void a(AdOverlayInfoParcel paramAdOverlayInfoParcel)
  {
    boolean bool2 = false;
    if (s != null) {}
    for (boolean bool1 = s.b();; bool1 = false)
    {
      n localn = ae.c();
      Context localContext = a.getContext();
      if (!bool1) {
        bool2 = true;
      }
      localn.a(localContext, paramAdOverlayInfoParcel, bool2);
      return;
    }
  }
  
  public void a(qd paramqd)
  {
    h = paramqd;
  }
  
  public void a(qe paramqe)
  {
    j = paramqe;
  }
  
  public final void a(String paramString, fq paramfq)
  {
    synchronized (e)
    {
      List localList = (List)d.get(paramString);
      Object localObject1 = localList;
      if (localList == null)
      {
        localObject1 = new CopyOnWriteArrayList();
        d.put(paramString, localObject1);
      }
      ((List)localObject1).add(paramfq);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public final void a(boolean paramBoolean, int paramInt)
  {
    if ((a.m()) && (!a.h().f)) {}
    for (a locala = null;; locala = f)
    {
      a(new AdOverlayInfoParcel(locala, g, p, a, paramBoolean, paramInt, a.l()));
      return;
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString)
  {
    Object localObject = null;
    boolean bool = a.m();
    a locala;
    if ((bool) && (!a.h().f))
    {
      locala = null;
      if (!bool) {
        break label95;
      }
    }
    for (;;)
    {
      a(new AdOverlayInfoParcel(locala, (p)localObject, i, p, a, paramBoolean, paramInt, paramString, a.l(), l));
      return;
      locala = f;
      break;
      label95:
      localObject = new qf(a, g);
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString1, String paramString2)
  {
    boolean bool = a.m();
    a locala;
    if ((bool) && (!a.h().f))
    {
      locala = null;
      if (!bool) {
        break label97;
      }
    }
    label97:
    for (Object localObject = null;; localObject = new qf(a, g))
    {
      a(new AdOverlayInfoParcel(locala, (p)localObject, i, p, a, paramBoolean, paramInt, paramString1, paramString2, a.l(), l));
      return;
      locala = f;
      break;
    }
  }
  
  public final void b(String paramString, fq paramfq)
  {
    synchronized (e)
    {
      paramString = (List)d.get(paramString);
      if (paramString == null) {
        return;
      }
      paramString.remove(paramfq);
      return;
    }
  }
  
  public boolean b()
  {
    synchronized (e)
    {
      boolean bool = n;
      return bool;
    }
  }
  
  public boolean c()
  {
    synchronized (e)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public void d()
  {
    synchronized (e)
    {
      b.d("Loading blank page in WebView, 2...");
      v = true;
      a.a("about:blank");
      return;
    }
  }
  
  public final void e()
  {
    qd localqd;
    qa localqa;
    if ((h != null) && (((w) && (y <= 0)) || (x)))
    {
      localqd = h;
      localqa = a;
      if (x) {
        break label61;
      }
    }
    label61:
    for (boolean bool = true;; bool = false)
    {
      localqd.a(localqa, bool);
      h = null;
      return;
    }
  }
  
  public final void f()
  {
    synchronized (e)
    {
      d.clear();
      f = null;
      g = null;
      h = null;
      i = null;
      k = false;
      n = false;
      o = false;
      l = null;
      p = null;
      j = null;
      if (s != null)
      {
        s.a(true);
        s = null;
      }
      u = false;
      return;
    }
  }
  
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    b.d("Loading resource: " + paramString);
    paramWebView = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(paramWebView.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(paramWebView.getHost()))) {
      a(paramWebView);
    }
  }
  
  public final void onPageFinished(WebView arg1, String paramString)
  {
    synchronized (e)
    {
      if ((v) && ("about:blank".equals(paramString)))
      {
        b.d("Blank page loaded, 1...");
        a.o();
        return;
      }
      w = true;
      e();
      return;
    }
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if ((paramInt < 0) && (-paramInt - 1 < b.length)) {}
    for (String str = b[(-paramInt - 1)];; str = String.valueOf(paramInt))
    {
      a(a.getContext(), "http_err", str, paramString2);
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      return;
    }
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    int i1;
    if (paramSslError != null)
    {
      i1 = paramSslError.getPrimaryError();
      if ((i1 < 0) || (i1 >= c.length)) {
        break label65;
      }
    }
    label65:
    for (String str = c[i1];; str = String.valueOf(i1))
    {
      a(a.getContext(), "ssl_err", str, ae.g().a(paramSslError));
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      return;
    }
  }
  
  public boolean shouldOverrideKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    switch (paramKeyEvent.getKeyCode())
    {
    default: 
      return false;
    }
    return true;
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    b.d("AdWebView shouldOverrideUrlLoading: " + paramString);
    Uri localUri = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(localUri.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(localUri.getHost()))) {
      a(localUri);
    }
    for (;;)
    {
      return true;
      if ((k) && (paramWebView == a) && (b(localUri)))
      {
        if (!u)
        {
          u = true;
          if ((f != null) && (((Boolean)cz.T.c()).booleanValue())) {
            f.a();
          }
        }
        return super.shouldOverrideUrlLoading(paramWebView, paramString);
      }
      if (!a.willNotDraw())
      {
        try
        {
          aj localaj = a.k();
          paramWebView = localUri;
          if (localaj != null)
          {
            paramWebView = localUri;
            if (localaj.b(localUri)) {
              paramWebView = localaj.a(localUri, a.getContext());
            }
          }
        }
        catch (zzao paramWebView)
        {
          for (;;)
          {
            b.e("Unable to append parameter to URL: " + paramString);
            paramWebView = localUri;
          }
          r.a(paramString);
        }
        if ((r == null) || (r.b())) {
          a(new AdLauncherIntentInfoParcel("android.intent.action.VIEW", paramWebView.toString(), null, null, null, null, null));
        }
      }
      else
      {
        b.e("AdWebView unable to handle URL: " + paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */