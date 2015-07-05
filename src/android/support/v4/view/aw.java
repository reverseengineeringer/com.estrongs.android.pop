package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

class aw
  extends av
{
  long a()
  {
    return bc.a();
  }
  
  public void a(View paramView, int paramInt, Paint paramPaint)
  {
    bc.a(paramView, paramInt, paramPaint);
  }
  
  public void a(View paramView, Paint paramPaint)
  {
    a(paramView, d(paramView), paramPaint);
    paramView.invalidate();
  }
  
  public int d(View paramView)
  {
    return bc.a(paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */