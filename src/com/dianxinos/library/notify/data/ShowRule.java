package com.dianxinos.library.notify.data;

import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.h.b;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public abstract class ShowRule
{
  public String a;
  public String b;
  public Long c;
  public Long d;
  public List<Integer> e = new ArrayList(7);
  public Integer f;
  public Checkers g;
  
  private boolean d()
  {
    long l = System.currentTimeMillis();
    return (c.longValue() < l) && (l < d.longValue());
  }
  
  private boolean e()
  {
    Calendar localCalendar = Calendar.getInstance();
    int i = localCalendar.get(7);
    return (((Integer)e.get((i + 7 - 2) % 7)).intValue() >> localCalendar.get(11) % 24 & 0x1) != 0;
  }
  
  private boolean f()
  {
    if (f == null) {}
    long l1;
    long l2;
    do
    {
      return true;
      l1 = b.a(b);
      l2 = System.currentTimeMillis();
    } while ((f.intValue() + l1 < l2) || (l1 > l2));
    return false;
  }
  
  public boolean a()
  {
    long l = System.currentTimeMillis();
    return d.longValue() < l;
  }
  
  public boolean a(ShowRule.ShowType paramShowType)
  {
    return (b(paramShowType)) && (b());
  }
  
  public boolean b()
  {
    if (g == null) {
      return true;
    }
    return g.doCheck();
  }
  
  public boolean b(ShowRule.ShowType paramShowType)
  {
    if (!d()) {
      if (e.c) {
        j.b("checkShowDay failure.Start day:" + c + ",end day:" + d + ",current day:" + System.currentTimeMillis());
      }
    }
    do
    {
      do
      {
        return false;
        if (e()) {
          break;
        }
      } while (!e.c);
      j.b("checkShowWeek failure");
      return false;
    } while ((!c(paramShowType)) || (!f()));
    return true;
  }
  
  public abstract boolean c();
  
  protected abstract boolean c(ShowRule.ShowType paramShowType);
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.ShowRule
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */