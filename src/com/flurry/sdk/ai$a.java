package com.flurry.sdk;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

public final class ai$a
{
  private final ai.b b;
  private final boolean[] c;
  private boolean d;
  private boolean e;
  
  private ai$a(ai paramai, ai.b paramb)
  {
    b = paramb;
    if (ai.b.d(paramb)) {}
    for (paramai = null;; paramai = new boolean[ai.e(paramai)])
    {
      c = paramai;
      return;
    }
  }
  
  public OutputStream a(int paramInt)
  {
    synchronized (a)
    {
      if (ai.b.a(b) != this) {
        throw new IllegalStateException();
      }
    }
    if (!ai.b.d(b)) {
      c[paramInt] = true;
    }
    File localFile = b.b(paramInt);
    try
    {
      Object localObject2 = new FileOutputStream(localFile);
      localObject2 = new ai.a.a(this, (OutputStream)localObject2, null);
      return (OutputStream)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      for (;;)
      {
        ai.f(a).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          OutputStream localOutputStream = ai.b();
          return localOutputStream;
        }
      }
    }
  }
  
  public void a()
  {
    if (d)
    {
      ai.a(a, this, false);
      a.c(ai.b.c(b));
    }
    for (;;)
    {
      e = true;
      return;
      ai.a(a, this, true);
    }
  }
  
  public void b()
  {
    ai.a(a, this, false);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ai.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */