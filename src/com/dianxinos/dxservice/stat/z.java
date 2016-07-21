package com.dianxinos.dxservice.stat;

import com.dianxinos.dxservice.a.e;
import java.util.Map;

class z
  implements Runnable
{
  private z(x paramx) {}
  
  public void run()
  {
    if (x.b(a).a())
    {
      x.c(a).remove(this);
      return;
    }
    Boolean localBoolean = (Boolean)x.c(a).get(this);
    if ((localBoolean != null) && (localBoolean.booleanValue())) {}
    for (int i = 1; i != 0; i = 0)
    {
      x.c(a).put(this, Boolean.valueOf(false));
      e.a(this, x.d().longValue());
      return;
    }
    x.c(a).remove(this);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */