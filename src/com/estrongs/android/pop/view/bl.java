package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.util.am;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.impl.usb.g;
import java.util.ArrayList;
import java.util.Iterator;

class bl
  implements Runnable
{
  bl(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    Object localObject2 = null;
    int i = 0;
    boolean bool;
    Object localObject1;
    try
    {
      if (e.c())
      {
        g[] arrayOfg1 = e.a();
        i = 1;
        bool = e.e();
        if ((i == 0) || (!bool) || (FileExplorerActivity.E(a))) {
          break label159;
        }
        ArrayList localArrayList1 = am.d();
        am.e();
        ArrayList localArrayList2 = am.d();
        Iterator localIterator = localArrayList2.iterator();
        for (;;)
        {
          localObject1 = localArrayList1;
          localObject2 = localArrayList2;
          if (!localIterator.hasNext()) {
            break;
          }
          localObject1 = (String)localIterator.next();
          if (localArrayList1.contains(localObject1)) {
            localArrayList1.remove(localObject1);
          }
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    for (;;)
    {
      g[] arrayOfg2 = e.b();
      break;
      while (a.h != null)
      {
        a.h.post(new bm(this, arrayOfg2, bool, (ArrayList)localObject1, (ArrayList)localObject2));
        return;
        label159:
        localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */