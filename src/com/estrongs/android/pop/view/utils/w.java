package com.estrongs.android.pop.view.utils;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.notification.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class w
  implements Runnable
{
  public void run()
  {
    label113:
    label193:
    for (;;)
    {
      Object localObject2;
      String str;
      synchronized ()
      {
        Iterator localIterator = RemoteSynchronizer.g().entrySet().iterator();
        int i = 0;
        if (localIterator.hasNext())
        {
          localObject2 = (Map.Entry)localIterator.next();
          str = (String)((Map.Entry)localObject2).getKey();
          localObject2 = (ab)((Map.Entry)localObject2).getValue();
          if ((!a) || (b == null)) {
            break label113;
          }
          b.requestStop();
          i += 1;
          if (i < 5) {
            break label193;
          }
        }
      }
      try
      {
        RemoteSynchronizer.g().wait();
        continue;
        localObject1 = finally;
        throw ((Throwable)localObject1);
        if (b == null)
        {
          a = false;
          b = RemoteSynchronizer.a((RemoteSynchronizer.RemoteFile)RemoteSynchronizer.d.get(str), (ab)localObject2);
          new e(FileExplorerActivity.J(), FexApplication.a().getString(2131428399), b);
          b.execute();
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */