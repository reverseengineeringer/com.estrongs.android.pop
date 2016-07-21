package com.duapps.ad.entity;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.d;
import com.duapps.ad.stats.c;
import com.duapps.ad.stats.p;
import com.duapps.ad.stats.u;

class g
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
  
  g(f paramf) {}
  
  public void onClick(View paramView)
  {
    if (f.a(a) != null) {
      f.a(a).a();
    }
    if (j) {
      l.d(f.a(), "No touch data recorded,please ensure touch events reach the ad View by returing false if you intercept the event.");
    }
    if (f.b(a) == null) {
      f.a(a, new c(f.c(a)));
    }
    if (f.d(a))
    {
      l.c(f.a(), "mClickHandler handleClick");
      f.b(a).a(new p(f.e(a)));
      if ((ea).F != null) && (ea).F.length > 0) && (ap.a(f.c(a)))) {
        u.a(f.e(a));
      }
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    if ((paramMotionEvent.getAction() == 0) && (f.f(a) != null))
    {
      d = f.f(a).getWidth();
      e = f.f(a).getHeight();
      int[] arrayOfInt = new int[2];
      f.f(a).getLocationInWindow(arrayOfInt);
      f = arrayOfInt[0];
      g = arrayOfInt[1];
      Object localObject = new Rect();
      f.f(a).getGlobalVisibleRect((Rect)localObject);
      i = ((Rect)localObject).width();
      h = ((Rect)localObject).height();
      localObject = new int[2];
      paramView.getLocationInWindow((int[])localObject);
      b = ((int)paramMotionEvent.getX() + localObject[0] - arrayOfInt[0]);
      int k = (int)paramMotionEvent.getY();
      c = (localObject[1] + k - arrayOfInt[1]);
      j = true;
    }
    if (f.g(a) != null) {
      bool = f.g(a).onTouch(paramView, paramMotionEvent);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */