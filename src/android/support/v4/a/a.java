package android.support.v4.a;

import android.os.Build.VERSION;
import android.view.View;

public final class a
{
  private static final c a = new e();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 12)
    {
      a = new h();
      return;
    }
  }
  
  public static l a()
  {
    return a.a();
  }
  
  public static void a(View paramView)
  {
    a.a(paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */