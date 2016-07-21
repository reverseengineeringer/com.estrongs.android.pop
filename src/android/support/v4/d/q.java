package android.support.v4.d;

import android.os.Build.VERSION;
import java.util.Locale;

public final class q
{
  public static final Locale a;
  private static final s b;
  private static String c;
  private static String d;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17) {}
    for (b = new t(null);; b = new s(null))
    {
      a = new Locale("", "");
      c = "Arab";
      d = "Hebr";
      return;
    }
  }
  
  public static int a(Locale paramLocale)
  {
    return b.a(paramLocale);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.d.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */