package com.dianxinos.library.notify.data;

import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.h.b;

public class n
  extends ShowRule
{
  public Integer h;
  public Integer i;
  public Integer j;
  
  private boolean a(ShowRule.ShowType paramShowType, int paramInt)
  {
    int k = b.a(b, paramShowType);
    if (k < paramInt) {}
    for (boolean bool = true;; bool = false)
    {
      if ((e.c) && (!bool)) {
        j.b("checkShowTimes failure.totalShowTimes:" + paramInt + ",alreadyShowTimes:" + k + ",showType:" + paramShowType.getType());
      }
      return bool;
    }
  }
  
  public boolean c()
  {
    int k;
    int m;
    if (!c(ShowRule.ShowType.ICON))
    {
      k = 1;
      if (c(ShowRule.ShowType.WIDGET)) {
        break label55;
      }
      m = 1;
      label24:
      if (c(ShowRule.ShowType.NOTF)) {
        break label60;
      }
    }
    label55:
    label60:
    for (int n = 1;; n = 0)
    {
      if ((k == 0) || (m == 0) || (n == 0)) {
        break label65;
      }
      return true;
      k = 0;
      break;
      m = 0;
      break label24;
    }
    label65:
    return false;
  }
  
  protected boolean c(ShowRule.ShowType paramShowType)
  {
    if (paramShowType == ShowRule.ShowType.ICON) {
      if (h != null) {}
    }
    do
    {
      do
      {
        return true;
        return a(paramShowType, h.intValue());
        if (paramShowType != ShowRule.ShowType.WIDGET) {
          break;
        }
      } while (i == null);
      return a(paramShowType, i.intValue());
      if (paramShowType != ShowRule.ShowType.NOTF) {
        break;
      }
    } while (j == null);
    return a(paramShowType, j.intValue());
    return false;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */