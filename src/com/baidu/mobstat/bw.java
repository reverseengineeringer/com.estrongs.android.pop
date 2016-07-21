package com.baidu.mobstat;

import android.content.Context;
import java.io.File;

class bw
  implements Runnable
{
  bw(bs parambs, Context paramContext) {}
  
  public void run()
  {
    try
    {
      DataCore.instance().sendLogData(a);
      File[] arrayOfFile = a.getFilesDir().listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        String str1 = arrayOfFile[i].getName();
        if (str1.startsWith("__send_data_"))
        {
          String str2 = cl.a(a, str1);
          if (bs.a(b, a, str2)) {
            cl.b(a, str1);
          }
        }
        i += 1;
      }
      return;
    }
    catch (Exception localException)
    {
      cr.b(localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */