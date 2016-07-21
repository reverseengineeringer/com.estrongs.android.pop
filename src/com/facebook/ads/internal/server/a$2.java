package com.facebook.ads.internal.server;

import com.facebook.ads.internal.AdErrorType;
import com.facebook.ads.internal.util.d;
import org.json.JSONException;

class a$2
  extends com.facebook.ads.internal.http.c
{
  a$2(a parama) {}
  
  public void a() {}
  
  public void a(int paramInt, String paramString)
  {
    d.b(a.d(a));
    a.a(a, null);
    a.a(a, paramString);
  }
  
  public void a(Throwable paramThrowable, String paramString)
  {
    d.b(a.d(a));
    a.a(a, null);
    try
    {
      Object localObject = a.e(a).a(paramString);
      if (((c)localObject).a() == c.a.b)
      {
        localObject = ((e)localObject).b();
        a locala = a;
        AdErrorType localAdErrorType = AdErrorType.ERROR_MESSAGE;
        if (localObject == null) {}
        for (;;)
        {
          a.a(locala, localAdErrorType.getAdErrorWrapper(paramString));
          return;
          paramString = (String)localObject;
        }
      }
      return;
    }
    catch (JSONException paramString)
    {
      a.a(a, new com.facebook.ads.internal.b(AdErrorType.NETWORK_ERROR, paramThrowable.getMessage()));
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.server.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */