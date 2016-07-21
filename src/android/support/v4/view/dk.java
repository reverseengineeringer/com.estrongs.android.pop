package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.view.View;
import android.view.WindowInsets;

class dk
{
  public static fr a(View paramView, fr paramfr)
  {
    Object localObject = paramfr;
    if ((paramfr instanceof fs))
    {
      WindowInsets localWindowInsets = ((fs)paramfr).g();
      paramView = paramView.onApplyWindowInsets(localWindowInsets);
      localObject = paramfr;
      if (paramView != localWindowInsets) {
        localObject = new fs(paramView);
      }
    }
    return (fr)localObject;
  }
  
  public static void a(View paramView)
  {
    paramView.requestApplyInsets();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.setElevation(paramFloat);
  }
  
  static void a(View paramView, ColorStateList paramColorStateList)
  {
    paramView.setBackgroundTintList(paramColorStateList);
  }
  
  static void a(View paramView, PorterDuff.Mode paramMode)
  {
    paramView.setBackgroundTintMode(paramMode);
  }
  
  public static void a(View paramView, bv parambv)
  {
    if (parambv == null)
    {
      paramView.setOnApplyWindowInsetsListener(null);
      return;
    }
    paramView.setOnApplyWindowInsetsListener(new dl(parambv));
  }
  
  public static float b(View paramView)
  {
    return paramView.getElevation();
  }
  
  public static fr b(View paramView, fr paramfr)
  {
    Object localObject = paramfr;
    if ((paramfr instanceof fs))
    {
      WindowInsets localWindowInsets = ((fs)paramfr).g();
      paramView = paramView.dispatchApplyWindowInsets(localWindowInsets);
      localObject = paramfr;
      if (paramView != localWindowInsets) {
        localObject = new fs(paramView);
      }
    }
    return (fr)localObject;
  }
  
  public static float c(View paramView)
  {
    return paramView.getTranslationZ();
  }
  
  static ColorStateList d(View paramView)
  {
    return paramView.getBackgroundTintList();
  }
  
  static PorterDuff.Mode e(View paramView)
  {
    return paramView.getBackgroundTintMode();
  }
  
  public static boolean f(View paramView)
  {
    return paramView.isNestedScrollingEnabled();
  }
  
  public static void g(View paramView)
  {
    paramView.stopNestedScroll();
  }
  
  public static float h(View paramView)
  {
    return paramView.getZ();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */