package com.google.android.gms.internal;

import android.content.Context;
import java.util.WeakHashMap;

@me
public final class mx
{
  private WeakHashMap<Context, my> a = new WeakHashMap();
  
  public mv a(Context paramContext)
  {
    Object localObject = (my)a.get(paramContext);
    if ((localObject != null) && (!((my)localObject).a()) && (((Boolean)cz.ac.c()).booleanValue())) {}
    for (localObject = new mw(paramContext, b).a();; localObject = new mw(paramContext).a())
    {
      a.put(paramContext, new my(this, (mv)localObject));
      return (mv)localObject;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */