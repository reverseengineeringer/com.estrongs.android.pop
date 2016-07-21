package com.flurry.sdk;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.GestureDetector;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class gc
  extends ge
{
  private static final String c = gc.class.getSimpleName();
  private static int d = lr.b(20);
  private boolean e = false;
  private Bitmap f;
  private FrameLayout g;
  private Button h;
  private Button i;
  private ImageButton j;
  private Context k;
  private fh l;
  private RelativeLayout m;
  private RelativeLayout n;
  private s o;
  private ProgressBar p;
  private GestureDetector q;
  private String r;
  private String s;
  private boolean t = false;
  private boolean u = false;
  
  protected gc(Context paramContext, s params, gt.a parama)
  {
    super(paramContext, params, parama);
    parama = getAdController().m();
    if (b == null)
    {
      b = new go(paramContext, ge.a.b, params.l().i(), params.e(), parama.m());
      b.a(this);
    }
    o = params;
    k = paramContext;
    e = true;
    l = new fh();
    setAutoPlay(e);
    if (!parama.h())
    {
      b.b(true);
      b.b().setVisibility(0);
    }
    for (;;)
    {
      s = d(fg.o);
      G();
      return;
      b.b().hide();
      b.b().setVisibility(8);
    }
  }
  
  private void C()
  {
    u = true;
    g.setVisibility(0);
    m.setVisibility(0);
    n.setVisibility(0);
    h.setVisibility(8);
    b.j().setVisibility(8);
    b.b().setVisibility(8);
    F();
    requestLayout();
  }
  
  private void D()
  {
    p = new ProgressBar(getContext());
    E();
  }
  
  private void E()
  {
    if (p != null) {
      p.setVisibility(0);
    }
  }
  
  private void F()
  {
    if (p != null) {
      p.setVisibility(8);
    }
  }
  
  private void G()
  {
    hc localhc = new hc();
    localhc.x();
    f = localhc.l();
  }
  
  private void H()
  {
    b.b().b();
    b.b().c();
    b.b().requestLayout();
    b.b().show();
  }
  
  private void I()
  {
    b.b().d();
    b.b().a();
    b.b().requestLayout();
    b.b().show();
  }
  
  private void J()
  {
    q = new GestureDetector(k, new gc.6(this));
  }
  
  private void a(FrameLayout paramFrameLayout)
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2, 51);
    m = new RelativeLayout(k);
    m.setVisibility(0);
    m.setPadding(10, 10, 10, 10);
    localLayoutParams.setMargins(10, 10, 10, 10);
    a(m);
    b(m);
    paramFrameLayout.addView(m, localLayoutParams);
  }
  
  @TargetApi(16)
  private void a(RelativeLayout paramRelativeLayout)
  {
    h = new Button(k);
    h.setPadding(5, 5, 5, 5);
    h.setText(s);
    h.setTextColor(-1);
    h.setBackgroundColor(0);
    Object localObject = new GradientDrawable();
    ((GradientDrawable)localObject).setColor(Integer.MIN_VALUE);
    ((GradientDrawable)localObject).setCornerRadius(20.0F);
    ((GradientDrawable)localObject).setStroke(2, -1);
    ((GradientDrawable)localObject).setSize(lr.b(80), lr.b(40));
    if (Build.VERSION.SDK_INT < 16) {
      h.setBackgroundDrawable((Drawable)localObject);
    }
    for (;;)
    {
      h.setOnClickListener(new gc.3(this));
      localObject = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject).setMargins(5, 5, 5, 5);
      ((RelativeLayout.LayoutParams)localObject).addRule(5);
      h.setVisibility(0);
      paramRelativeLayout.addView(h, (ViewGroup.LayoutParams)localObject);
      return;
      h.setBackground((Drawable)localObject);
    }
  }
  
  private void b(FrameLayout paramFrameLayout)
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, 700, 17);
    String str = d(fg.l);
    n = new RelativeLayout(k);
    if (str != null) {
      l.a(n, o.e(), str);
    }
    n.setBackgroundColor(0);
    n.setVisibility(8);
    c(n);
    paramFrameLayout.addView(n, localLayoutParams);
  }
  
  private void b(RelativeLayout paramRelativeLayout)
  {
    j = new ImageButton(k);
    j.setPadding(0, 0, 0, 0);
    j.setBackgroundColor(0);
    j.setImageBitmap(f);
    j.setClickable(true);
    j.setOnClickListener(new gc.4(this));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(0, 0, 15, 0);
    localLayoutParams.addRule(11);
    localLayoutParams.addRule(1, h.getId());
    j.setVisibility(0);
    paramRelativeLayout.addView(j, localLayoutParams);
  }
  
  @TargetApi(16)
  private void c(RelativeLayout paramRelativeLayout)
  {
    i = new Button(k);
    i.setPadding(5, 5, 5, 5);
    i.setBackgroundColor(0);
    i.setText(s);
    i.setTextColor(-1);
    Object localObject = new GradientDrawable();
    ((GradientDrawable)localObject).setColor(Integer.MIN_VALUE);
    ((GradientDrawable)localObject).setCornerRadius(20.0F);
    ((GradientDrawable)localObject).setStroke(2, -1);
    ((GradientDrawable)localObject).setSize(lr.b(90), lr.b(30));
    if (Build.VERSION.SDK_INT < 16) {
      i.setBackgroundDrawable((Drawable)localObject);
    }
    for (;;)
    {
      i.setOnClickListener(new gc.5(this));
      localObject = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject).setMargins(0, 0, 0, 0);
      ((RelativeLayout.LayoutParams)localObject).addRule(13);
      i.setVisibility(0);
      i.setPadding(d, d, d, d);
      paramRelativeLayout.addView(i, (ViewGroup.LayoutParams)localObject);
      return;
      i.setBackground((Drawable)localObject);
    }
  }
  
  private String d(String paramString)
  {
    if (o != null)
    {
      Iterator localIterator = o.l().i().iterator();
      while (localIterator.hasNext())
      {
        da localda = (da)localIterator.next();
        if (a.equals(paramString)) {
          return c;
        }
      }
    }
    return null;
  }
  
  public void a(ge.a parama, int paramInt)
  {
    if (b.k().isPlaying()) {
      u();
    }
    parama = getAdController().m();
    paramInt = b.d();
    if (!parama.h())
    {
      if (paramInt != Integer.MIN_VALUE) {
        parama.a(paramInt);
      }
      ((x)o).a(paramInt);
    }
    for (;;)
    {
      o.l().c(false);
      v();
      return;
      ((x)o).a(-1);
    }
  }
  
  public void a(String paramString)
  {
    paramString = getAdController().m();
    if (!paramString.h())
    {
      int i1 = paramString.a();
      if ((b != null) && (e) && (n.getVisibility() != 0) && (!t))
      {
        a(i1);
        H();
      }
    }
    for (;;)
    {
      F();
      return;
      if (u) {
        C();
      }
    }
  }
  
  public void a(String paramString, float paramFloat1, float paramFloat2)
  {
    super.a(paramString, paramFloat1, paramFloat2);
    u = false;
  }
  
  public void a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    js.a().a(new gc.1(this));
    y();
  }
  
  public void b()
  {
    super.b();
  }
  
  public void b(String paramString)
  {
    kg.a(3, c, "Video Completed: " + paramString);
    paramString = getAdController().m();
    if (!paramString.h())
    {
      b.k().suspend();
      paramString.a(Integer.MIN_VALUE);
      HashMap localHashMap = new HashMap();
      localHashMap.put("doNotRemoveAssets", "true");
      a(bb.j, localHashMap);
      kg.a(3, c, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
    }
    paramString.g(true);
    u = true;
    if (b != null) {
      b.i();
    }
    t();
    if (n.getVisibility() != 0) {
      C();
    }
  }
  
  public void d()
  {
    if (getAdController().m().m())
    {
      b.f();
      return;
    }
    b.g();
  }
  
  public boolean e()
  {
    return false;
  }
  
  public boolean f()
  {
    return true;
  }
  
  public void g()
  {
    b.b().show();
  }
  
  public String getVideoUrl()
  {
    return r;
  }
  
  public boolean h()
  {
    return e;
  }
  
  public boolean i()
  {
    return false;
  }
  
  public void initLayout()
  {
    gk localgk = getAdController().m();
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams1.addRule(13);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams2.addRule(13);
    g = new FrameLayout(k);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
    g.addView(b.j(), localLayoutParams);
    b(g);
    a(g);
    D();
    addView(g, localLayoutParams2);
    addView(p, localLayoutParams1);
    J();
    g.setOnTouchListener(new gc.2(this));
    if (localgk.h())
    {
      b.b().hide();
      C();
    }
    setBackgroundColor(-16777216);
    requestLayout();
  }
  
  public void j() {}
  
  public void k()
  {
    gk localgk = getAdController().m();
    localgk.j(true);
    getAdController().a(localgk);
  }
  
  public void l()
  {
    gk localgk = getAdController().m();
    localgk.j(false);
    getAdController().a(localgk);
  }
  
  public void m()
  {
    Log.e("Testing", "Resize clicked switch to stream mode.");
    if ((o != null) && ((o instanceof x)) && (((x)o).I().f()))
    {
      t = true;
      a(ge.a.a, b.d());
    }
  }
  
  public void n() {}
  
  public void onActivityPause()
  {
    super.onActivityPause();
  }
  
  public void onActivityResume()
  {
    super.onActivityResume();
  }
  
  public boolean onBackKey()
  {
    if ((o != null) && ((o instanceof x)))
    {
      m();
      return true;
    }
    return false;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    gk localgk = getAdController().m();
    if (orientation == 2)
    {
      b.j().setPadding(0, 5, 0, 5);
      paramConfiguration = new FrameLayout.LayoutParams(-1, -1, 17);
      n.setLayoutParams(paramConfiguration);
      if (!localgk.h()) {
        b.b().b(2);
      }
      g.requestLayout();
      if (!localgk.h())
      {
        if ((!b.m()) || (n.getVisibility() == 0)) {
          break label187;
        }
        I();
      }
    }
    label187:
    while (!b.k().isPlaying())
    {
      return;
      b.j().setPadding(0, 0, 0, 0);
      paramConfiguration = new FrameLayout.LayoutParams(-1, 700, 17);
      n.setLayoutParams(paramConfiguration);
      g.setPadding(0, 5, 0, 5);
      if (!localgk.h()) {
        b.b().b(1);
      }
      g.requestLayout();
      break;
    }
    H();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }
  
  public void setVideoUrl(String paramString)
  {
    r = paramString;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */