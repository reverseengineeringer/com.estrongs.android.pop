package com.flurry.sdk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.util.List;

public class gn
  extends gp
{
  private static final String a = gn.class.getSimpleName();
  private RelativeLayout b;
  private gp.b c;
  private int d = 0;
  private int e = 0;
  private Context f;
  private List<da> g;
  
  public gn(Context paramContext, gp.b paramb, List<da> paramList, int paramInt)
  {
    super(paramContext);
    f = paramContext;
    c = paramb;
    g = paramList;
  }
  
  private void a(Context paramContext, gp.b paramb)
  {
    if (paramContext == null) {
      return;
    }
    c = paramb;
    b = new RelativeLayout(paramContext);
    paramContext = new RelativeLayout.LayoutParams(d, e);
    b.setBackgroundColor(0);
    b.setLayoutParams(paramContext);
  }
  
  private View j()
  {
    a(f, c);
    return b;
  }
  
  public void a() {}
  
  public void a(float paramFloat1, float paramFloat2) {}
  
  public void a(int paramInt) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    d = paramInt1;
    e = paramInt2;
  }
  
  public void b() {}
  
  public void b(int paramInt1, int paramInt2) {}
  
  public void c() {}
  
  public void d() {}
  
  public void e() {}
  
  public void f() {}
  
  public void g() {}
  
  public void h() {}
  
  public void i() {}
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      show(0);
      continue;
      show(50000);
      continue;
      hide();
    }
  }
  
  public final void setAnchorView(View paramView)
  {
    super.setAnchorView(paramView);
    paramView = new FrameLayout.LayoutParams(d, e);
    removeAllViews();
    addView(j(), paramView);
  }
  
  public void show()
  {
    if (getWindowToken() != null) {
      super.show(0);
    }
  }
  
  public void show(int paramInt)
  {
    if (getWindowToken() != null) {
      super.show(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */