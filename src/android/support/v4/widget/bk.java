package android.support.v4.widget;

import android.widget.PopupWindow;
import java.lang.reflect.Method;

class bk
{
  private static Method a;
  private static boolean b;
  
  static void a(PopupWindow paramPopupWindow, int paramInt)
  {
    if (!b) {}
    try
    {
      a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", new Class[] { Integer.TYPE });
      a.setAccessible(true);
      b = true;
      if (a != null) {}
      try
      {
        a.invoke(paramPopupWindow, new Object[] { Integer.valueOf(paramInt) });
        return;
      }
      catch (Exception paramPopupWindow) {}
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */