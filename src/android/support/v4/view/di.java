package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

class di
{
  public static int a(View paramView)
  {
    return paramView.getLayoutDirection();
  }
  
  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.setPaddingRelative(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(View paramView, Paint paramPaint)
  {
    paramView.setLayerPaint(paramPaint);
  }
  
  public static int b(View paramView)
  {
    return paramView.getPaddingStart();
  }
  
  public static int c(View paramView)
  {
    return paramView.getPaddingEnd();
  }
  
  public static int d(View paramView)
  {
    return paramView.getWindowSystemUiVisibility();
  }
  
  public static boolean e(View paramView)
  {
    return paramView.isPaddingRelative();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */