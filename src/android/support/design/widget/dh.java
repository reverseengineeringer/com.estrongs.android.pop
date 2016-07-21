package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;

class dh
{
  private static final dj a = new dk(null);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new dl(null);
      return;
    }
  }
  
  static void a(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    a.a(paramViewGroup, paramView, paramRect);
  }
  
  static void b(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    paramRect.set(0, 0, paramView.getWidth(), paramView.getHeight());
    a(paramViewGroup, paramView, paramRect);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */