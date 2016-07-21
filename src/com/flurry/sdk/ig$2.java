package com.flurry.sdk;

import java.util.List;

class ig$2
  implements kn.a<byte[], byte[]>
{
  ig$2(ig paramig, long paramLong, boolean paramBoolean) {}
  
  public void a(kn<byte[], byte[]> paramkn, byte[] paramArrayOfByte)
  {
    Object localObject2 = null;
    int i = paramkn.h();
    kg.a(3, ig.e(), "Proton config request: HTTP status code is:" + i);
    if ((i == 400) || (i == 406) || (i == 412) || (i == 415)) {
      ig.a(c, 10000L);
    }
    for (;;)
    {
      return;
      Object localObject1 = localObject2;
      if (paramkn.f())
      {
        localObject1 = localObject2;
        if (paramArrayOfByte != null) {
          js.a().b(new ig.2.1(this, paramArrayOfByte));
        }
      }
      try
      {
        paramArrayOfByte = (ht)ig.e(c).d(paramArrayOfByte);
        localObject1 = paramArrayOfByte;
        if (!ig.a(c, paramArrayOfByte)) {
          localObject1 = null;
        }
        if (localObject1 != null)
        {
          ig.a(c, 10000L);
          ig.b(c, a);
          ig.a(c, b);
          ig.b(c, (ht)localObject1);
          ig.f(c);
          if (!ig.g(c))
          {
            ig.b(c, true);
            ig.a(c, "flurry.session_start", null);
          }
          ig.h(c);
        }
        if (localObject1 != null) {
          continue;
        }
        l1 = ig.i(c);
        if (i == 429)
        {
          paramkn = paramkn.b("Retry-After");
          if (!paramkn.isEmpty())
          {
            paramkn = (String)paramkn.get(0);
            kg.a(3, ig.e(), "Server returned retry time: " + paramkn);
          }
        }
      }
      catch (Exception paramArrayOfByte)
      {
        for (;;)
        {
          long l1;
          try
          {
            long l2 = Long.parseLong(paramkn);
            l1 = l2 * 1000L;
            ig.a(c, l1);
            kg.a(3, ig.e(), "Proton config request failed, backing off: " + ig.i(c) + "ms");
            js.a().b(ig.j(c), ig.i(c));
            return;
          }
          catch (NumberFormatException paramkn)
          {
            kg.a(3, ig.e(), "Server returned nonsensical retry time");
          }
          paramArrayOfByte = paramArrayOfByte;
          kg.a(5, ig.e(), "Failed to decode proton config response: " + paramArrayOfByte);
          paramArrayOfByte = null;
          continue;
          l1 <<= 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ig.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */