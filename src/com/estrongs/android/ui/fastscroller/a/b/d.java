package com.estrongs.android.ui.fastscroller.a.b;

import android.view.MotionEvent;
import com.estrongs.android.ui.fastscroller.a.a;

public abstract class d
  implements b
{
  private final a a;
  
  public d(a parama)
  {
    a = parama;
  }
  
  public float a(MotionEvent paramMotionEvent)
  {
    float f = paramMotionEvent.getY();
    if (f <= a.a()) {
      return 0.0F;
    }
    if (f >= a.b()) {
      return 1.0F;
    }
    return f / a.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.fastscroller.a.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */