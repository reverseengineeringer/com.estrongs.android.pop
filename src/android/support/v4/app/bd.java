package android.support.v4.app;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.Transition.EpicenterCallback;

final class bd
  extends Transition.EpicenterCallback
{
  private Rect b;
  
  bd(bf parambf) {}
  
  public Rect onGetEpicenter(Transition paramTransition)
  {
    if ((b == null) && (a.a != null)) {
      b = ba.b(a.a);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */