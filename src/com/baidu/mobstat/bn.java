package com.baidu.mobstat;

import android.content.Context;

class bn
{
  private static bn a = new bn();
  private boolean b = false;
  
  public static bn a()
  {
    return a;
  }
  
  public void a(Context paramContext)
  {
    cr.a("openExceptonAnalysis");
    if (!b)
    {
      b = true;
      bg.a().a(paramContext);
      NativeCrashHandler.init(paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */