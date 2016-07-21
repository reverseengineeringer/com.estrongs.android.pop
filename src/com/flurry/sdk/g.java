package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class g
{
  private static final String b = g.class.getSimpleName();
  fb a = new fb();
  private boolean c;
  
  private void a(Context paramContext, s params)
  {
    au localau = params.l();
    if (localau.l())
    {
      gr localgr = new gr();
      fa.a(bb.S, Collections.emptyMap(), paramContext, params, localau, 0);
      e = gr.a.b;
      localgr.b();
      return;
    }
    fa.a(bb.S, Collections.emptyMap(), paramContext, params, localau, 0);
  }
  
  private void a(s params, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    gr localgr = new gr();
    e = gr.a.a;
    a = params;
    b = paramString;
    c = paramBoolean1;
    d = paramBoolean2;
    localgr.b();
  }
  
  private void f(a parama, int paramInt)
  {
    kg.a(3, b, "notify user");
    gu localgu = new gu();
    b = parama;
    c = paramInt;
    a = gu.a.a;
    localgu.b();
  }
  
  private void g(a parama, int paramInt)
  {
    s locals = parama.c().b();
    au localau = parama.c().c();
    boolean bool = o(parama);
    kg.a(3, b, "goToFrame: triggering event = " + parama.c().a());
    Object localObject;
    bc localbc;
    if ((paramInt != localau.c()) && (paramInt < ad.size()))
    {
      kg.a(3, b, "goToFrame: currentIndex = " + localau.c() + " and go to index: " + paramInt);
      localObject = (cj)ad.get(paramInt);
      localbc = localau.k();
      localObject = d.d;
      if (((String)localObject).equalsIgnoreCase(localbc.toString())) {
        break label246;
      }
      kg.a(3, b, "goToFrame: Moving now from " + localbc.toString() + " to format " + (String)localObject);
      if (((String)localObject).equalsIgnoreCase(bc.b.toString()))
      {
        localau.a(paramInt);
        fi.a(parama.c().a(), locals, true, bool);
      }
    }
    return;
    label246:
    kg.a(3, b, "goToFrame: Already a takeover Ad, just move to next frame. " + localbc.toString() + " to format " + (String)localObject);
    localau.a(paramInt);
    a(locals, null, true, bool);
  }
  
  private void i(a parama)
  {
    Object localObject = (String)cb.get("requiresCallComplete");
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (((String)localObject).equals("true")))
    {
      kg.a(3, b, "Fire call complete");
      localObject = new gu();
      b = parama;
      a = gu.a.e;
      ((gu)localObject).b();
    }
  }
  
  private void j(a parama)
  {
    boolean bool2 = true;
    Context localContext = parama.c().a();
    s locals = parama.c().b();
    au localau = parama.c().c();
    boolean bool3 = o(parama);
    String str = parama.a("url");
    if (!TextUtils.isEmpty(str))
    {
      if (ma.d(str))
      {
        fi.a(localContext, str);
        return;
      }
      boolean bool4 = "true".equals(parama.a("native"));
      if (!"true".equals(parama.a("is_privacy"))) {}
      for (boolean bool1 = true; bool4; bool1 = false)
      {
        kg.a(2, b, "Explictly instructed to use native browser");
        fi.a(localContext, a.a(parama, str), bool3);
        return;
      }
      localau.a(true);
      if (localau.r())
      {
        a(locals, str, bool1, bool3);
        return;
      }
      if (!bool4) {}
      for (;;)
      {
        a(localContext, str, bool2, locals, bool1, bool3);
        return;
        bool2 = false;
      }
    }
    kg.a(6, b, "failed to perform directOpen action: no url in " + ca);
  }
  
  private void k(a parama)
  {
    Context localContext = parama.c().a();
    s locals = parama.c().b();
    au localau = parama.c().c();
    boolean bool2 = o(parama);
    String str = parama.a("url");
    if (!TextUtils.isEmpty(str))
    {
      if (ma.d(str))
      {
        fi.a(localContext, str);
        return;
      }
      boolean bool3 = "true".equals(parama.a("native"));
      if (!"true".equals(parama.a("is_privacy"))) {}
      for (boolean bool1 = true; bool3; bool1 = false)
      {
        kg.a(2, b, "Explictly instructed to use native browser");
        fi.a(localContext, a.a(parama, str), bool2);
        return;
      }
      localau.a(true);
      if (localau.r())
      {
        a(locals, str, bool1, bool2);
        return;
      }
      fi.a(localContext, locals, str, bool1, bool2);
      return;
    }
    kg.a(6, b, "failed to perform directOpen action: no url in " + ca);
  }
  
  private void l(a parama)
  {
    kg.a(3, b, "closing ad");
    gu localgu = new gu();
    b = parama;
    c = 0;
    a = gu.a.d;
    localgu.b();
  }
  
  private void m(a parama)
  {
    kg.a(3, b, "expanding ad");
    gu localgu = new gu();
    b = parama;
    c = 0;
    a = gu.a.c;
    localgu.b();
  }
  
  private void n(a parama)
  {
    kg.a(3, b, "closing ad");
    gu localgu = new gu();
    b = parama;
    c = 0;
    a = gu.a.b;
    localgu.b();
  }
  
  private boolean o(a parama)
  {
    boolean bool = false;
    parama = parama.a("sendYCookies");
    if (!TextUtils.isEmpty(parama)) {}
    try
    {
      bool = Boolean.parseBoolean(parama);
      return bool;
    }
    catch (Exception localException)
    {
      kg.a(6, b, "caught Exception with sendYCookies parameter in onProcessRedirect:" + parama);
    }
    return false;
  }
  
  public void a()
  {
    c = b(null);
  }
  
  public void a(Context paramContext, String paramString, boolean paramBoolean, s params)
  {
    if (paramContext == null)
    {
      kg.a(5, b, "Cannot process redirect, null context");
      return;
    }
    a(paramContext, paramString, paramBoolean, params, false, false);
  }
  
  public void a(Context paramContext, String paramString, boolean paramBoolean1, s params, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramContext == null)
    {
      kg.a(5, b, "Unable to launch url, null context");
      return;
    }
    js.a().b(new g.1(this, paramString, paramContext, paramBoolean2, params, paramBoolean3, paramBoolean1));
  }
  
  void a(a parama)
  {
    boolean bool2 = true;
    Context localContext = parama.c().a();
    s locals = parama.c().b();
    au localau = parama.c().c();
    boolean bool3 = o(parama);
    String str = parama.a("url");
    if (!TextUtils.isEmpty(str))
    {
      if (ma.d(str))
      {
        fi.a(localContext, str);
        return;
      }
      boolean bool4 = "true".equals(parama.a("native"));
      if (!"true".equals(parama.a("is_privacy"))) {}
      for (boolean bool1 = true; bool4; bool1 = false)
      {
        kg.a(2, b, "Explictly instructed to use native browser");
        fi.a(localContext, a.a(parama, str), bool3);
        return;
      }
      parama = a.a(parama, str);
      if (localau.r())
      {
        a(locals, parama, bool1, bool3);
        return;
      }
      if (!bool4) {}
      for (;;)
      {
        a(localContext, parama, bool2, locals, bool1, bool3);
        return;
        bool2 = false;
      }
    }
    kg.a(6, b, "failed to perform directOpen action: no url in " + ca);
  }
  
  public void a(a parama, int paramInt)
  {
    bb localbb = null;
    if (parama.c() != null) {
      localbb = ca;
    }
    kg.a(3, b, "performAction:action=" + parama.toString());
    if (paramInt > 10)
    {
      kg.a(5, b, "Maximum depth for event/action loop exceeded when performing action:" + parama.toString());
      return;
    }
    switch (g.2.a[parama.a().ordinal()])
    {
    default: 
      kg.a(5, b, "Unknown action:" + parama.a() + ",triggered by:" + localbb);
    }
    for (;;)
    {
      i(parama);
      return;
      a(parama);
      continue;
      k(parama);
      continue;
      j(parama);
      continue;
      b(parama);
      continue;
      c(parama);
      continue;
      b(parama, paramInt);
      continue;
      c(parama, paramInt);
      continue;
      d(parama);
      continue;
      e(parama);
      continue;
      b();
      continue;
      f(parama);
      continue;
      g(parama);
      continue;
      d(parama, paramInt);
      continue;
      e(parama, paramInt);
      continue;
      h(parama);
      continue;
      n(parama);
      continue;
      f(parama, paramInt);
      continue;
      m(parama);
      continue;
      l(parama);
    }
  }
  
  boolean a(String paramString)
  {
    paramString = js.a().e().getLaunchIntentForPackage(paramString);
    return (paramString != null) && (lt.a(paramString));
  }
  
  boolean a(String paramString1, String paramString2)
  {
    paramString2 = new Intent(paramString2);
    paramString2.setData(Uri.parse(paramString1));
    return lt.a(paramString2);
  }
  
  void b()
  {
    i.a().r();
  }
  
  void b(a parama)
  {
    s locals = parama.c().b();
    parama = parama.a("groupId");
    if (!TextUtils.isEmpty(parama)) {
      locals.a(parama);
    }
  }
  
  void b(a parama, int paramInt)
  {
    Context localContext = parama.c().a();
    s locals = parama.c().b();
    au localau = parama.c().c();
    parama = parama.a("url");
    if (!TextUtils.isEmpty(parama)) {
      if (!a(parama)) {
        break label79;
      }
    }
    label79:
    for (parama = bb.n;; parama = bb.o)
    {
      f.a().a(parama.a(), 1);
      fa.a(parama, Collections.emptyMap(), localContext, locals, localau, paramInt + 1);
      return;
    }
  }
  
  boolean b(String paramString)
  {
    String str2 = js.a().c().getPackageName();
    String str1 = paramString;
    if (paramString == null) {
      str1 = "market://details?id=" + str2;
    }
    return a(str1, "android.intent.action.VIEW");
  }
  
  void c(a parama)
  {
    Context localContext = parama.c().a();
    s locals = parama.c().b();
    String str1 = parama.a("url");
    String str2;
    if (!TextUtils.isEmpty(str1))
    {
      str2 = parama.a("sendYCookies");
      if (TextUtils.isEmpty(str2)) {
        break label159;
      }
    }
    for (;;)
    {
      try
      {
        boolean bool1 = Boolean.parseBoolean(str2);
        str2 = parama.a("native");
        if (TextUtils.isEmpty(str2)) {
          break label195;
        }
        bool1 = false;
      }
      catch (Exception localException1)
      {
        try
        {
          bool2 = Boolean.parseBoolean(str2);
          if (!TextUtils.isEmpty(str1))
          {
            parama = ma.a(a.a(parama, str1));
            if (!TextUtils.isEmpty(parama))
            {
              if (bool2) {
                break label200;
              }
              bool2 = true;
              a(localContext, parama, bool2, locals, true, bool1);
            }
          }
          return;
        }
        catch (Exception localException2)
        {
          kg.a(6, b, "caught Exception with useNative parameter in onProcessRedirect:" + str2);
        }
        localException1 = localException1;
        kg.a(6, b, "caught Exception with sendYCookies parameter in onProcessRedirect:" + str2);
      }
      label159:
      continue;
      label195:
      boolean bool2 = false;
      continue;
      label200:
      bool2 = false;
    }
  }
  
  void c(a parama, int paramInt)
  {
    Context localContext = parama.c().a();
    s locals = parama.c().b();
    au localau = parama.c().c();
    String str = parama.a("url");
    if (!TextUtils.isEmpty(str)) {
      if (!a(str)) {
        break label168;
      }
    }
    label168:
    for (bb localbb = bb.p;; localbb = bb.q)
    {
      f.a().a(localbb.a(), 1);
      HashMap localHashMap = new HashMap();
      if (ca.equals(bb.d)) {
        localHashMap.put("origin", bb.d.a());
      }
      kg.a(3, "VerifyPackageLog", "onVerifyPackage() called for pkg: " + str + " packageInstalled: " + a(str));
      fa.a(localbb, localHashMap, localContext, locals, localau, paramInt + 1);
      return;
    }
  }
  
  void d(a parama)
  {
    Context localContext = parama.c().a();
    boolean bool = o(parama);
    String str = parama.a("package");
    if (!TextUtils.isEmpty(str)) {
      fi.a(localContext, str, parama.c().b(), bool);
    }
  }
  
  void d(a parama, int paramInt)
  {
    int j = 0;
    s locals = parama.c().b();
    if (((ca.equals(bb.p)) || (ca.equals(bb.q))) && (cb.containsValue(bb.d.a()))) {}
    for (boolean bool = false;; bool = true)
    {
      int i = j;
      if ((locals instanceof v))
      {
        i = j;
        if (((v)locals).k()) {
          i = 1;
        }
      }
      if (((locals instanceof r)) || (i != 0))
      {
        if (paramInt > 10)
        {
          kg.a(5, b, "Maximum depth for event/action loop exceeded when performing action:" + parama.toString());
          return;
        }
        String str = parama.a("delay");
        long l2 = 30L;
        long l1 = l2;
        if (!TextUtils.isEmpty(str)) {}
        try
        {
          l1 = Long.parseLong(str);
          locals.a(parama.c().c(), l1 * 1000L, true);
          return;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            kg.a(6, b, "caught Exception with delay parameter in nextAdUnit:" + str);
            l1 = l2;
          }
        }
      }
      locals.a(parama.c().c(), 0L, bool);
      return;
    }
  }
  
  void e(a parama)
  {
    localObject2 = parama.a("url");
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      l2 = 60000L + System.currentTimeMillis();
      localObject1 = parama.a("expirationTimeEpochSeconds");
      l1 = l2;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {}
    }
    try
    {
      l1 = Long.parseLong((String)localObject1);
      l1 = 1000L * l1;
    }
    catch (Exception localException1)
    {
      try
      {
        i = Integer.parseInt((String)localObject1);
        bool2 = false;
        localObject1 = parama.a("sendYCookies");
        bool1 = bool2;
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          break label119;
        }
      }
      catch (Exception localException1)
      {
        try
        {
          int j;
          for (;;)
          {
            bool1 = Boolean.parseBoolean((String)localObject1);
            s locals = parama.c().b();
            localObject1 = localObject2;
            if (ca.equals(bb.i))
            {
              localObject1 = localObject2;
              if (cb != null)
              {
                Map localMap = cb;
                localObject1 = localObject2;
                if (localMap.containsKey(fg.c)) {
                  localObject1 = ((String)localObject2).replace(fg.h, (CharSequence)localMap.get(fg.c));
                }
                localObject2 = localObject1;
                if (localMap.containsKey(fg.a)) {
                  localObject2 = ((String)localObject1).replace(fg.f, (CharSequence)localMap.get(fg.a));
                }
                Log.e(b, "sendUrlAsync: New Url: " + (String)localObject2 + " adObj: " + locals);
                localObject1 = localObject2;
              }
            }
            if ((ca.equals(bb.i)) || (ca.equals(bb.L)) || (ca.equals(bb.H)) || (ca.equals(bb.I)) || (ca.equals(bb.j))) {
              kg.a(5, b, "BeaconTest: event name: " + ca.a() + " beacon Url: " + (String)localObject1 + " adObj: " + locals);
            }
            parama = new dj(ca.a(), cdf, a.a(parama, (String)localObject1), l1, bool1, i);
            i.a().i().b(parama);
            return;
            localException2 = localException2;
            kg.a(6, b, "caught Exception with expirationTime parameter in onSendUrlAsync:" + (String)localObject1);
            l1 = l2;
          }
          localException1 = localException1;
          kg.a(6, b, "caught Exception with maxRetries parameter in onSendUrlAsync:" + 2);
          int i = j;
        }
        catch (Exception localException3)
        {
          for (;;)
          {
            boolean bool2;
            kg.a(6, b, "caught Exception with sendYCookies parameter in onSendUrlAsync:" + localException1);
            boolean bool1 = bool2;
          }
        }
      }
    }
    j = 2;
    localObject1 = parama.a("maxRetries");
    i = j;
    if (TextUtils.isEmpty((CharSequence)localObject1)) {}
  }
  
  void e(a parama, int paramInt)
  {
    Context localContext = parama.c().a();
    String str = parama.a("idHash");
    Object localObject3;
    Object localObject2;
    if (!TextUtils.isEmpty(str))
    {
      bf localbf = i.a().k();
      Iterator localIterator = localbf.a(str).iterator();
      if (localIterator.hasNext())
      {
        localObject3 = (be)localIterator.next();
        localObject2 = bb.F;
        localObject1 = localObject3;
        if (localObject3 != null)
        {
          localObject1 = localObject3;
          if (localbf.a(((be)localObject3).e()))
          {
            kg.a(4, b, "Discarding expired frequency cap info for id=" + str);
            localbf.a(((be)localObject3).b(), str);
            localObject1 = null;
          }
        }
        if ((localObject1 == null) || (((be)localObject1).j() < ((be)localObject1).g())) {
          break label237;
        }
        kg.a(4, b, "Frequency cap exhausted for id=" + str);
      }
    }
    label237:
    for (Object localObject1 = bb.E;; localObject1 = localObject2)
    {
      f.a().a(((bb)localObject1).a(), 1);
      localObject2 = parama.c().b();
      localObject3 = parama.c().c();
      fa.a((bb)localObject1, Collections.emptyMap(), localContext, (s)localObject2, (au)localObject3, paramInt + 1);
      break;
      return;
    }
  }
  
  void f(a parama)
  {
    if ((parama.b().containsKey("__sendToServer")) && (parama.a("__sendToServer").equals("true"))) {}
    for (boolean bool = true;; bool = false)
    {
      parama.b("__sendToServer");
      String str = parama.c().c().e();
      bb localbb = ca;
      Map localMap = parama.b();
      au localau = parama.c().c();
      parama = ca.a();
      if (!localau.c(parama)) {
        break;
      }
      kg.a(3, b, "onLogEvent(" + str + ", " + localbb + ", " + bool + ", " + localMap + ")");
      i.a().a(str, localbb, bool, localMap);
      localau.d(parama);
      return;
    }
    kg.a(3, b, "Event already logged for " + parama);
  }
  
  void g(a parama)
  {
    au localau = parama.c().c();
    int j = localau.c() + 1;
    String str = parama.a("offset");
    int i = j;
    if (str != null)
    {
      i = -1;
      switch (str.hashCode())
      {
      }
    }
    for (;;)
    {
      switch (i)
      {
      }
      try
      {
        for (i = Integer.parseInt(str);; i = localau.c() + 1)
        {
          g(parama, i);
          return;
          if (!str.equals("next")) {
            break;
          }
          i = 0;
          break;
          if (!str.equals("current")) {
            break;
          }
          i = 1;
          break;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          kg.a(6, b, "caught: " + localException.getMessage());
          i = j;
        }
      }
    }
  }
  
  void h(a parama)
  {
    Object localObject1 = parama.a("idHash");
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject1 = i.a().k().a((String)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        be localbe = (be)((Iterator)localObject1).next();
        localbe.a();
        kg.a(4, b, "updateViewCount:capType=" + localbe.b() + ",id=" + localbe.c() + ",capRemaining=" + localbe.g() + ",totalCap=" + localbe.h() + ",views=" + localbe.j());
        if (localbe.j() >= localbe.g())
        {
          Object localObject2 = ceb;
          if (localbe.j() > localbe.g()) {
            kg.a(6, b, "FlurryAdAction: !! rendering a capped object for id: " + localbe.c() + " for adspace: " + (String)localObject2);
          }
          for (;;)
          {
            localObject2 = new bd();
            a = localbe;
            ((bd)localObject2).b();
            break;
            kg.a(4, b, "FlurryAdAction: hit cap for id: " + localbe.c() + " for adspace: " + (String)localObject2);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */