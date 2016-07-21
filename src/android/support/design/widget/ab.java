package android.support.design.widget;

import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableContainer.DrawableContainerState;
import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

class ab
{
  private static Method a;
  private static boolean b;
  private static Field c;
  private static boolean d;
  
  static boolean a(DrawableContainer paramDrawableContainer, Drawable.ConstantState paramConstantState)
  {
    if (Build.VERSION.SDK_INT >= 9) {
      return b(paramDrawableContainer, paramConstantState);
    }
    return c(paramDrawableContainer, paramConstantState);
  }
  
  private static boolean b(DrawableContainer paramDrawableContainer, Drawable.ConstantState paramConstantState)
  {
    if (!b) {}
    try
    {
      a = DrawableContainer.class.getDeclaredMethod("setConstantState", new Class[] { DrawableContainer.DrawableContainerState.class });
      a.setAccessible(true);
      b = true;
      if (a == null) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          a.invoke(paramDrawableContainer, new Object[] { paramConstantState });
          return true;
        }
        catch (Exception paramDrawableContainer)
        {
          Log.e("DrawableUtils", "Could not invoke setConstantState(). Oh well.");
        }
        localNoSuchMethodException = localNoSuchMethodException;
        Log.e("DrawableUtils", "Could not fetch setConstantState(). Oh well.");
      }
    }
    return false;
  }
  
  private static boolean c(DrawableContainer paramDrawableContainer, Drawable.ConstantState paramConstantState)
  {
    if (!d) {}
    try
    {
      c = DrawableContainer.class.getDeclaredField("mDrawableContainerStateField");
      c.setAccessible(true);
      d = true;
      if (c == null) {}
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;)
      {
        try
        {
          c.set(paramDrawableContainer, paramConstantState);
          return true;
        }
        catch (Exception paramDrawableContainer)
        {
          Log.e("DrawableUtils", "Could not set mDrawableContainerStateField. Oh well.");
        }
        localNoSuchFieldException = localNoSuchFieldException;
        Log.e("DrawableUtils", "Could not fetch mDrawableContainerStateField. Oh well.");
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */