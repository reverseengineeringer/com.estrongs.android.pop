package android.support.v4.view;

import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;

class t
  extends Handler
{
  t(s params) {}
  
  t(s params, Handler paramHandler)
  {
    super(paramHandler.getLooper());
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      throw new RuntimeException("Unknown message " + paramMessage);
    case 1: 
      s.b(a).onShowPress(s.a(a));
    }
    do
    {
      return;
      s.c(a);
      return;
    } while (s.d(a) == null);
    if (!s.e(a))
    {
      s.d(a).onSingleTapConfirmed(s.a(a));
      return;
    }
    s.a(a, true);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */