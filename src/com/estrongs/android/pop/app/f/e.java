package com.estrongs.android.pop.app.f;

import com.estrongs.android.pop.zeroconf.u;
import com.estrongs.android.pop.zeroconf.w;
import java.io.PrintStream;
import java.net.Inet4Address;

class e
  implements Runnable
{
  e(d paramd, u paramu) {}
  
  public void run()
  {
    Object localObject2;
    Object localObject1;
    int i;
    if (a.a())
    {
      if (c.a(b.a)) {
        System.out.println("+++++" + a.k + " " + a.d + " " + a.a);
      }
      if ((a.f != null) && (a.a != null))
      {
        if (!a.c.equals(w.d)) {
          break label264;
        }
        localObject2 = "webdav://" + a.f.getHostAddress();
        localObject1 = localObject2;
        if (a.d == 80) {
          break label420;
        }
        localObject1 = localObject2;
        i = 1;
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (i != 0) {
          localObject2 = (String)localObject1 + ":" + a.d;
        }
        localObject1 = a.c();
        if (localObject1 == null) {
          break label397;
        }
      }
      label264:
      label397:
      for (localObject2 = (String)localObject2 + (String)localObject1;; localObject2 = (String)localObject2 + "/")
      {
        if (localObject2 != null) {
          c.a(b.a, (String)localObject2, a.a, true);
        }
        return;
        if (a.c.equals(w.e))
        {
          localObject2 = "ftp://" + a.f.getHostAddress();
          localObject1 = localObject2;
          if (a.d == 21) {
            break label420;
          }
          localObject1 = localObject2;
          i = 1;
          break;
        }
        if (!a.c.equals(w.c)) {
          break label425;
        }
        localObject2 = "smb://" + a.f.getHostAddress();
        localObject1 = localObject2;
        if (a.d == 445) {
          break label420;
        }
        localObject1 = localObject2;
        i = 1;
        break;
      }
      label420:
      i = 0;
      continue;
      label425:
      localObject1 = null;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */