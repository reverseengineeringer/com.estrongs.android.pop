package com.baidu.mobstat;

import android.content.Context;
import com.baidu.mobstat.util.b;
import com.baidu.mobstat.util.e;
import java.io.File;

class al
  extends Thread
{
  private Context a;
  private File b;
  
  public al(Context paramContext, File paramFile)
  {
    a = paramContext;
    b = paramFile;
  }
  
  public void run()
  {
    for (int i = 3;; i = 10)
    {
      try
      {
        if (!b.b) {
          continue;
        }
        e.a(new Object[] { "start version check in ", Integer.valueOf(i), "s" });
        sleep(i * 1000);
        ak.a(a, b);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          e.a(localException);
        }
      }
      ak.a(a, false);
      ak.a(a, System.currentTimeMillis());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */