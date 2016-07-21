package android.support.v4.d;

import android.os.Build.VERSION;
import java.util.Locale;

public final class a
{
  private static final b a = new c();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new e();
      return;
    }
    if (i >= 14)
    {
      a = new d();
      return;
    }
  }
  
  public static String a(Locale paramLocale)
  {
    return a.a(paramLocale);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */