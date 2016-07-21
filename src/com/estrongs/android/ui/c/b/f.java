package com.estrongs.android.ui.c.b;

import android.os.Handler;
import com.estrongs.android.ui.c.a.d;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Collection;

class f
  extends Thread
{
  private ArrayList<com.estrongs.android.ui.c.a.a> b;
  private boolean c = false;
  
  public f(Collection<com.estrongs.android.ui.c.a.a> paramCollection)
  {
    Collection localCollection;
    b = new ArrayList(localCollection);
  }
  
  public void a()
  {
    c = true;
  }
  
  public void run()
  {
    int i = 0;
    try
    {
      while (i < b.size())
      {
        Object localObject2 = ((d)b.get(i)).a();
        i locali = new i();
        a = ((String)localObject2);
        if (ap.aH((String)localObject2))
        {
          c = e.l((String)localObject2);
          b = (c - e.k((String)localObject2));
        }
        while (c)
        {
          return;
          localObject2 = j.k((String)localObject2);
          b = ((localObject2[0] - localObject2[1]) * localObject2[2]);
          c = (localObject2[0] * localObject2[2]);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      synchronized (a.e(a))
      {
        a.a(a, null);
        return;
      }
      a.j(a).post(new g(this, (i)???));
      i += 1;
    }
    synchronized (a.e(a))
    {
      a.a(a, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */