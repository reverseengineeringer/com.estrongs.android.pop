package com.flurry.sdk;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.util.List;

public class go
  implements gp.a, gp.b, gq.a
{
  private static final String a = go.class.getSimpleName();
  private go.a b;
  private gq c;
  private gp d;
  private RelativeLayout e;
  private int f = -1;
  private boolean g = false;
  
  public go(Context paramContext)
  {
    a(paramContext);
  }
  
  public go(Context paramContext, ge.a parama, List<da> paramList, int paramInt, boolean paramBoolean)
  {
    a(paramContext, parama, paramList, paramInt, paramBoolean);
  }
  
  private void a(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    e = new RelativeLayout(paramContext);
    c = new gq(paramContext, this);
    d = new gl(paramContext, this);
    paramContext = new RelativeLayout.LayoutParams(-1, -1);
    paramContext.addRule(13);
    e.addView(c, paramContext);
    d.setAnchorView(c);
    c.setMediaController(d);
  }
  
  private void a(Context paramContext, ge.a parama, List<da> paramList, int paramInt, boolean paramBoolean)
  {
    if (paramContext == null) {}
    while (parama == null) {
      return;
    }
    e = new RelativeLayout(paramContext);
    c = new gq(paramContext, this);
    if (parama != null)
    {
      if (!parama.equals(ge.a.a)) {
        break label93;
      }
      d = new gn(paramContext, this, paramList, paramInt);
    }
    for (;;)
    {
      paramContext = new RelativeLayout.LayoutParams(-1, -1);
      paramContext.addRule(13);
      e.addView(c, paramContext);
      return;
      label93:
      if (parama.equals(ge.a.b))
      {
        d = new gm(paramContext, this, paramList, paramInt, paramBoolean);
        c.setMediaController(d);
      }
    }
  }
  
  public void a(int paramInt)
  {
    if (c != null)
    {
      c.seekTo(paramInt);
      c.start();
    }
    if ((d != null) && ((d instanceof gl))) {
      d.show();
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    js.a().a(new go.3(this, paramInt1, paramInt2));
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    if ((paramUri != null) && (c != null)) {
      c.a(paramUri, paramInt);
    }
  }
  
  public void a(go.a parama)
  {
    b = parama;
  }
  
  public void a(String paramString)
  {
    if (g) {
      d.show();
    }
    for (;;)
    {
      if (b != null) {
        b.a(paramString);
      }
      if ((d != null) && (c != null)) {
        d.setMediaPlayer(c);
      }
      if ((d != null) && ((d instanceof gl))) {
        d.show();
      }
      return;
      d.hide();
    }
  }
  
  public void a(String paramString, float paramFloat1, float paramFloat2)
  {
    if (b != null) {
      b.a(paramString, paramFloat1, paramFloat2);
    }
    js.a().a(new go.2(this, paramFloat1, paramFloat2));
  }
  
  public void a(String paramString, int paramInt)
  {
    if ((paramString != null) && (c != null)) {
      c.a(paramString, paramInt);
    }
  }
  
  public void a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    if (b != null) {
      b.a(paramString, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramBoolean);
    }
  }
  
  public boolean a()
  {
    if (c != null) {
      return c.f();
    }
    return false;
  }
  
  public gp b()
  {
    return d;
  }
  
  public void b(int paramInt)
  {
    if (c != null) {
      c.a(paramInt);
    }
  }
  
  public void b(String paramString)
  {
    if (b != null) {
      b.b(paramString);
    }
    if (d != null) {
      d.i();
    }
    if (c != null) {}
  }
  
  public void b(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void c()
  {
    if (c != null) {
      c.pause();
    }
  }
  
  public void c(int paramInt)
  {
    js.a().a(new go.1(this, paramInt));
  }
  
  public int d()
  {
    if (c != null) {
      return c.getCurrentPosition();
    }
    return 0;
  }
  
  public void d(int paramInt)
  {
    if (b != null)
    {
      c();
      b.c(paramInt);
    }
  }
  
  public void e()
  {
    if (d != null) {
      d.i();
    }
    if ((c != null) && (c.isPlaying())) {
      c.g();
    }
  }
  
  public void e(int paramInt)
  {
    f = paramInt;
  }
  
  public void f()
  {
    if (c != null) {
      c.a();
    }
  }
  
  public void f(int paramInt)
  {
    if (b != null) {
      b.c(paramInt);
    }
  }
  
  public void g()
  {
    if (c != null) {
      c.b();
    }
  }
  
  public void g(int paramInt)
  {
    if (b != null) {
      b.d(paramInt);
    }
  }
  
  public boolean h()
  {
    if (c != null) {
      return c.c();
    }
    return false;
  }
  
  public void i()
  {
    if (c != null) {}
    try
    {
      c.h();
      c.finalize();
      return;
    }
    catch (Throwable localThrowable)
    {
      kg.b(a, "Error during videoview reset" + localThrowable.getMessage());
    }
  }
  
  public View j()
  {
    return e;
  }
  
  public gq k()
  {
    return c;
  }
  
  public int l()
  {
    if (c != null) {
      return c.getOffsetStartTime();
    }
    return 0;
  }
  
  public boolean m()
  {
    if (c != null) {
      return c.e();
    }
    return false;
  }
  
  public void n()
  {
    if (b != null) {
      b.z();
    }
  }
  
  public int o()
  {
    return f;
  }
  
  public void p()
  {
    f = -1;
  }
  
  public void q()
  {
    if (b != null) {
      b.a();
    }
  }
  
  public void r()
  {
    if (b != null) {
      b.w();
    }
  }
  
  public void s()
  {
    if (b != null) {
      b.b();
    }
  }
  
  public void t()
  {
    d.hide();
    d.c();
    d.b();
    d.requestLayout();
    d.show();
    if (!c.isPlaying()) {
      a(d());
    }
  }
  
  public void u()
  {
    if (c.isPlaying()) {
      c();
    }
    d.hide();
    d.d();
    d.a();
    d.requestLayout();
    d.show();
  }
  
  public void v()
  {
    w();
    if (b != null) {
      b.k();
    }
  }
  
  public void w()
  {
    f();
    d.hide();
    d.e();
    d.h();
    d.requestLayout();
    d.show();
  }
  
  public void x()
  {
    y();
    if (b != null) {
      b.l();
    }
  }
  
  public void y()
  {
    g();
    d.hide();
    d.g();
    d.f();
    d.requestLayout();
    d.show();
  }
  
  public void z()
  {
    if (d != null)
    {
      d.i();
      d = null;
    }
    if (c != null) {
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */