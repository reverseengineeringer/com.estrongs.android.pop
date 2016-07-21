package com.flurry.sdk;

import java.io.PrintStream;
import java.io.PrintWriter;

public abstract class ly
  implements Runnable
{
  private static final String a = ly.class.getSimpleName();
  PrintStream h;
  PrintWriter i;
  
  public abstract void a();
  
  public final void run()
  {
    try
    {
      a();
      return;
    }
    catch (Throwable localThrowable)
    {
      if (h == null) {
        break label33;
      }
    }
    localThrowable.printStackTrace(h);
    for (;;)
    {
      kg.a(6, a, "", localThrowable);
      return;
      label33:
      if (i != null) {
        localThrowable.printStackTrace(i);
      } else {
        localThrowable.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */