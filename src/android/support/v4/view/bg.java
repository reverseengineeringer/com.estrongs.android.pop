package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public class bg
{
  static final bj a = new bh();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new bi();
      return;
    }
  }
  
  public static int a(ViewConfiguration paramViewConfiguration)
  {
    return a.a(paramViewConfiguration);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */