package android.support.a.a;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

class c
  implements Drawable.Callback
{
  c(b paramb) {}
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    a.invalidateSelf();
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    a.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    a.unscheduleSelf(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */