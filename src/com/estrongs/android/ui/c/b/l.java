package com.estrongs.android.ui.c.b;

import android.os.Handler;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.c.a.f;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.ui.pcs.w;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.am;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class l
  extends a
{
  static s i;
  static Object j = new Object();
  private Handler k;
  private Interpolator l;
  private List<String> m = null;
  private q n = null;
  private Object o = new Object();
  
  public l(FileExplorerActivity paramFileExplorerActivity, LinearLayout paramLinearLayout, boolean paramBoolean)
  {
    super(paramFileExplorerActivity, paramLinearLayout, paramBoolean);
  }
  
  public static s a(String paramString)
  {
    for (;;)
    {
      try
      {
        synchronized (j)
        {
          if ((i != null) && (ic > 0L))
          {
            paramString = i;
            return paramString;
          }
          i = new s();
          ia = paramString;
          if (!r.a().b()) {
            continue;
          }
          boolean bool = ak.b();
          if (!bool) {
            continue;
          }
        }
      }
      catch (Exception paramString)
      {
        continue;
      }
      try
      {
        paramString = com.estrongs.fs.impl.j.b.k(ia);
        ib = paramString[1];
        ic = paramString[0];
        paramString = i;
        return paramString;
        paramString = finally;
        throw paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        ib = 0L;
        ic = 0L;
        continue;
      }
      ib = 0L;
      ic = 0L;
    }
  }
  
  private void a(f paramf)
  {
    if (r.a().c())
    {
      paramf.a(2130837917, w.f());
      return;
    }
    if (r.a().b())
    {
      paramf.a(2130837915);
      return;
    }
    paramf.a(2130837916, w.f());
  }
  
  private void a(s params)
  {
    Object localObject = a;
    localObject = (f)e.get(localObject);
    if (localObject == null) {
      return;
    }
    if ((b > 0L) && (!h)) {
      new Thread(new o(this, params, (f)localObject)).start();
    }
    for (;;)
    {
      ((f)localObject).a(b, c);
      return;
      ((f)localObject).b(b, c);
    }
  }
  
  private void b(String paramString)
  {
    f localf = new f(a);
    localf.a(2130837719);
    localf.a(z.b(paramString));
    localf.b(0L, 0L);
    localf.a(new n(this, paramString));
    localf.b(paramString);
    if (!m.contains(paramString)) {
      m.add(paramString);
    }
    e.put(paramString, localf);
  }
  
  private boolean c(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (e != null)
    {
      bool1 = bool2;
      if (e.containsKey(paramString))
      {
        e.remove(paramString);
        bool1 = true;
      }
    }
    bool2 = bool1;
    if (m != null)
    {
      bool2 = bool1;
      if (m.contains(paramString))
      {
        m.remove(paramString);
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static boolean m()
  {
    return (i != null) && (ic > 0L);
  }
  
  private List<String> n()
  {
    List localList = am.a();
    String str = com.estrongs.android.pop.b.b();
    if (localList.remove(str)) {
      localList.add(0, str);
    }
    return localList;
  }
  
  private void o()
  {
    synchronized (o)
    {
      if (n == null)
      {
        n = new q(this, d);
        n.start();
      }
      return;
    }
  }
  
  private f p()
  {
    Iterator localIterator = e.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (am.az(str)) {
        return (f)e.get(str);
      }
    }
    return null;
  }
  
  protected void b()
  {
    k = new Handler();
    l = new DecelerateInterpolator(0.7F);
    o();
    a.a(new m(this));
  }
  
  protected String f()
  {
    return "storage_device_block";
  }
  
  protected List<String> g()
  {
    if (m == null) {
      m = n();
    }
    return m;
  }
  
  protected void h()
  {
    e = new HashMap();
    Object localObject = g();
    String str = com.estrongs.android.pop.b.b();
    if (((List)localObject).remove(str)) {
      ((List)localObject).add(0, str);
    }
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      b((String)((Iterator)localObject).next());
    }
  }
  
  protected int i()
  {
    return 2130903064;
  }
  
  protected int j()
  {
    return 1;
  }
  
  protected int k()
  {
    return 1;
  }
  
  public void l()
  {
    super.l();
    o();
    f localf = p();
    if (localf != null) {
      a(localf);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */