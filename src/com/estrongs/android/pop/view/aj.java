package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.impl.usb.g;
import java.util.ArrayList;
import java.util.Iterator;

class aj
  implements Runnable
{
  aj(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void run()
  {
    Object localObject1 = null;
    int i = 0;
    g[] arrayOfg;
    boolean bool;
    Object localObject3;
    Object localObject2;
    for (;;)
    {
      try
      {
        if (e.c())
        {
          arrayOfg = e.a();
          i = 1;
          bool = e.e();
          if ((i == 0) || (!bool) || (FileExplorerActivity.A(a))) {
            break label191;
          }
          localObject3 = ap.d();
          ap.e();
          ArrayList localArrayList = ap.d();
          Iterator localIterator = localArrayList.iterator();
          localObject2 = localObject3;
          localObject1 = localArrayList;
          if (!localIterator.hasNext()) {
            break;
          }
          localObject1 = (String)localIterator.next();
          if (!((ArrayList)localObject3).contains(localObject1)) {
            continue;
          }
          ((ArrayList)localObject3).remove(localObject1);
          continue;
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      arrayOfg = e.b();
    }
    for (;;)
    {
      localObject3 = localObject2;
      if (localObject2 == null) {
        localObject3 = new ArrayList();
      }
      localObject2 = localException;
      if (localException == null) {
        localObject2 = new ArrayList();
      }
      if (a.i == null) {
        break;
      }
      a.i.post(new ak(this, arrayOfg, bool, (ArrayList)localObject3, (ArrayList)localObject2));
      return;
      label191:
      localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */