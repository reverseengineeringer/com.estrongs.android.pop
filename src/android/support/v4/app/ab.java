package android.support.v4.app;

import android.os.Build.VERSION;

public class ab
{
  private static final ah a = new ai();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new al();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new ak();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new aj();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */