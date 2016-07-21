package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class gf
  extends ge
{
  private static final String c = gf.class.getSimpleName();
  private boolean A = false;
  private Boolean B = Boolean.valueOf(false);
  private Boolean C = Boolean.valueOf(false);
  private gt.a D = new gf.5(this);
  private boolean d = false;
  private Bitmap e;
  private FrameLayout f;
  private ImageButton g;
  private Button h;
  private ImageView i;
  private Context j;
  private RelativeLayout k;
  private ProgressBar l;
  private s m;
  private fh n;
  private String o;
  private jl p;
  private String q;
  private String r;
  private int s;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  private boolean w = false;
  private boolean x = false;
  private boolean y = false;
  private boolean z = false;
  
  public gf(Context paramContext, s params, gt.a parama)
  {
    super(paramContext, params, parama);
    if (b == null)
    {
      b = new go(paramContext, ge.a.a, params.l().i(), params.e(), true);
      b.a(this);
    }
    n = new fh();
    p = jl.a();
    m = params;
    j = paramContext;
    getServerParamInfo();
    G();
    q = d(fg.o);
    I();
    initLayout();
  }
  
  private void C()
  {
    w = true;
    J();
  }
  
  private void D()
  {
    F();
    g.setVisibility(0);
  }
  
  private void E()
  {
    if (l != null) {
      l.setVisibility(0);
    }
  }
  
  private void F()
  {
    if (l != null) {
      l.setVisibility(8);
    }
  }
  
  private void G()
  {
    if (p.c())
    {
      if ((B.booleanValue()) && (p.d() == jl.a.c))
      {
        d = true;
        setAutoPlay(true);
      }
    }
    else {
      return;
    }
    if ((C.booleanValue()) && (p.d() == jl.a.d))
    {
      d = true;
      setAutoPlay(true);
      return;
    }
    d = false;
    setAutoPlay(false);
  }
  
  private void H()
  {
    l = new ProgressBar(getContext());
    E();
  }
  
  private void I()
  {
    hc localhc = new hc();
    localhc.x();
    e = localhc.k();
  }
  
  private void J()
  {
    gk localgk = getAdController().m();
    localgk.g(true);
    localgk.a(Integer.MIN_VALUE);
    getAdController().a(localgk);
    w = true;
    y = true;
    a(y);
    k.setVisibility(0);
    f.setVisibility(0);
    o();
    b.j().setVisibility(8);
    i.setVisibility(8);
    f.setClickable(false);
    h.setClickable(true);
    F();
    requestLayout();
  }
  
  private Boolean a(Map<String, String> paramMap, String paramString)
  {
    if ((paramMap != null) && (paramMap.containsKey(paramString))) {
      return Boolean.valueOf((String)paramMap.get(paramString));
    }
    return Boolean.valueOf(false);
  }
  
  private void a(FrameLayout paramFrameLayout)
  {
    g = new ImageButton(j);
    g.setPadding(0, 0, 0, 0);
    g.setBackgroundColor(0);
    g.setImageBitmap(e);
    g.setOnClickListener(new gf.2(this));
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
    D();
    paramFrameLayout.addView(g, localLayoutParams);
  }
  
  @TargetApi(16)
  private void a(RelativeLayout paramRelativeLayout)
  {
    h = new Button(j);
    h.setText(q);
    h.setTextColor(-1);
    h.setBackgroundColor(0);
    Object localObject = new GradientDrawable();
    ((GradientDrawable)localObject).setColor(Integer.MIN_VALUE);
    ((GradientDrawable)localObject).setCornerRadius(20.0F);
    ((GradientDrawable)localObject).setStroke(3, -1);
    if (Build.VERSION.SDK_INT < 16) {
      h.setBackgroundDrawable((Drawable)localObject);
    }
    for (;;)
    {
      h.setOnClickListener(new gf.3(this));
      localObject = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject).setMargins(0, 0, 0, 0);
      ((RelativeLayout.LayoutParams)localObject).addRule(13);
      h.setVisibility(0);
      paramRelativeLayout.addView(h, (ViewGroup.LayoutParams)localObject);
      return;
      h.setBackground((Drawable)localObject);
    }
  }
  
  private static boolean a(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null)) {
      return false;
    }
    try
    {
      if (!(paramContext instanceof Activity)) {
        paramIntent.addFlags(276824064);
      }
      paramContext.startActivity(paramIntent);
      return true;
    }
    catch (ActivityNotFoundException paramContext) {}
    return false;
  }
  
  @TargetApi(16)
  private void b(FrameLayout paramFrameLayout)
  {
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, lr.b(200), 17);
    k = new RelativeLayout(j);
    k.setBackgroundColor(0);
    if (r != null) {
      n.a(k, m.e(), r);
    }
    k.setVisibility(8);
    a(k);
    paramFrameLayout.addView(k, localLayoutParams);
  }
  
  private String d(String paramString)
  {
    if (m != null)
    {
      Iterator localIterator = m.l().i().iterator();
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
  
  private Map<String, String> e(String paramString)
  {
    if (m != null)
    {
      Iterator localIterator = m.l().i().iterator();
      while (localIterator.hasNext())
      {
        da localda = (da)localIterator.next();
        if (a.equals(paramString)) {
          return f;
        }
      }
    }
    return null;
  }
  
  private void getServerParamInfo()
  {
    Map localMap = e(fg.n);
    if (localMap != null)
    {
      B = a(localMap, "autoplayWifi");
      C = a(localMap, "autoplayCell");
    }
  }
  
  public void a(ge.a parama, int paramInt)
  {
    if (parama.equals(ge.a.b))
    {
      u();
      u = true;
      if (b.d() != Integer.MIN_VALUE) {
        s = b.d();
      }
      parama = new Intent(j, FlurryFullscreenTakeoverActivity.class);
      parama.putExtra("ad_object_legacy", m instanceof v);
      parama.putExtra("ad_object_id", m.e());
      parama.putExtra("url", o);
      parama.putExtra("close_ad", false);
      a(j, parama);
    }
    while (!parama.equals(ge.a.a)) {
      return;
    }
    E();
    t = true;
    u = false;
    b.a(true);
    b.b(false);
    parama = getAdController().m();
    if (!parama.h())
    {
      a(parama.a());
      return;
    }
    if ((b.k().isPlaying()) || (b.k().e())) {
      b.k().suspend();
    }
    C();
  }
  
  public void a(String paramString)
  {
    G();
    int i1 = getAdController().m().a();
    if ((b != null) && (d) && (!y) && (!m())) {
      a(i1);
    }
    if (((v) || (z)) && ((!w) || (!q()))) {
      if (b != null)
      {
        C();
        v = false;
        z = false;
      }
    }
    do
    {
      for (;;)
      {
        if (d) {
          i.setVisibility(8);
        }
        F();
        return;
        if ((t) && (!q()))
        {
          t = false;
          if (!b.k().isPlaying())
          {
            a(i1);
            d();
          }
        }
        else if ((x) && (b.k().isPlaying()))
        {
          u();
        }
        else if (A)
        {
          a(i1);
          A = false;
        }
        else
        {
          if (!y) {
            break;
          }
          if (b.k().isPlaying()) {
            b.k().g();
          }
          if (k.getVisibility() != 0) {
            J();
          }
          w = true;
        }
      }
    } while ((b.o() != 8) || (w) || (t) || (v));
    if (!h())
    {
      i1 = getVideoPosition();
      u();
      a(i1);
      u();
      i.setVisibility(8);
      b.j().setVisibility(0);
      f.setVisibility(0);
      D();
    }
    for (;;)
    {
      b.p();
      requestLayout();
      break;
      o();
    }
  }
  
  public void a(String paramString, float paramFloat1, float paramFloat2)
  {
    super.a(paramString, paramFloat1, paramFloat2);
    w = false;
  }
  
  public void a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    js.a().a(new gf.1(this));
    s();
    y();
  }
  
  public void b()
  {
    super.b();
  }
  
  public void b(int paramInt)
  {
    b.b(paramInt);
  }
  
  public void b(String paramString)
  {
    kg.a(3, c, "Video Completed: " + paramString);
    paramString = getAdController().m();
    if (!paramString.h())
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("doNotRemoveAssets", "true");
      a(bb.j, localHashMap);
      kg.a(5, c, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
    }
    paramString.g(true);
    paramString.a(Integer.MIN_VALUE);
    getAdController().a(paramString);
    w = true;
    t();
    if (b != null) {
      b.i();
    }
    J();
  }
  
  public void d()
  {
    if (i.getVisibility() == 0) {
      i.setVisibility(8);
    }
  }
  
  public boolean e()
  {
    return t;
  }
  
  public boolean f()
  {
    return u;
  }
  
  public void g()
  {
    if (u)
    {
      Log.i("Testing", "Showing controller now...");
      return;
    }
    b.b().show();
  }
  
  public String getVideoUrl()
  {
    return o;
  }
  
  public boolean h()
  {
    return d;
  }
  
  public boolean i()
  {
    return y;
  }
  
  public void initLayout()
  {
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -1);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams2.addRule(13);
    f = new FrameLayout(j);
    Object localObject = new RelativeLayout.LayoutParams(-1, -1);
    f.addView(b.j(), (ViewGroup.LayoutParams)localObject);
    localObject = new FrameLayout.LayoutParams(-1, -1, 17);
    i = new ImageView(j);
    i.setOnClickListener(null);
    i.setOnTouchListener(null);
    r = d(fg.l);
    if (r != null) {
      n.a(i, m.e(), r);
    }
    f.addView(i, (ViewGroup.LayoutParams)localObject);
    a(f);
    b(f);
    H();
    if ((d) && (!q()))
    {
      b.j().setVisibility(0);
      f.setVisibility(0);
      i.setVisibility(0);
      o();
      k.setVisibility(8);
    }
    for (;;)
    {
      addView(f, localLayoutParams1);
      addView(l, localLayoutParams2);
      requestLayout();
      return;
      if (q())
      {
        C();
      }
      else if ((!h()) && (getVideoPosition() == 0) && (!w) && (!q()))
      {
        b.j().setVisibility(8);
        i.setVisibility(0);
        D();
        f.setVisibility(0);
        k.setVisibility(8);
      }
      else if ((!h()) && (getVideoPosition() > 0) && (!w))
      {
        if (g.getVisibility() != 0)
        {
          i.setVisibility(8);
          b.j().setVisibility(0);
          D();
          f.setVisibility(0);
        }
        x = true;
      }
      else if ((!h()) && (getVideoPosition() >= 0) && (!w))
      {
        J();
      }
      else
      {
        k.setVisibility(8);
        b.j().setVisibility(8);
        D();
        i.setVisibility(0);
        f.setVisibility(0);
      }
    }
  }
  
  public void j()
  {
    if ((!h()) && (!y)) {
      js.a().a(new gf.4(this));
    }
  }
  
  public void k() {}
  
  public void l() {}
  
  public boolean m()
  {
    return (v) || (z);
  }
  
  public void n()
  {
    u = false;
    v = true;
    b.p();
    if (b != null)
    {
      if (b.k().isPlaying()) {
        b.k().g();
      }
      C();
      v = false;
      z = false;
    }
    m.l().c(true);
  }
  
  public void o()
  {
    g.setVisibility(8);
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (!u)
    {
      super.onConfigurationChanged(paramConfiguration);
      if (orientation == 2)
      {
        paramConfiguration = new RelativeLayout.LayoutParams(-1, -1);
        paramConfiguration.addRule(9);
        setLayoutParams(paramConfiguration);
        requestLayout();
      }
    }
  }
  
  public void p()
  {
    t = true;
  }
  
  public boolean r()
  {
    return g.getVisibility() == 0;
  }
  
  public void setVideoUrl(String paramString)
  {
    o = paramString;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */