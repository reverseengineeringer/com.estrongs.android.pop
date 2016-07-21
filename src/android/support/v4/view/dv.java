package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup;

public final class dv
{
  static final dy a = new eb();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new ea();
      return;
    }
    if (i >= 18)
    {
      a = new dz();
      return;
    }
    if (i >= 14)
    {
      a = new dx();
      return;
    }
    if (i >= 11)
    {
      a = new dw();
      return;
    }
  }
  
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    a.a(paramViewGroup, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */