package com.estrongs.android.b;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;

public abstract class a
  implements Animatable
{
  private String a;
  private b b;
  private boolean c;
  
  public a(String paramString)
  {
    a = paramString;
    c = false;
  }
  
  public abstract void a(a parama, Bitmap paramBitmap);
  
  public boolean isRunning()
  {
    return c;
  }
  
  public void start()
  {
    try
    {
      if (!c)
      {
        b = new b(this);
        b.execute(new Void[0]);
        c = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void stop()
  {
    try
    {
      if (c)
      {
        if (b != null) {
          b.a();
        }
        c = false;
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */