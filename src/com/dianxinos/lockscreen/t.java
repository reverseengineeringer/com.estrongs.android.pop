package com.dianxinos.lockscreen;

import android.content.Context;
import android.widget.Scroller;

public class t
  extends Scroller
{
  private int b = 1000;
  
  public t(LockScreenContainer paramLockScreenContainer, Context paramContext)
  {
    super(paramContext);
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, b);
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    super.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, b);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */