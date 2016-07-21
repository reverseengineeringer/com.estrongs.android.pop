package com.estrongs.fs.impl.o;

import android.content.Context;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import java.util.HashMap;

final class c
  extends Thread
{
  c(String paramString1, Context paramContext, String paramString2) {}
  
  public void run()
  {
    for (;;)
    {
      try
      {
        ??? = ap.cd(a);
        String str1 = ap.as((String)???);
        String str2 = ap.av((String)???);
        if (str1 == null) {
          break;
        }
        if (str2 == null) {
          return;
        }
        Object localObject1 = ap.ax((String)???);
        INetFileSystem localINetFileSystem = b.c(b, (String)localObject1);
        if (localINetFileSystem == null) {
          break;
        }
        localObject1 = new f();
        if ((localINetFileSystem instanceof PcsFileSystem))
        {
          ??? = ((PcsFileSystem)localINetFileSystem).a(str1, str2);
          if (??? != null)
          {
            a = ???[0];
            b = (???[0] - ???[1]);
          }
          synchronized (b.a)
          {
            b.a.put(c, localObject1);
            return;
          }
        }
        b = localINetFileSystem.getLeftSpaceSize(str1, str2, (String)???);
      }
      catch (NetFsException localNetFsException)
      {
        localNetFsException.printStackTrace();
        return;
      }
      a = 0L;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.o.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */