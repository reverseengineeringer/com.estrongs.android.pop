package com.facebook.ads.internal.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class p
  extends View
{
  private o a;
  
  public p(Context paramContext, o paramo)
  {
    super(paramContext);
    a = paramo;
    setLayoutParams(new ViewGroup.LayoutParams(0, 0));
  }
  
  public void onWindowVisibilityChanged(int paramInt)
  {
    if (a != null) {
      a.a(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */