package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class dr$4
  implements kn.a<byte[], byte[]>
{
  dr$4(dr paramdr, s params) {}
  
  public void a(kn<byte[], byte[]> paramkn, byte[] paramArrayOfByte)
  {
    kg.a(3, dr.c(), "AdRequest: HTTP status code is:" + paramkn.h());
    dr.a(b, new ArrayList());
    List localList = Collections.emptyList();
    if ((paramkn.f()) && (paramArrayOfByte != null))
    {
      paramkn = null;
      try
      {
        paramArrayOfByte = (cm)dr.d(b).d(paramArrayOfByte);
        paramkn = paramArrayOfByte;
      }
      catch (Exception paramArrayOfByte)
      {
        Object localObject;
        for (;;)
        {
          kg.a(5, dr.c(), "Failed to decode ad response: " + paramArrayOfByte);
        }
        if (c.size() <= 0) {
          break label281;
        }
        kg.b(dr.c(), "Ad server responded with the following error(s):");
        paramArrayOfByte = c.iterator();
        while (paramArrayOfByte.hasNext())
        {
          localObject = (String)paramArrayOfByte.next();
          kg.b(dr.c(), (String)localObject);
        }
        label281:
        if (a == null) {
          break label437;
        }
      }
      if (paramkn != null)
      {
        paramArrayOfByte = d;
        if (paramArrayOfByte != null)
        {
          paramArrayOfByte = a;
          if (paramArrayOfByte != null)
          {
            kg.a(3, dr.c(), "Ad server responded with configuration.");
            localObject = new dp();
            a = paramArrayOfByte;
            kc.a().a((ka)localObject);
          }
        }
        if (b != null)
        {
          paramArrayOfByte = b.iterator();
          while (paramArrayOfByte.hasNext())
          {
            localObject = new be((cv)paramArrayOfByte.next());
            i.a().k().a((be)localObject);
          }
        }
        paramkn = a;
        paramArrayOfByte = paramkn;
        if (!TextUtils.isEmpty(dr.e(b)))
        {
          paramArrayOfByte = paramkn;
          if (paramkn.size() == 0) {
            kg.b(dr.c(), "Ad server responded but sent no ad units.");
          }
        }
      }
    }
    for (paramArrayOfByte = paramkn;; paramArrayOfByte = localList)
    {
      paramkn = paramArrayOfByte.iterator();
      while (paramkn.hasNext())
      {
        paramArrayOfByte = (co)paramkn.next();
        if (d.size() != 0)
        {
          if ((a instanceof x)) {
            f.a().a("nativeAdReturned", 1);
          }
          paramArrayOfByte = new au(paramArrayOfByte);
          dr.f(b).add(paramArrayOfByte);
        }
      }
      dr.a(b, dr.a.e);
      js.a().b(new dr.4.1(this));
      return;
      label437:
      paramkn = localList;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dr.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */