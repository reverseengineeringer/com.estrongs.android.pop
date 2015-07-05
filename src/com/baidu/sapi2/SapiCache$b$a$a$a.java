package com.baidu.sapi2;

import android.text.TextUtils;
import com.baidu.android.common.security.MD5Util;
import com.baidu.cloudsdk.common.http.HttpResponseHandler;

class SapiCache$b$a$a$a
  extends HttpResponseHandler
{
  SapiCache$b$a$a$a(SapiCache.b.a.a parama) {}
  
  public void onFailure(Throwable paramThrowable, String paramString) {}
  
  public void onSuccess(String paramString)
  {
    if ((!TextUtils.isEmpty(a.a.a.a)) && (!TextUtils.isEmpty(paramString)) && (a.a.a.c.c.equals(MD5Util.toMd5(paramString.getBytes(), false))))
    {
      c.a(SapiCache.f()).a(a.a.c);
      SapiCache.a(a.a.a.a, paramString);
      SapiCache.a(SapiCache.f(), b.a.a.a(a.a.a.a), paramString.getBytes());
      SapiCache.a(b.a.a.c(a.a.a.a), paramString.getBytes());
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiCache.b.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */