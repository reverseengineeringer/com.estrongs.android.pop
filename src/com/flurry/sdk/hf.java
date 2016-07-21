package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;

public abstract class hf
{
  static final String a = hf.class.getSimpleName();
  private final WeakReference<Context> b;
  private final s c;
  
  public hf(Context paramContext, s params)
  {
    b = new WeakReference(paramContext);
    c = params;
  }
  
  public abstract void a();
  
  public Context c()
  {
    return (Context)b.get();
  }
  
  public s d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */