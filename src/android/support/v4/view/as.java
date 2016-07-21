package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup.MarginLayoutParams;

public final class as
{
  static final at a = new au();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new av();
      return;
    }
  }
  
  public static int a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return a.a(paramMarginLayoutParams);
  }
  
  public static int b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return a.b(paramMarginLayoutParams);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */