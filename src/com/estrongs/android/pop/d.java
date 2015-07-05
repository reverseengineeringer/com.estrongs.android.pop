package com.estrongs.android.pop;

import com.estrongs.android.ui.preference.q;
import java.util.ArrayList;
import java.util.Iterator;

class d
  implements Runnable
{
  d(FexApplication paramFexApplication, String paramString, Object paramObject) {}
  
  public void run()
  {
    synchronized (FexApplication.a(c))
    {
      Object localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(FexApplication.a(c));
      localObject1 = ((ArrayList)localObject1).iterator();
      if (((Iterator)localObject1).hasNext()) {
        ((q)((Iterator)localObject1).next()).a(a, b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */