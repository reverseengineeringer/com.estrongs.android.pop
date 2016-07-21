package android.support.v4.widget;

import android.os.Build.VERSION;
import android.view.View;
import android.widget.PopupWindow;

public final class bb
{
  static final bh a = new be();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new bd();
      return;
    }
    if (i >= 21)
    {
      a = new bc();
      return;
    }
    if (i >= 19)
    {
      a = new bg();
      return;
    }
    if (i >= 9)
    {
      a = new bf();
      return;
    }
  }
  
  public static void a(PopupWindow paramPopupWindow, int paramInt)
  {
    a.a(paramPopupWindow, paramInt);
  }
  
  public static void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    a.a(paramPopupWindow, paramView, paramInt1, paramInt2, paramInt3);
  }
  
  public static void a(PopupWindow paramPopupWindow, boolean paramBoolean)
  {
    a.a(paramPopupWindow, paramBoolean);
  }
  
  public static boolean a(PopupWindow paramPopupWindow)
  {
    return a.a(paramPopupWindow);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */