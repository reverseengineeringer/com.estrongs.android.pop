package android.support.v4.widget;

import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Field;

class bi
{
  private static Field a;
  
  static
  {
    try
    {
      a = PopupWindow.class.getDeclaredField("mOverlapAnchor");
      a.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", localNoSuchFieldException);
    }
  }
  
  static void a(PopupWindow paramPopupWindow, boolean paramBoolean)
  {
    if (a != null) {}
    try
    {
      a.set(paramPopupWindow, Boolean.valueOf(paramBoolean));
      return;
    }
    catch (IllegalAccessException paramPopupWindow)
    {
      Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", paramPopupWindow);
    }
  }
  
  static boolean a(PopupWindow paramPopupWindow)
  {
    if (a != null) {
      try
      {
        boolean bool = ((Boolean)a.get(paramPopupWindow)).booleanValue();
        return bool;
      }
      catch (IllegalAccessException paramPopupWindow)
      {
        Log.i("PopupWindowCompatApi21", "Could not get overlap anchor field in PopupWindow", paramPopupWindow);
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */