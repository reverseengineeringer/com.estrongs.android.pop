package com.estrongs.android.d;

import android.widget.ImageView;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class k
{
  boolean a = false;
  m b;
  m c;
  private final ArrayList<m> d = new ArrayList();
  private final Map<String, m> e = new HashMap();
  private boolean f;
  private Thread g;
  private String h = "ThumnailLoader";
  
  public k()
  {
    this(null);
  }
  
  public k(String paramString)
  {
    if (paramString != null) {
      h = paramString;
    }
    e();
  }
  
  private void e()
  {
    if (g != null) {
      return;
    }
    f = false;
    Thread localThread = new Thread(new n(this, null));
    localThread.setPriority(1);
    localThread.setName(h);
    g = localThread;
    localThread.start();
  }
  
  public void a()
  {
    a = true;
  }
  
  public void a(int paramInt, h paramh, ImageView paramImageView)
  {
    if (paramh == null) {
      return;
    }
    if (g == null) {
      e();
    }
    for (;;)
    {
      synchronized (d)
      {
        paramImageView = new m(paramInt, paramh, paramImageView);
        b = ((m)e.get(paramh.getPath()));
        if (b == null)
        {
          d.add(paramImageView);
          e.put(paramh.getPath(), paramImageView);
          if (!a) {
            d.notifyAll();
          }
          return;
        }
      }
      d.remove(b);
      d.add(paramImageView);
    }
  }
  
  protected abstract boolean a(m paramm);
  
  public void b()
  {
    a = false;
    synchronized (d)
    {
      d.notifyAll();
      return;
    }
  }
  
  protected abstract boolean b(m paramm);
  
  public void c()
  {
    f = true;
    synchronized (d)
    {
      d.clear();
      d.notifyAll();
      g = null;
      return;
    }
  }
  
  public void d()
  {
    if (d.size() >= 1) {}
    synchronized (d)
    {
      d.clear();
      e.clear();
      if (c != null) {
        c.g = false;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */