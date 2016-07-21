package com.flurry.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class gl
  extends gp
{
  private static final String a = gl.class.getSimpleName();
  private static final int b = lr.b(16);
  private static final int c = lr.b(5);
  private static final int d = lr.b(35);
  private RelativeLayout e;
  private gp.b f;
  private ImageButton g;
  private ImageButton h;
  private ImageButton i;
  private hh j;
  private int k = 0;
  private int l = 0;
  
  public gl(Context paramContext, gp.b paramb)
  {
    super(paramContext);
    a(paramContext, paramb);
  }
  
  private void a(Context paramContext)
  {
    kg.a(3, a, "Update initLayout Video: " + paramContext.toString());
    e = new RelativeLayout(paramContext);
    e.setBackgroundColor(0);
    Object localObject = new RelativeLayout.LayoutParams(-1, -1);
    ((RelativeLayout.LayoutParams)localObject).addRule(13);
    e.setLayoutParams((ViewGroup.LayoutParams)localObject);
    localObject = new hc();
    ((hc)localObject).x();
    a(paramContext, ((hc)localObject).h());
    b(paramContext);
    b(paramContext, ((hc)localObject).j());
    c(paramContext, ((hc)localObject).i());
  }
  
  private void a(Context paramContext, Bitmap paramBitmap)
  {
    h = new ImageButton(paramContext);
    h.setPadding(0, 0, 0, 0);
    h.setImageBitmap(paramBitmap);
    paramContext = new GradientDrawable();
    paramContext.setColor(-16777216);
    paramContext.setShape(1);
    paramContext.setAlpha(178);
    if (Build.VERSION.SDK_INT >= 16) {
      h.setBackground(paramContext);
    }
    for (;;)
    {
      h.setVisibility(4);
      h.setOnClickListener(new gl.2(this));
      paramContext = new RelativeLayout.LayoutParams(-2, -2);
      paramContext.addRule(11);
      paramContext.addRule(10);
      paramContext.setMargins(c, c, c, c);
      e.addView(h, paramContext);
      return;
      h.setBackgroundDrawable(paramContext);
    }
  }
  
  private void a(Context paramContext, gp.b paramb)
  {
    if (paramContext == null) {
      return;
    }
    f = paramb;
    a(paramContext);
    e.setFocusableInTouchMode(true);
    e.setOnKeyListener(new gl.1(this));
  }
  
  private void b(Context paramContext)
  {
    j = new hh(paramContext, d, d);
    paramContext = new RelativeLayout.LayoutParams(-2, -2);
    paramContext.addRule(12);
    paramContext.addRule(9);
    paramContext.setMargins(b, b, b, b);
    j.a().setVisibility(0);
    e.addView(j.a(), paramContext);
  }
  
  private void b(Context paramContext, Bitmap paramBitmap)
  {
    i = new ImageButton(paramContext);
    i.setPadding(0, 0, 0, 0);
    i.setBackgroundColor(0);
    i.setImageBitmap(paramBitmap);
    i.setOnClickListener(new gl.3(this));
    paramContext = new RelativeLayout.LayoutParams(-2, -2);
    paramContext.addRule(11);
    paramContext.addRule(12);
    paramContext.setMargins(b, b, b, b);
    i.setVisibility(0);
    e.addView(i, paramContext);
  }
  
  private void c(int paramInt)
  {
    if (e == null)
    {
      kg.a(5, a, "Layout is null in updateControlVisibility.");
      return;
    }
    setCloseButtonVisibility(paramInt);
    setTimerVisibility(paramInt);
    setPlayButtonVisibility(paramInt);
    setMoreInfoButtonVisibility(paramInt);
  }
  
  private void c(Context paramContext, Bitmap paramBitmap)
  {
    g = new ImageButton(paramContext);
    g.setPadding(0, 0, 0, 0);
    g.setBackgroundColor(0);
    g.setImageBitmap(paramBitmap);
    g.setOnClickListener(new gl.4(this));
    paramContext = new RelativeLayout.LayoutParams(-2, -2);
    paramContext.addRule(13);
    paramContext.setMargins(b, b, b, b);
    g.setVisibility(0);
    show(0);
    e.addView(g, paramContext);
  }
  
  private int getHeightDimensions()
  {
    return cheightPixels;
  }
  
  private int getWidthDimensions()
  {
    return cwidthPixels;
  }
  
  private void setCloseButtonVisibility(int paramInt)
  {
    if ((paramInt & 0x1) > 0) {}
    for (paramInt = 1; paramInt != 0; paramInt = 0)
    {
      h.setVisibility(0);
      return;
    }
    h.setVisibility(4);
  }
  
  private void setMoreInfoButtonVisibility(int paramInt)
  {
    if ((paramInt & 0x4) > 0) {}
    for (paramInt = 1; paramInt != 0; paramInt = 0)
    {
      i.setVisibility(0);
      return;
    }
    i.setVisibility(4);
  }
  
  private void setPlayButtonVisibility(int paramInt)
  {
    if ((paramInt & 0x8) > 0) {}
    for (paramInt = 1; paramInt != 0; paramInt = 0)
    {
      g.setVisibility(0);
      return;
    }
    g.setVisibility(4);
  }
  
  private void setTimerVisibility(int paramInt)
  {
    if ((paramInt & 0x2) > 0) {}
    for (paramInt = 1; paramInt != 0; paramInt = 0)
    {
      j.a().setVisibility(0);
      return;
    }
    j.a().setVisibility(4);
  }
  
  public void a() {}
  
  public void a(float paramFloat1, float paramFloat2)
  {
    if (j == null)
    {
      kg.a(3, a, "Cannot update timer. View is null.");
      return;
    }
    k = ((int)paramFloat2 / 1000);
    int m = (int)paramFloat1 / 1000;
    int n = k;
    j.b((int)paramFloat1);
    j.a(m - n);
  }
  
  public void a(int paramInt)
  {
    if (l == paramInt) {
      return;
    }
    kg.a(3, a, "Update UI with visible flag: \n CloseButton: " + (paramInt & 0x1) + " \n Play Button: " + (paramInt & 0x8) + " \n MoreInfo: " + (paramInt & 0x4) + " \n Timer: " + (paramInt & 0x2));
    l = paramInt;
    c(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2) {}
  
  public void b() {}
  
  public void b(int paramInt1, int paramInt2)
  {
    if (e == null)
    {
      kg.a(3, a, "Layout is null in screenSizeChanged.");
      return;
    }
    c(l);
  }
  
  public void c() {}
  
  public void d() {}
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    int n = paramKeyEvent.getKeyCode();
    kg.a(5, a, "Override dispatchKeyEvent");
    if ((paramKeyEvent.getRepeatCount() == 0) && (paramKeyEvent.getAction() == 0)) {}
    for (int m = 1; (n == 79) || (n == 85) || (n == 62) || (n == 126) || (n == 86) || (n == 127); m = 0) {
      return true;
    }
    if ((n == 25) || (n == 24) || (n == 164) || (n == 27))
    {
      show(0);
      return super.dispatchKeyEvent(paramKeyEvent);
    }
    if ((paramKeyEvent.getKeyCode() == 4) && (m != 0))
    {
      if ((f != null) && (j()) && (m != 0)) {
        f.q();
      }
      show(0);
      return true;
    }
    show(0);
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public void e() {}
  
  public void f() {}
  
  public void g() {}
  
  public void h() {}
  
  public void i()
  {
    if (e != null)
    {
      kg.a(5, a, "Reset video view.");
      a(0);
      e.removeAllViews();
      removeAllViews();
      e = null;
    }
  }
  
  public boolean j()
  {
    return h.isShown();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    c(l);
  }
  
  public final void setAnchorView(View paramView)
  {
    super.setAnchorView(paramView);
    if (e == null)
    {
      kg.a(3, a, "Layout is null in setAnchorView.");
      return;
    }
    removeAllViews();
    addView(e);
  }
  
  public void show()
  {
    super.show(0);
    kg.a(5, a, "Show called.");
  }
  
  public void show(int paramInt)
  {
    kg.a(5, a, "Override show(0).");
    super.show(0);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */