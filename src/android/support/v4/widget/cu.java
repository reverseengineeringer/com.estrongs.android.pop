package android.support.v4.widget;

import android.util.Log;
import android.widget.TextView;
import java.lang.reflect.Field;

class cu
{
  private static Field a;
  private static boolean b;
  private static Field c;
  private static boolean d;
  
  static int a(TextView paramTextView)
  {
    if (!d)
    {
      c = a("mMaxMode");
      d = true;
    }
    if ((c != null) && (a(c, paramTextView) == 1))
    {
      if (!b)
      {
        a = a("mMaximum");
        b = true;
      }
      if (a != null) {
        return a(a, paramTextView);
      }
    }
    return -1;
  }
  
  private static int a(Field paramField, TextView paramTextView)
  {
    try
    {
      int i = paramField.getInt(paramTextView);
      return i;
    }
    catch (IllegalAccessException paramTextView)
    {
      Log.d("TextViewCompatDonut", "Could not retrieve value of " + paramField.getName() + " field.");
    }
    return -1;
  }
  
  private static Field a(String paramString)
  {
    Object localObject = null;
    try
    {
      Field localField = TextView.class.getDeclaredField(paramString);
      localObject = localField;
      localField.setAccessible(true);
      return localField;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.e("TextViewCompatDonut", "Could not retrieve " + paramString + " field.");
    }
    return (Field)localObject;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */