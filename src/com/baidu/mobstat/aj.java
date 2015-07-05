package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.e;
import java.util.TimerTask;

class aj
  extends TimerTask
{
  aj(ag paramag, Context paramContext, String paramString1, String paramString2) {}
  
  public void run()
  {
    e.a("samelog", "timer");
    if (!DataCore.getInstance().isPartEmpty())
    {
      e.a("samelog", "timer send");
      d.a(a, ag.d(d), b, c);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */