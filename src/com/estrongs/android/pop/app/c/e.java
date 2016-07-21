package com.estrongs.android.pop.app.c;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class e
{
  g a;
  private final ArrayList<g> b = new ArrayList();
  private final Map<i, Integer> c = new HashMap();
  private boolean d;
  private Thread e;
  private String f = "MusicTagLoader";
  
  public e()
  {
    this(null);
  }
  
  public e(String paramString)
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
    Thread localThread = new Thread(new h(this, null));
    localThread.setName(f);
    e = localThread;
    localThread.start();
  }
  
  public void a(int paramInt, i parami, View paramView)
  {
    if (parami == null) {
      return;
    }
    if (e == null) {
      a();
    }
    synchronized (b)
    {
      parami = new g(paramInt, parami, paramView);
      if (c.get(b) == null)
      {
        b.add(parami);
        c.put(b, Integer.valueOf(paramInt));
        b.notifyAll();
      }
      return;
    }
  }
  
  protected abstract boolean a(g paramg);
  
  protected abstract boolean b(g paramg);
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */