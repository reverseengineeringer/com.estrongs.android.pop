package com.dianxinos.library.notify.data;

import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.h.b;

public class m
  extends ShowRule
{
  public Integer h;
  
  public boolean c()
  {
    return !c(ShowRule.ShowType.NORMAL);
  }
  
  protected boolean c(ShowRule.ShowType paramShowType)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    if (h == null) {
      return bool2;
    }
    int i = b.a(b, paramShowType);
    if (i < h.intValue()) {}
    for (;;)
    {
      bool2 = bool1;
      if (!e.c) {
        break;
      }
      bool2 = bool1;
      if (bool1) {
        break;
      }
      j.b("checkShowTimes failure.totalShowTimes:" + h + ",alreadyShowTimes:" + i + ",showType:" + paramShowType.getType());
      return bool1;
      bool1 = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */