package com.baidu.mobstat;

import android.content.Context;
import java.util.TimerTask;

class bv
  extends TimerTask
{
  bv(bs parambs, Context paramContext) {}
  
  public void run()
  {
    if (!DataCore.instance().isPartEmpty()) {
      bs.a(b, a);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */