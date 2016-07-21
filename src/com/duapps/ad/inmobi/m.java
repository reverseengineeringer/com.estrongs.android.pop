package com.duapps.ad.inmobi;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.duapps.ad.base.an;
import com.duapps.ad.d;
import com.duapps.ad.stats.c;
import com.duapps.ad.stats.p;

class m
  implements View.OnClickListener, View.OnTouchListener
{
  private int b;
  private int c;
  private int d;
  private int e;
  private float f;
  private float g;
  private int h;
  private int i;
  private boolean j;
  
  m(l paraml) {}
  
  public void onClick(View paramView)
  {
    if (l.a(a) != null) {
      l.a(a).a();
    }
    if (j) {
      com.duapps.ad.base.l.d("NativeAdIMWrapper", "No touch data recorded,please ensure touch events reach the ad View by returing false if you intercept the event.");
    }
    if (l.b(a) == null) {
      l.a(a, new c(l.c(a)));
    }
    if (l.d(a))
    {
      l.b(a).a(new p(l.e(a)));
      an.a().a(new k(l.c(a), true, l.e(a)));
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    if ((paramMotionEvent.getAction() == 0) && (l.f(a) != null))
    {
      d = l.f(a).getWidth();
      e = l.f(a).getHeight();
      int[] arrayOfInt = new int[2];
      l.f(a).getLocationInWindow(arrayOfInt);
      f = arrayOfInt[0];
      g = arrayOfInt[1];
      Object localObject = new Rect();
      l.f(a).getGlobalVisibleRect((Rect)localObject);
      i = ((Rect)localObject).width();
      h = ((Rect)localObject).height();
      localObject = new int[2];
      paramView.getLocationInWindow((int[])localObject);
      b = ((int)paramMotionEvent.getX() + localObject[0] - arrayOfInt[0]);
      int k = (int)paramMotionEvent.getY();
      c = (localObject[1] + k - arrayOfInt[1]);
      j = true;
    }
    if (l.g(a) != null) {
      bool = l.g(a).onTouch(paramView, paramMotionEvent);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */