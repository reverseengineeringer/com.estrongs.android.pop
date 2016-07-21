package com.facebook.ads.internal.server;

import android.content.Context;
import com.facebook.ads.internal.AdErrorType;
import com.facebook.ads.internal.dto.e;
import com.facebook.ads.internal.dto.f;
import com.facebook.ads.internal.http.d;

class a$1
  implements Runnable
{
  a$1(a parama, Context paramContext, e parame) {}
  
  public void run()
  {
    f.b(a);
    c.a = b.e();
    try
    {
      a.a(c, new com.facebook.ads.internal.http.a(a, b.e));
      a.c(c).a(a.a(c), new d(c.a), a.b(c));
      return;
    }
    catch (Exception localException)
    {
      a.a(c, AdErrorType.AD_REQUEST_FAILED.getAdErrorWrapper(localException.getMessage()));
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.server.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */