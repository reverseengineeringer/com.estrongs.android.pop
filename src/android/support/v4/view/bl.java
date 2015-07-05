package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup;

public class bl
{
  static final bo a = new bp();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      a = new bn();
      return;
    }
    if (i >= 11)
    {
      a = new bm();
      return;
    }
  }
  
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    a.a(paramViewGroup, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */