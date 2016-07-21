package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.oq;

@me
final class l
  extends RelativeLayout
{
  oq a;
  
  public l(Context paramContext, String paramString)
  {
    super(paramContext);
    a = new oq(paramContext, paramString);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    a.a(paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */