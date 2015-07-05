package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.LinearLayout;

class b
  extends LinearLayout
{
  b(a parama, Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    label80:
    do
    {
      do
      {
        do
        {
          try
          {
            if (!a.a(a)) {
              return true;
            }
            if ((a.b()) && (a.d))
            {
              if (paramMotionEvent.getAction() != 0) {
                break label80;
              }
              a.a(a, (int)paramMotionEvent.getX());
              a.b(a, (int)paramMotionEvent.getY());
              a.a(a, false);
            }
          }
          catch (Throwable localThrowable)
          {
            for (;;)
            {
              int i;
              int j;
              localThrowable.printStackTrace();
              continue;
              a.d();
            }
          }
          return super.onInterceptTouchEvent(paramMotionEvent);
          if (paramMotionEvent.getAction() != 1) {
            break;
          }
        } while (!a.b(a));
        return a.b(a);
      } while (paramMotionEvent.getAction() != 2);
      i = (int)(paramMotionEvent.getX() - a.c(a));
      j = (int)(paramMotionEvent.getY() - a.d(a));
    } while ((Math.abs(i) <= Math.abs(j)) || (Math.abs(i) <= a.e(a)) || (a.b(a)));
    paramMotionEvent.setAction(3);
    dispatchTouchEvent(paramMotionEvent);
    if (i < 0)
    {
      a.c();
      a.a(a, true);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */