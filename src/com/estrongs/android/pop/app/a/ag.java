package com.estrongs.android.pop.app.a;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class ag
{
  ai a;
  private final ArrayList<ai> b = new ArrayList();
  private final Map<ak, Integer> c = new HashMap();
  private boolean d;
  private Thread e;
  private String f = "MusicTagLoader";
  
  public ag()
  {
    this(null);
  }
  
  public ag(String paramString)
  {
    if (paramString != null) {
      f = paramString;
    }
    a();
  }
  
  private void a()
  {
    if (e != null) {
      return;
    }
    d = false;
    Thread localThread = new Thread(new aj(this, null));
    localThread.setName(f);
    e = localThread;
    localThread.start();
  }
  
  public void a(int paramInt, ak paramak, View paramView)
  {
    if (paramak == null) {
      return;
    }
    if (e == null) {
      a();
    }
    synchronized (b)
    {
      paramak = new ai(paramInt, paramak, paramView);
      if (c.get(b) == null)
      {
        b.add(paramak);
        c.put(b, Integer.valueOf(paramInt));
        b.notifyAll();
      }
      return;
    }
  }
  
  protected abstract boolean a(ai paramai);
  
  protected abstract boolean b(ai paramai);
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */