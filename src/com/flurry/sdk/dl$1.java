package com.flurry.sdk;

import java.util.Iterator;
import java.util.List;

class dl$1
  implements kn.a<byte[], byte[]>
{
  dl$1(dl paramdl, String paramString1, String paramString2) {}
  
  public void a(kn<byte[], byte[]> paramkn, byte[] paramArrayOfByte)
  {
    int i = paramkn.h();
    if ((paramkn.f()) && (paramArrayOfByte != null)) {}
    for (;;)
    {
      try
      {
        paramkn = (dg)dl.a(c).d(paramArrayOfByte);
        if ((paramkn == null) || (!a.equals("success"))) {
          break;
        }
        kg.a(5, dl.b(c), "FlurryAdLogsManager: ad report " + a + " sent. HTTP response: " + i);
        if ((kg.c() <= 3) && (kg.d())) {
          js.a().a(new dl.1.1(this));
        }
        dl.a(c, a, b, i);
        dl.c(c);
        return;
      }
      catch (Exception paramkn)
      {
        kg.a(5, dl.a(), "Failed to decode sdk log response: " + paramkn);
      }
      paramkn = null;
    }
    if (paramkn != null)
    {
      paramkn = b.iterator();
      while (paramkn.hasNext())
      {
        paramArrayOfByte = (String)paramkn.next();
        kg.a(6, dl.d(c), paramArrayOfByte);
      }
    }
    dl.a(c, a, b);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */