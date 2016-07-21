package android.support.v4.app;

import android.os.Build.VERSION;
import android.os.Bundle;

public final class bw
  extends ce
{
  public static final cf a;
  private static final by g;
  private final String b;
  private final CharSequence c;
  private final CharSequence[] d;
  private final boolean e;
  private final Bundle f;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 20) {
      g = new bz();
    }
    for (;;)
    {
      a = new bx();
      return;
      if (Build.VERSION.SDK_INT >= 16) {
        g = new cb();
      } else {
        g = new ca();
      }
    }
  }
  
  private bw(String paramString, CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence, boolean paramBoolean, Bundle paramBundle)
  {
    b = paramString;
    c = paramCharSequence;
    d = paramArrayOfCharSequence;
    e = paramBoolean;
    f = paramBundle;
  }
  
  public String a()
  {
    return b;
  }
  
  public CharSequence b()
  {
    return c;
  }
  
  public CharSequence[] c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public Bundle e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */