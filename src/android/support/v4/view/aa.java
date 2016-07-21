package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public final class aa
{
  static final ae a = new ab();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new ad();
      return;
    }
  }
  
  public static boolean a(KeyEvent paramKeyEvent)
  {
    return a.b(paramKeyEvent.getMetaState());
  }
  
  public static boolean a(KeyEvent paramKeyEvent, int paramInt)
  {
    return a.a(paramKeyEvent.getMetaState(), paramInt);
  }
  
  public static void b(KeyEvent paramKeyEvent)
  {
    a.a(paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */