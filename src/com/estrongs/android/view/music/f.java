package com.estrongs.android.view.music;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.text.TextUtils;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.app.AudioPlayerService;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.pop.app.gp;
import com.estrongs.android.pop.app.gq;
import com.estrongs.android.pop.view.a;
import java.util.Iterator;
import java.util.List;

public class f
{
  private static final String c = f.class.getSimpleName();
  int a = -1;
  int b = -1;
  private gq d = null;
  private List<String> e = null;
  private String f = null;
  private String[] g = null;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private Context l;
  private l m = null;
  private boolean n = false;
  private com.estrongs.android.pop.app.c.k o = new com.estrongs.android.pop.app.c.k();
  private Handler p = new Handler();
  private int q = 0;
  private int r = 0;
  private gp s = new g(this);
  private final BroadcastReceiver t = new h(this);
  private final BroadcastReceiver u = new i(this);
  private ServiceConnection v = new j(this);
  
  private void a(int paramInt1, int paramInt2)
  {
    if (d != null) {
      new k(this, paramInt1, paramInt2).start();
    }
    if ((m != null) && (!i)) {
      m.a(paramInt1, paramInt2);
    }
  }
  
  private void a(gq paramgq)
  {
    if (paramgq == null) {
      return;
    }
    paramgq.a(null);
    if (((paramgq.e()) && (!paramgq.f())) || (paramgq.d()))
    {
      paramgq.a(true);
      return;
    }
    paramgq.n();
    paramgq.a(false);
    paramgq.q();
    paramgq.z();
    n = false;
  }
  
  private void k()
  {
    if (!n)
    {
      ContextWrapper localContextWrapper = new ContextWrapper(l);
      localContextWrapper.startService(new Intent(localContextWrapper, AudioPlayerService.class));
      n = true;
    }
    l();
  }
  
  private void l()
  {
    if (!h)
    {
      l.bindService(new Intent(l, AudioPlayerService.class), v, 1);
      h = true;
    }
  }
  
  private void m()
  {
    if (h)
    {
      l.unbindService(v);
      h = false;
    }
  }
  
  private void n()
  {
    int i2 = 0;
    int i1;
    if (e != null)
    {
      d.q();
      com.estrongs.android.pop.app.c.j localj = m.a().b();
      if (a == -1L) {
        localj.d();
      }
      for (;;)
      {
        i1 = 0;
        while (i1 < e.size())
        {
          localj.b((String)e.get(i1));
          i1 += 1;
        }
        m.a().a(null);
        localj = m.a().b();
      }
      d.a(localj);
      r = d.v();
      q = d.u();
      i1 = d.i();
      if ((m != null) && (!i)) {
        m.a(i1, true);
      }
      f = d.g();
      if (!d.e()) {
        break label332;
      }
      i1 = d.l();
      if (!d.f()) {
        break label268;
      }
      if ((m != null) && (!i))
      {
        m.d(i1);
        m.a(i1);
      }
    }
    for (;;)
    {
      return;
      if (d.h() != null)
      {
        r = d.v();
        q = d.u();
        break;
      }
      i();
      break;
      label268:
      if (d.d())
      {
        if ((m != null) && (!i)) {
          m.a(i1);
        }
      }
      else if ((m != null) && (!i))
      {
        m.a(i1);
        m.c(i1);
        return;
        label332:
        if ((d.h() != null) && (!d.h().c().isEmpty()))
        {
          i1 = d.l();
          if (i1 == -1) {
            i1 = i2;
          }
          while ((m != null) && (!i))
          {
            m.d(i1);
            m.a(i1);
            return;
          }
        }
      }
    }
  }
  
  public void a()
  {
    if (d != null)
    {
      d.a(s);
      if (d.e())
      {
        i1 = d.l();
        if (d.f()) {
          if ((m != null) && (!i)) {
            m.d(i1);
          }
        }
      }
    }
    while ((!a.a.startsWith("Spreadtrum")) && (!a.a.equalsIgnoreCase("Huawei")))
    {
      int i1;
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (!d.d()) {
                break;
              }
            } while ((m == null) || (i));
            m.a(i1);
            return;
          } while ((m == null) || (i));
          m.e(i1);
          return;
        } while (!d.f());
        i1 = d.l();
        d.d(i1);
      } while ((m == null) || (i));
      m.a(i1);
      return;
    }
    l();
  }
  
  public void a(Context paramContext)
  {
    l = paramContext;
    k();
  }
  
  public void a(l paraml)
  {
    m = paraml;
  }
  
  public void b()
  {
    if ((d != null) && (d.e()) && (!d.f())) {
      d.a(true);
    }
    while (d == null) {
      return;
    }
    d.n();
    d.a(false);
  }
  
  protected void c()
  {
    if (d != null)
    {
      k = d.f();
      if ((d.e()) && (!k)) {
        d.o();
      }
    }
    if ((a.a.startsWith("Spreadtrum")) || (a.a.equalsIgnoreCase("Huawei"))) {
      m();
    }
    if ((m != null) && (!i)) {
      m.b();
    }
  }
  
  protected void d()
  {
    i = true;
    b();
    c();
    if (d != null) {
      m();
    }
    try
    {
      for (;;)
      {
        if (!a.a.equalsIgnoreCase("Market"))
        {
          l.unregisterReceiver(t);
          l.unregisterReceiver(u);
        }
        if (d != null) {
          a(d);
        }
        return;
        if ((a.a.startsWith("Spreadtrum")) || (a.a.equalsIgnoreCase("Huawei")))
        {
          if (k)
          {
            k = false;
            l();
          }
          else
          {
            m();
          }
        }
        else {
          m();
        }
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void e()
  {
    int i1 = 1;
    if ((d == null) || (d.h() == null)) {}
    label52:
    label122:
    label125:
    for (;;)
    {
      return;
      boolean bool;
      if (((d.e()) && (!d.f())) || (d.d()))
      {
        bool = true;
        if ((!bool) || (d.c() <= 5000L)) {
          break label122;
        }
        f();
      }
      for (;;)
      {
        if (i1 != 0) {
          break label125;
        }
        i1 = d.k();
        d.q();
        if ((m == null) || (i)) {
          break;
        }
        m.a(i1, bool);
        return;
        bool = false;
        break label52;
        i1 = 0;
      }
    }
  }
  
  public void f()
  {
    d.a(0L);
  }
  
  public boolean g()
  {
    if (d == null) {}
    while (d.h() == null) {
      return false;
    }
    if ((!d.e()) || (d.f())) {
      if (d.f()) {
        d.p();
      }
    }
    for (;;)
    {
      return true;
      d.x();
      continue;
      d.w();
    }
  }
  
  public void h()
  {
    int i1;
    l locall;
    if (d != null)
    {
      i1 = d.j();
      bool = d.f();
      d.q();
      if ((m != null) && (!i))
      {
        locall = m;
        if (bool) {
          break label62;
        }
      }
    }
    label62:
    for (boolean bool = true;; bool = false)
    {
      locall.a(i1, bool);
      return;
    }
  }
  
  public void i()
  {
    for (;;)
    {
      try
      {
        ai localai = ai.b(l);
        m localm = m.a();
        Object localObject3 = localai.D();
        if (TextUtils.isEmpty((CharSequence)localObject3)) {
          break label200;
        }
        Object localObject1 = localm.j();
        if (localObject1 == null) {
          break label200;
        }
        Iterator localIterator = ((List)localObject1).iterator();
        if (!localIterator.hasNext()) {
          break label200;
        }
        localObject1 = (com.estrongs.android.pop.app.c.j)localIterator.next();
        if (!((com.estrongs.android.pop.app.c.j)localObject1).a().equals(localObject3)) {
          continue;
        }
        localObject3 = localObject1;
        if (localObject1 == null) {
          localObject3 = localm.e();
        }
        if (d != null) {
          d.a((com.estrongs.android.pop.app.c.j)localObject3);
        }
        localObject1 = localai.E();
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject3 = ((com.estrongs.android.pop.app.c.j)localObject3).c().iterator();
          i1 = 0;
          if (((Iterator)localObject3).hasNext())
          {
            if (nextb.equals(localObject1))
            {
              if ((m != null) && (!i)) {
                m.a(i1, false);
              }
              return;
            }
            i1 += 1;
            continue;
          }
        }
        int i1 = 0;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      continue;
      label200:
      Object localObject2 = null;
    }
  }
  
  public gq j()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */