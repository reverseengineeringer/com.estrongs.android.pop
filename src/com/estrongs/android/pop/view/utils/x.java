package com.estrongs.android.pop.view.utils;

import com.estrongs.a.a;
import com.estrongs.a.a.o;
import com.estrongs.a.p;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

final class x
  implements o
{
  public void a(a parama, boolean paramBoolean)
  {
    parama = (y)parama;
    synchronized (RemoteSynchronizer.g())
    {
      Object localObject2 = (ab)RemoteSynchronizer.g().get(a.path);
      if (localObject2 == null) {
        return;
      }
      if (a == true)
      {
        b = null;
        dgeta.path)).tmpPath = null;
        RemoteSynchronizer.b();
        RemoteSynchronizer.g().notify();
        if ((parama.getTaskStatus() == 5) && (getTaskResulta == 1)) {
          synchronized (RemoteSynchronizer.c)
          {
            localObject2 = (RemoteSynchronizer.RemoteFile)RemoteSynchronizer.c.get(AppRunner.b(a.path));
            if (localObject2 != null)
            {
              localFileLastModified = new File(a.cachePath).lastModified();
              RemoteSynchronizer.c();
            }
            return;
          }
        }
      }
      else
      {
        RemoteSynchronizer.g().remove(a.path);
        RemoteSynchronizer.d.remove(a.path);
        RemoteSynchronizer.b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */