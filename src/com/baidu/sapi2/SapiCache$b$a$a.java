package com.baidu.sapi2;

import android.text.TextUtils;
import com.baidu.cloudsdk.common.http.AsyncHttpClient;

class SapiCache$b$a$a
  implements SapiCache.a
{
  SapiCache$b$a$a(SapiCache.b.a parama) {}
  
  public void a(b.a.a parama)
  {
    new AsyncHttpClient().get(SapiCache.f(), a.a.c.a, SapiCache.c(), new SapiCache.b.a.a.a(this));
  }
  
  public void a(b.a.a parama, String paramString)
  {
    c.a(SapiCache.f()).a(a.c);
    if ((!TextUtils.isEmpty(a.a.a)) && (!TextUtils.isEmpty(paramString)))
    {
      SapiCache.a(a.a.a, paramString);
      SapiCache.a(SapiCache.f(), b.a.a.a(a.a.a), paramString.getBytes());
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiCache.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */