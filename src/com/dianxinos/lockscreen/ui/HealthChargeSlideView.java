package com.dianxinos.lockscreen.ui;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dianxinos.lockscreen.ac;
import com.dianxinos.lockscreen.ad;

public class HealthChargeSlideView
  extends LinearLayout
{
  private float a;
  private Handler b = new Handler();
  private SlideUnlockHintView c;
  private RealTimeView d;
  private SDCardView e;
  private BatteryCardView f;
  private Context g;
  private TextView h;
  private boolean i = true;
  
  public HealthChargeSlideView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
    g = paramContext;
  }
  
  public HealthChargeSlideView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    g = paramContext;
  }
  
  private void a(Context paramContext)
  {
    inflate(paramContext, ad.lock_screen_layout, this);
  }
  
  private void d()
  {
    c = ((SlideUnlockHintView)findViewById(ac.lock_screen_bottom_slide));
    h = ((TextView)findViewById(ac.lock_screen_label));
    boolean bool = com.dianxinos.lockscreen.a.a(g).j();
    TextView localTextView = h;
    if (bool) {}
    for (int j = 0;; j = 8)
    {
      localTextView.setVisibility(j);
      d = ((RealTimeView)findViewById(ac.ls_realtime_view));
      e = ((SDCardView)findViewById(ac.lock_screen_sd_card_view));
      f = ((BatteryCardView)findViewById(ac.battery_card));
      return;
    }
  }
  
  public void a()
  {
    d.a();
    e.a();
    f.a();
    c.b();
  }
  
  public void b()
  {
    d.b();
    e.b();
    f.b();
    c.c();
  }
  
  public void c()
  {
    c.a();
    b.removeCallbacksAndMessages(null);
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    d();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!i) {
      return super.onTouchEvent(paramMotionEvent);
    }
    switch (paramMotionEvent.getAction())
    {
    }
    label105:
    for (;;)
    {
      return true;
      a = paramMotionEvent.getRawX();
      continue;
      float f1 = paramMotionEvent.getRawX() - a;
      if (f1 < 0.0F) {
        com.nineoldandroids.b.a.b(this, -com.nineoldandroids.b.a.a(this));
      }
      for (;;)
      {
        if (com.nineoldandroids.b.a.a(this) >= 0.0F) {
          break label105;
        }
        com.nineoldandroids.b.a.d(this, 0.0F);
        break;
        com.nineoldandroids.b.a.b(this, f1);
      }
    }
  }
  
  public void setLockScreenLabel(String paramString)
  {
    h.setText(paramString);
  }
  
  public void setUseTouchInside(boolean paramBoolean)
  {
    i = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.HealthChargeSlideView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */