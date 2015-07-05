package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.RelativeLayout.LayoutParams;
import com.estrongs.android.ui.d.a;

public class aw
{
  private static int G = -1;
  private az A;
  private boolean B = false;
  private int C = 0;
  private int D;
  private ScaleAnimation E;
  private ScaleAnimation F;
  private boolean H = false;
  WindowManager.LayoutParams a;
  ba b;
  RelativeLayout.LayoutParams c;
  protected Rect d;
  private Context e;
  private WindowManager f;
  private boolean g;
  private View h;
  private View i;
  private boolean j;
  private boolean k = true;
  private boolean l = false;
  private boolean m = true;
  private boolean n;
  private View.OnTouchListener o;
  private int p;
  private int q;
  private int r;
  private int s;
  private int t;
  private int u;
  private int v;
  private int w;
  private Rect x;
  private Drawable y;
  private int z = 1000;
  
  protected aw(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramView != null)
    {
      e = paramView.getContext();
      f = ((WindowManager)e.getSystemService("window"));
    }
    a(paramView);
    b(paramInt1);
    a(paramInt2);
    a(paramBoolean);
    if (G == -1) {
      G = a.a(e, 48.0F);
    }
  }
  
  protected aw(View paramView, Rect paramRect)
  {
    this(paramView, 0, 0, false);
    d = paramRect;
  }
  
  private WindowManager.LayoutParams a(IBinder paramIBinder)
  {
    v = f.getDefaultDisplay().getHeight();
    w = f.getDefaultDisplay().getWidth();
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(w, v, 0, 0, z, 1024, 0);
    gravity = 51;
    width = q;
    r = 0;
    height = t;
    u = 0;
    if (y != null) {}
    for (format = y.getOpacity();; format = -3)
    {
      flags = d(flags);
      type = z;
      token = paramIBinder;
      softInputMode = 32;
      localLayoutParams.setTitle("PopupWindow:" + Integer.toHexString(hashCode()));
      return localLayoutParams;
    }
  }
  
  private void a(WindowManager.LayoutParams paramLayoutParams)
  {
    if ((h == null) || (e == null) || (f == null)) {
      throw new IllegalStateException("You must specify a valid content view by calling setContentView() before attempting to show the popup.");
    }
    if (i == null)
    {
      b = new ba(this, e);
      if ((k() != 1) && (k() != 0)) {
        break label123;
      }
    }
    label123:
    for (c = new RelativeLayout.LayoutParams(-1, -2);; c = new RelativeLayout.LayoutParams(-1, -1))
    {
      a(c);
      b.addView(h, c);
      i = b;
      h.setVisibility(0);
      return;
    }
  }
  
  private void a(RelativeLayout.LayoutParams paramLayoutParams)
  {
    if (D == 0)
    {
      paramLayoutParams.addRule(10, -1);
      leftMargin = 0;
      topMargin = x.bottom;
      if (d != null)
      {
        leftMargin = d.left;
        rightMargin = (w - d.right);
        bottomMargin = (v - d.bottom);
      }
    }
    do
    {
      return;
      bottomMargin = G;
      return;
      if (D == 1)
      {
        paramLayoutParams.addRule(12, -1);
        bottomMargin = (t - x.top);
        if (d != null)
        {
          leftMargin = d.left;
          rightMargin = (w - d.right);
          b.setPadding(0, d.top, 0, 0);
          return;
        }
        b.setPadding(0, G, 0, 0);
        return;
      }
    } while (((D != 2) && (D != 3)) || (d == null));
    int i1 = a.a(e, 320.0F);
    if (d.width() > i1) {
      leftMargin = ((w - i1) / 2);
    }
    for (rightMargin = ((w - i1) / 2);; rightMargin = (w - d.right))
    {
      topMargin = d.top;
      return;
      leftMargin = d.left;
    }
  }
  
  private void b(WindowManager.LayoutParams paramLayoutParams)
  {
    packageName = e.getPackageName();
    f.addView(i, paramLayoutParams);
    g = true;
  }
  
  private int d(int paramInt)
  {
    int i1 = 0xFFF97DE7 & paramInt;
    paramInt = i1;
    if (B) {
      paramInt = i1 | 0x8000;
    }
    i1 = paramInt;
    if (!j) {
      i1 = paramInt | 0x8;
    }
    paramInt = i1;
    if (!k) {
      paramInt = i1 | 0x10;
    }
    i1 = paramInt;
    if (l) {
      i1 = paramInt | 0x40000;
    }
    paramInt = i1;
    if (!m) {
      paramInt = i1 | 0x200;
    }
    i1 = paramInt;
    if (n) {
      i1 = paramInt | 0x100;
    }
    return i1;
  }
  
  private int d(boolean paramBoolean)
  {
    float f1 = 0.0F;
    float f2 = 0.0F;
    if (D == 0)
    {
      f1 = x.centerX() / q;
      f2 = 0.0F;
    }
    for (;;)
    {
      if ((E == null) || (paramBoolean))
      {
        E = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, f1, 1, f2);
        E.setDuration(800L);
        E.setInterpolator(new OvershootInterpolator(1.1F));
        E.setAnimationListener(new ax(this));
      }
      if ((F == null) || (paramBoolean))
      {
        F = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F, 1, f1, 1, f2);
        F.setDuration(400L);
        F.setInterpolator(new AccelerateInterpolator());
        ay localay = new ay(this);
        F.setAnimationListener(localay);
      }
      return C;
      if (D == 1)
      {
        f1 = x.centerX() / q;
        f2 = 1.0F;
      }
      else if (D == 2)
      {
        f1 = 0.0F;
        f2 = (x.centerY() - d.top) / (d.bottom - d.top);
      }
      else if (D == 3)
      {
        f1 = 1.0F;
        f2 = (x.centerY() - d.top) / (d.bottom - d.top);
      }
    }
  }
  
  public void a(int paramInt)
  {
    t = paramInt;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    p = paramInt1;
    s = paramInt2;
  }
  
  public void a(Drawable paramDrawable)
  {
    y = paramDrawable;
  }
  
  public void a(View paramView)
  {
    if (e()) {}
    do
    {
      return;
      h = paramView;
      if (e == null) {
        e = h.getContext();
      }
    } while (f != null);
    f = ((WindowManager)e.getSystemService("window"));
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((e()) || (h == null) || (H)) {
      return;
    }
    g = true;
    a = a(paramView.getWindowToken());
    d(false);
    b(paramView);
    a(a);
    a.gravity = paramInt1;
    a.x = paramInt2;
    a.y = paramInt3;
    b(a);
  }
  
  public void a(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public void b(int paramInt)
  {
    q = paramInt;
  }
  
  public void b(View paramView)
  {
    int[] arrayOfInt = new int[2];
    paramView.getLocationInWindow(arrayOfInt);
    int i1 = arrayOfInt[0];
    int i2 = arrayOfInt[1];
    x = new Rect(i1, i2, paramView.getWidth() + i1, paramView.getHeight() + i2);
  }
  
  public void b(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void c(int paramInt)
  {
    D = paramInt;
  }
  
  public void c(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public boolean e()
  {
    return g;
  }
  
  protected void f()
  {
    g();
  }
  
  public void g()
  {
    H = false;
    h.setVisibility(8);
    if ((e()) && (i != null)) {}
    try
    {
      f.removeView(i);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  protected void h()
  {
    if (H) {
      return;
    }
    f.addView(i, a);
    g = true;
  }
  
  public void i()
  {
    if ((e()) && (h.getVisibility() != 8))
    {
      g();
      g = false;
    }
    if ((i != h) && ((i instanceof ViewGroup))) {
      ((ViewGroup)i).removeView(h);
    }
    i = null;
    if (A != null) {
      A.a();
    }
  }
  
  public Rect j()
  {
    return x;
  }
  
  public int k()
  {
    return D;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */