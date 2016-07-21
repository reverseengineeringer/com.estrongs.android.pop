package com.facebook.ads;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.facebook.ads.internal.adapters.p;
import java.util.HashMap;
import java.util.Map;

class NativeAd$a
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
  
  private NativeAd$a(NativeAd paramNativeAd) {}
  
  public Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("clickX", Integer.valueOf(b));
    localHashMap.put("clickY", Integer.valueOf(c));
    localHashMap.put("width", Integer.valueOf(d));
    localHashMap.put("height", Integer.valueOf(e));
    localHashMap.put("adPositionX", Float.valueOf(f));
    localHashMap.put("adPositionY", Float.valueOf(g));
    localHashMap.put("visibleWidth", Integer.valueOf(i));
    localHashMap.put("visibleHeight", Integer.valueOf(h));
    return localHashMap;
  }
  
  public void onClick(View paramView)
  {
    if (NativeAd.a(a) != null) {
      NativeAd.a(a).onAdClicked(a);
    }
    if (!j) {
      Log.e("FBAudienceNetworkLog", "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event.");
    }
    paramView = a();
    if (NativeAd.h(a) != null) {
      paramView.put("nti", String.valueOf(NativeAd.h(a).getValue()));
    }
    if (NativeAd.i(a)) {
      paramView.put("nhs", String.valueOf(NativeAd.i(a)));
    }
    NativeAd.e(a).b(paramView);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    if ((paramMotionEvent.getAction() == 0) && (NativeAd.f(a) != null))
    {
      d = NativeAd.f(a).getWidth();
      e = NativeAd.f(a).getHeight();
      int[] arrayOfInt = new int[2];
      NativeAd.f(a).getLocationInWindow(arrayOfInt);
      f = arrayOfInt[0];
      g = arrayOfInt[1];
      Object localObject = new Rect();
      NativeAd.f(a).getGlobalVisibleRect((Rect)localObject);
      i = ((Rect)localObject).width();
      h = ((Rect)localObject).height();
      localObject = new int[2];
      paramView.getLocationInWindow((int[])localObject);
      b = ((int)paramMotionEvent.getX() + localObject[0] - arrayOfInt[0]);
      int k = (int)paramMotionEvent.getY();
      c = (localObject[1] + k - arrayOfInt[1]);
      j = true;
    }
    if (NativeAd.m(a) != null) {
      bool = NativeAd.m(a).onTouch(paramView, paramMotionEvent);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */