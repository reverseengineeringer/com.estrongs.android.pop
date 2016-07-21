package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

class u
  implements r
{
  private final GestureDetector a;
  
  public u(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    a = new GestureDetector(paramContext, paramOnGestureListener, paramHandler);
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    return a.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */