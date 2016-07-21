package android.support.v4.app;

import android.content.Context;
import android.os.Build.VERSION;

public final class l
{
  private static final o a = new o(null);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      a = new n(null);
      return;
    }
  }
  
  public static int a(Context paramContext, String paramString1, String paramString2)
  {
    return a.a(paramContext, paramString1, paramString2);
  }
  
  public static String a(String paramString)
  {
    return a.a(paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */