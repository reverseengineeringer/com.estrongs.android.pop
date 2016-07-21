package com.flurry.sdk;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.List;

public class ew
{
  private static final String a = ew.class.getName();
  private ProgressDialog b;
  private WeakReference<Context> c = new WeakReference(null);
  private Bundle d = null;
  private hi e = null;
  private ew.a f = ew.a.a;
  private long g = Long.MIN_VALUE;
  private int h = -1;
  private final kb<ec> i = new ew.6(this);
  private final kb<ln> j = new ew.8(this);
  
  public ew(Context paramContext)
  {
    c = new WeakReference(paramContext);
    a(paramContext);
  }
  
  private et a(Bundle paramBundle)
  {
    return eu.a(paramBundle);
  }
  
  private void a(Context paramContext)
  {
    b = new ProgressDialog(paramContext);
    b.setProgressStyle(0);
    b.setCancelable(true);
    b.setCanceledOnTouchOutside(false);
    b.setOnCancelListener(new ew.7(this));
    d();
  }
  
  private void a(eg parameg)
  {
    dy.a(parameg);
    a(ew.a.f);
    i();
  }
  
  private void a(eg parameg, String paramString)
  {
    Context localContext = (Context)c.get();
    if (localContext == null)
    {
      ec.a(ed.c, h, null);
      return;
    }
    if (f.equals(ew.a.g))
    {
      kg.a(3, a, "Do not show OAuth web view. Activity destroyed.");
      return;
    }
    a(ew.a.d);
    kg.a(3, a, "Starting auth url." + paramString);
    js.a().a(new ew.2(this, localContext, paramString, parameg));
  }
  
  private void a(ew.a parama)
  {
    kg.a(3, a, "Changing state from: " + f + " to: " + parama);
    f = parama;
  }
  
  private void a(List<String> paramList)
  {
    Context localContext = (Context)c.get();
    if (localContext == null)
    {
      ec.a(ed.c, h, null);
      return;
    }
    if (f.equals(ew.a.g))
    {
      kg.a(3, a, "Do not launch post dialog. Activity destroyed.");
      return;
    }
    js.a().a(new ew.5(this, paramList, localContext));
  }
  
  private boolean a(Intent paramIntent)
  {
    boolean bool = false;
    if (paramIntent != null) {
      bool = paramIntent.getBooleanExtra("com.flurry.android.tumblr_post", false);
    }
    return bool;
  }
  
  private void b(eg parameg, String paramString)
  {
    if (f.equals(ew.a.g))
    {
      kg.a(3, a, "Do not show fetch access token. Activity destroyed.");
      return;
    }
    a(ew.a.e);
    j();
    ep.a(parameg, paramString, new ew.3(this));
  }
  
  private boolean b(Intent paramIntent)
  {
    if ((paramIntent != null) && (paramIntent.getExtras() != null))
    {
      d = paramIntent.getExtras();
      return true;
    }
    return false;
  }
  
  private void g()
  {
    a(ew.a.b);
    j();
    l();
    kc.a().a("com.flurry.android.impl.analytics.tumblr.TumblrEvents", i);
    if (dy.b().c())
    {
      h();
      return;
    }
    a(ew.a.f);
    i();
  }
  
  private void h()
  {
    a(ew.a.c);
    ep.a(new ew.1(this));
  }
  
  private void i()
  {
    if (f.equals(ew.a.g))
    {
      kg.a(3, a, "Do not get user info. Activity destroyed.");
      return;
    }
    ep.a(new ew.4(this));
  }
  
  private void j()
  {
    b.show();
  }
  
  private void k()
  {
    e();
    if (b.isShowing()) {
      b.dismiss();
    }
  }
  
  private void l()
  {
    if (d != null) {
      h = d.getInt("com.flurry.android.post_id", -1);
    }
  }
  
  public void a()
  {
    a(ew.a.g);
  }
  
  public void a(hi paramhi, Intent paramIntent)
  {
    if ((paramIntent == null) || (paramhi == null) || (!a(paramIntent)) || (!b(paramIntent)))
    {
      kg.a(5, a, "Invalid intent.");
      ec.a(ed.a, h, null);
      return;
    }
    e = paramhi;
    g();
  }
  
  public boolean b()
  {
    a(ew.a.g);
    e.a();
    return true;
  }
  
  public void c()
  {
    kg.a(3, a, "Authentication Error. Lets reset the access token.");
    if ((f.equals(ew.a.b)) || (f.equals(ew.a.f)))
    {
      dy.a();
      h();
      return;
    }
    ec.a(ed.h, h, null);
  }
  
  public void d()
  {
    g = System.currentTimeMillis();
    lo.a().a(j);
  }
  
  public void e()
  {
    g = Long.MIN_VALUE;
    lo.a().b(j);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */