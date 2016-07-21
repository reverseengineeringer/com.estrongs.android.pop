package com.dianxinos.library.notify.d;

import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.network.s;

class c
  extends com.dianxinos.library.notify.network.b
{
  c(b paramb, d paramd) {}
  
  public void a(int paramInt, s params)
  {
    switch (paramInt)
    {
    }
    do
    {
      do
      {
        return;
        params = a.a(g);
        if (params == null) {
          break;
        }
        if (e.c) {
          j.b("succeed pull web data from network");
        }
        a.a(1, params);
      } while (!e.c);
      j.b("latest data came from network:");
      return;
      if (e.c) {
        j.b("failed pull web data because of IOException when read InputStream");
      }
      a.a(-7, null);
      return;
      params = a.a(g);
      if (params == null) {
        break;
      }
      if (e.c) {
        j.b("succeed pull web data from local valid cache");
      }
      a.a(1, params);
    } while (!e.b);
    j.b("latest data came from valid cache:");
    return;
    if (e.c) {
      j.b("failed pull web data because of IOException when read local cache file");
    }
    a.a(-2, null);
  }
  
  public void b(int paramInt, s params)
  {
    if (e.c) {
      j.b("failed pull web data,reason code is " + paramInt + ",exception message is " + c.getMessage());
    }
    a.a(paramInt, null);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */