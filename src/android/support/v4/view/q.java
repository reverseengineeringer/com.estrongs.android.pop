package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

public final class q
{
  private final r a;
  
  public q(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this(paramContext, paramOnGestureListener, null);
  }
  
  public q(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    if (Build.VERSION.SDK_INT > 17)
    {
      a = new u(paramContext, paramOnGestureListener, paramHandler);
      return;
    }
    a = new s(paramContext, paramOnGestureListener, paramHandler);
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    return a.a(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */