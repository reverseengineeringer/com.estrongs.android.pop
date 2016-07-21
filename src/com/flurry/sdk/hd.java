package com.flurry.sdk;

import android.content.Context;

public final class hd
  extends hf
{
  public hd(Context paramContext, s params)
  {
    super(paramContext, params);
  }
  
  private void a(s params, String paramString, boolean paramBoolean)
  {
    gr localgr = new gr();
    a = params;
    b = paramString;
    c = paramBoolean;
    localgr.b();
  }
  
  public void a()
  {
    s locals = d();
    if (locals.l().r())
    {
      a(locals, null, true);
      return;
    }
    fi.a(c(), locals, null, true, false);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */