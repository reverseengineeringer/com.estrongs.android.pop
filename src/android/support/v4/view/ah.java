package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.LayoutInflater;

public final class ah
{
  static final ai a = new aj();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new al();
      return;
    }
    if (i >= 11)
    {
      a = new ak();
      return;
    }
  }
  
  public static ar a(LayoutInflater paramLayoutInflater)
  {
    return a.a(paramLayoutInflater);
  }
  
  public static void a(LayoutInflater paramLayoutInflater, ar paramar)
  {
    a.a(paramLayoutInflater, paramar);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */