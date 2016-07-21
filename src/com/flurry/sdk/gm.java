package com.flurry.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;

class gm
  extends gp
{
  private static String E = "Sponsored";
  private static final int H = lr.b(50);
  private static final String b = gm.class.getSimpleName();
  private static int c = 60;
  private float A = 17.5F;
  private boolean B = false;
  private String C;
  private String D;
  private List<da> F;
  private fh G;
  private boolean I;
  private boolean J;
  FrameLayout.LayoutParams a = new FrameLayout.LayoutParams(-1, -1);
  private LinearLayout d;
  private gp.a e;
  private Bitmap f;
  private Bitmap g;
  private Bitmap h;
  private Bitmap i;
  private ImageButton j;
  private ImageButton k;
  private ImageButton l;
  private ImageButton m;
  private Context n;
  private LinearLayout o;
  private LinearLayout p;
  private LinearLayout q;
  private RelativeLayout r;
  private TextView s;
  private TextView t;
  private TextView u;
  private ImageView v;
  private int w = 0;
  private int x = 0;
  private int y = -1;
  private float z = 15.0F;
  
  public gm(Context paramContext, gp.a parama, List<da> paramList, int paramInt, boolean paramBoolean)
  {
    super(paramContext);
    n = paramContext;
    e = parama;
    G = new fh();
    F = paramList;
    y = paramInt;
    B = paramBoolean;
    C = a("headline");
    D = a("source");
    I = ez.a(paramContext);
    k();
  }
  
  private String a(String paramString)
  {
    if (F != null)
    {
      Iterator localIterator = F.iterator();
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
  
  private void a(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    l();
    b(r());
    J = true;
  }
  
  private void a(LinearLayout paramLinearLayout)
  {
    if (r != null)
    {
      localObject = (ViewGroup)r.getParent();
      if (localObject != null) {
        ((ViewGroup)localObject).removeView(r);
      }
    }
    r = new RelativeLayout(n);
    Object localObject = new LinearLayout.LayoutParams(-1, -2);
    b(r);
    a(r);
    c(r);
    d(r);
    if (B)
    {
      l.setVisibility(0);
      m.setVisibility(8);
    }
    for (;;)
    {
      paramLinearLayout.addView(r, (ViewGroup.LayoutParams)localObject);
      return;
      l.setVisibility(8);
      m.setVisibility(0);
    }
  }
  
  private void a(RelativeLayout paramRelativeLayout)
  {
    if (l != null)
    {
      localObject = (ViewGroup)l.getParent();
      if (localObject != null) {
        ((ViewGroup)localObject).removeView(l);
      }
    }
    if (l == null) {
      m();
    }
    Object localObject = new RelativeLayout.LayoutParams(-2, -2);
    ((RelativeLayout.LayoutParams)localObject).setMargins(c, 0, 0, 0);
    ((RelativeLayout.LayoutParams)localObject).addRule(7);
    l.setVisibility(0);
    paramRelativeLayout.addView(l, (ViewGroup.LayoutParams)localObject);
  }
  
  private void b(LinearLayout paramLinearLayout)
  {
    o = new LinearLayout(n);
    o.setOrientation(0);
    o.setBackgroundColor(0);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -2);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(80, 80);
    localLayoutParams2.setMargins(c, 10, 10, 10);
    v = new ImageView(n);
    v.setPadding(0, 0, 0, 0);
    Object localObject = a(fg.q);
    if (localObject != null) {
      G.a(v, y, (String)localObject);
    }
    o.addView(v, localLayoutParams2);
    localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
    localObject = new LinearLayout.LayoutParams(-2, -2);
    gravity = 16;
    t = new TextView(n);
    t.setPadding(0, 10, 0, 0);
    t.setText(E);
    t.setTextSize(z);
    t.setTextColor(-1);
    o.addView(t, (ViewGroup.LayoutParams)localObject);
    localLayoutParams1.setMargins(0, 15, 0, 0);
    paramLinearLayout.addView(o, localLayoutParams1);
    p = new LinearLayout(n);
    p.setOrientation(1);
    p.setBackgroundColor(0);
    localLayoutParams1 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams1.setMargins(c, 20, 10, 10);
    s = new TextView(n);
    s.setPadding(0, 10, 0, 0);
    s.setText(C);
    s.setTextSize(A);
    s.setTypeface(null, 1);
    s.setTextColor(-1);
    p.addView(s, localLayoutParams2);
    u = new TextView(n);
    u.setPadding(0, 10, 0, 0);
    u.setText(D);
    u.setTextColor(-1);
    u.setTextSize(z);
    p.addView(u, localLayoutParams2);
    paramLinearLayout.addView(p, localLayoutParams1);
    c(1);
  }
  
  private void b(RelativeLayout paramRelativeLayout)
  {
    if (m != null)
    {
      localObject = (ViewGroup)m.getParent();
      if (localObject != null) {
        ((ViewGroup)localObject).removeView(m);
      }
    }
    if (m == null) {
      n();
    }
    Object localObject = new RelativeLayout.LayoutParams(-2, -2);
    ((RelativeLayout.LayoutParams)localObject).setMargins(c, 0, 0, 0);
    ((RelativeLayout.LayoutParams)localObject).addRule(7);
    m.setVisibility(0);
    paramRelativeLayout.addView(m, (ViewGroup.LayoutParams)localObject);
  }
  
  private void c(int paramInt)
  {
    if (I)
    {
      l.setPadding(0, H, H, 0);
      m.setPadding(0, H, H, 0);
      j.setPadding(H, H, H, 0);
      k.setPadding(H, H, H, 0);
      return;
    }
    l.setPadding(0, 0, 0, 0);
    m.setPadding(0, 0, 0, 0);
    j.setPadding(0, 0, 0, 0);
    k.setPadding(0, 0, 0, 0);
  }
  
  private void c(LinearLayout paramLinearLayout)
  {
    q = new LinearLayout(n);
    q.setOrientation(0);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -1);
    LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(-2, -2);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
    p = new LinearLayout(n);
    p.setOrientation(1);
    p.setBackgroundColor(0);
    LinearLayout.LayoutParams localLayoutParams4 = new LinearLayout.LayoutParams(-2, -2, 1.0F);
    gravity = 3;
    localLayoutParams4.setMargins(c, 20, 10, 10);
    s = new TextView(n);
    s.setPadding(0, 10, 0, 0);
    s.setText(C);
    s.setTextSize(A);
    s.setTypeface(null, 1);
    s.setTextColor(-1);
    p.addView(s, localLayoutParams3);
    u = new TextView(n);
    u.setPadding(0, 10, 0, 0);
    u.setText(D);
    u.setTextColor(-1);
    u.setTextSize(z);
    p.addView(u, localLayoutParams3);
    q.addView(p, localLayoutParams4);
    o = new LinearLayout(n);
    o.setOrientation(0);
    o.setBackgroundColor(0);
    localLayoutParams3 = new LinearLayout.LayoutParams(-2, -2);
    gravity = 5;
    localLayoutParams4 = new LinearLayout.LayoutParams(80, 80);
    localLayoutParams4.setMargins(c, 10, 10, 10);
    v = new ImageView(n);
    v.setPadding(0, 0, 0, 0);
    String str = a(fg.q);
    if (str != null) {
      G.a(v, y, str);
    }
    o.addView(v, localLayoutParams4);
    gravity = 16;
    t = new TextView(n);
    t.setPadding(0, 10, 0, 0);
    t.setText(E);
    t.setTextSize(z);
    t.setTextColor(-1);
    o.addView(t, localLayoutParams2);
    q.addView(o, localLayoutParams3);
    paramLinearLayout.addView(q, localLayoutParams1);
    c(2);
  }
  
  private void c(RelativeLayout paramRelativeLayout)
  {
    if (j != null)
    {
      localObject = (ViewGroup)j.getParent();
      if (localObject != null) {
        ((ViewGroup)localObject).removeView(j);
      }
    }
    if (j == null) {
      o();
    }
    Object localObject = new RelativeLayout.LayoutParams(-2, -2);
    ((RelativeLayout.LayoutParams)localObject).addRule(14);
    ((RelativeLayout.LayoutParams)localObject).addRule(1, l.getId());
    j.setVisibility(0);
    paramRelativeLayout.addView(j, (ViewGroup.LayoutParams)localObject);
  }
  
  private void d(RelativeLayout paramRelativeLayout)
  {
    if (k != null)
    {
      localObject = (ViewGroup)k.getParent();
      if (localObject != null) {
        ((ViewGroup)localObject).removeView(k);
      }
    }
    if (k == null) {
      p();
    }
    Object localObject = new RelativeLayout.LayoutParams(-2, -2);
    ((RelativeLayout.LayoutParams)localObject).addRule(14);
    ((RelativeLayout.LayoutParams)localObject).addRule(1, l.getId());
    k.setVisibility(0);
    paramRelativeLayout.addView(k, (ViewGroup.LayoutParams)localObject);
  }
  
  private View j()
  {
    if (!J) {
      a(n);
    }
    for (;;)
    {
      return d;
      b(r());
    }
  }
  
  private void k()
  {
    hc localhc = new hc();
    localhc.x();
    f = localhc.m();
    g = localhc.n();
    h = localhc.p();
    i = localhc.q();
  }
  
  private void l()
  {
    n();
    m();
    o();
    p();
  }
  
  private void m()
  {
    l = new ImageButton(n);
    l.setPadding(0, 0, 0, 0);
    l.setBackgroundColor(0);
    l.setImageBitmap(h);
    l.setOnClickListener(new gm.1(this));
  }
  
  private void n()
  {
    m = new ImageButton(n);
    m.setPadding(0, 0, 0, 0);
    m.setBackgroundColor(0);
    m.setImageBitmap(i);
    m.setOnClickListener(new gm.2(this));
  }
  
  private void o()
  {
    j = new ImageButton(n);
    j.setPadding(0, 0, 0, 0);
    j.setBackgroundColor(0);
    j.setImageBitmap(f);
    j.setOnClickListener(new gm.3(this));
  }
  
  private void p()
  {
    k = new ImageButton(n);
    k.setPadding(0, 0, 0, 0);
    k.setBackgroundColor(0);
    k.setImageBitmap(g);
    k.setOnClickListener(new gm.4(this));
  }
  
  private void q()
  {
    d = new LinearLayout(n);
    d.setOrientation(1);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
    d.setBackgroundColor(0);
    d.setLayoutParams(localLayoutParams);
  }
  
  private int r()
  {
    return getResourcesgetConfigurationorientation;
  }
  
  public void a()
  {
    if (j != null) {
      j.setVisibility(0);
    }
  }
  
  public void a(float paramFloat1, float paramFloat2) {}
  
  public void a(int paramInt) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    w = paramInt1;
    x = paramInt2;
  }
  
  public void b()
  {
    if (j != null) {
      j.setVisibility(8);
    }
  }
  
  public void b(int paramInt)
  {
    if (n == null) {
      return;
    }
    if (d != null)
    {
      d.removeAllViews();
      ViewGroup localViewGroup = (ViewGroup)d.getParent();
      if (localViewGroup != null) {
        localViewGroup.removeView(d);
      }
    }
    q();
    a(d);
    if (paramInt == 2)
    {
      c(d);
      addView(d, a);
      requestLayout();
      return;
    }
    b(d);
    addView(d, a);
    requestLayout();
  }
  
  public void b(int paramInt1, int paramInt2) {}
  
  public void c()
  {
    if (k != null) {
      k.setVisibility(0);
    }
  }
  
  public void d()
  {
    if (k != null) {
      k.setVisibility(8);
    }
  }
  
  public void e()
  {
    if (l != null) {
      l.setVisibility(0);
    }
  }
  
  public void f()
  {
    if (l != null) {
      l.setVisibility(8);
    }
  }
  
  public void g()
  {
    if (m != null) {
      m.setVisibility(0);
    }
  }
  
  public void h()
  {
    if (m != null) {
      m.setVisibility(8);
    }
  }
  
  public void i() {}
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public final void setAnchorView(View paramView)
  {
    super.setAnchorView(paramView);
    paramView = new FrameLayout.LayoutParams(-1, -1);
    removeAllViews();
    View localView = j();
    if (localView != null) {
      ((ViewGroup)localView.getParent()).removeView(localView);
    }
    addView(localView, paramView);
  }
  
  public void show()
  {
    super.show();
  }
  
  public void show(int paramInt)
  {
    super.show(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */