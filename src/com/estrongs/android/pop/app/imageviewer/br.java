package com.estrongs.android.pop.app.imageviewer;

import android.view.MotionEvent;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import com.estrongs.android.widget.RealViewSwitcher;

class br
  implements am
{
  br(bq parambq, MotionEvent paramMotionEvent) {}
  
  public void a(int paramInt, float paramFloat)
  {
    if (((paramInt == 0) && (paramFloat > 10.0F)) || ((paramInt == 1) && (paramFloat < -10.0F)))
    {
      b.d.i.onTouchEvent(a);
      b.a = true;
    }
    if (((b.d.c == 0) && (paramInt == 0)) || ((b.d.c == b.d.e.b() - 1) && (paramInt == 1))) {
      b.a = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */