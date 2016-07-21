package com.estrongs.android.pop.app.messagebox;

import android.content.Context;
import com.estrongs.android.pop.app.unlock.m;
import com.estrongs.android.pop.utils.cl;

public class n
{
  public static String a;
  public static String b;
  public static String c;
  public static String d;
  private static n e;
  private Context f;
  
  private n(Context paramContext)
  {
    f = paramContext.getApplicationContext();
  }
  
  public static n a(Context paramContext)
  {
    if (e == null) {
      e = new n(paramContext);
    }
    return e;
  }
  
  public void a()
  {
    b();
    z.a(f).a();
    m.a(f).a();
  }
  
  public void a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return;
      if (paramString.equals("prod"))
      {
        if (cl.e()) {
          c = "577640357eae814336fdf856";
        }
        for (d = "";; d = "577124fe7eae7b7b8fd5eea5")
        {
          a = "56f262117eae07c9799554c2";
          b = "56f2653d7eae07c9799554c3";
          return;
          c = "57763eda7eae814336fdf855";
        }
      }
    } while (!paramString.equals("test"));
    if (cl.e()) {
      c = "5768d331e4b0d0d1db6f2fcd";
    }
    for (d = "5770c527e4b051dbaf1ba136";; d = "5773779de4b051dbaf1ba13d")
    {
      a = "56ea28cee4b034cd0e1ab89f";
      b = "56ef9be2e4b034cd0e1ab8a2";
      return;
      c = "57711777e4b051dbaf1ba139";
    }
  }
  
  public void b()
  {
    m.a(f).b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */