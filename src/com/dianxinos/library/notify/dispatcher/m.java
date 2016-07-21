package com.dianxinos.library.notify.dispatcher;

import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.dxbase.o;
import com.dianxinos.library.notify.d.d;

class m
  implements d
{
  m(b paramb) {}
  
  public void a(int paramInt, byte[] paramArrayOfByte)
  {
    int i = 1;
    boolean bool;
    if (e.c)
    {
      StringBuilder localStringBuilder = new StringBuilder().append("response: ").append(paramInt).append(", data is empty: ");
      if (paramArrayOfByte == null)
      {
        bool = true;
        j.b(bool);
      }
    }
    else
    {
      com.dianxinos.library.notify.h.b.b(System.currentTimeMillis());
      if ((paramInt != 1) || (paramArrayOfByte == null)) {
        break label89;
      }
      paramInt = i;
      label69:
      if (paramInt == 0) {
        break label94;
      }
      a.a(5, paramArrayOfByte);
    }
    label89:
    label94:
    do
    {
      return;
      bool = false;
      break;
      paramInt = 0;
      break label69;
      if ((!b.f(a)) && (b.g(a)))
      {
        b.h(a);
        return;
      }
    } while ((b.f(a)) || (b.g(a)));
    o.c(new n(this));
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.dispatcher.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */