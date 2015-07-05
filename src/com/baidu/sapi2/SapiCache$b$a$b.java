package com.baidu.sapi2;

import android.content.Context;
import com.baidu.sapi2.utils.L;
import java.io.File;

class SapiCache$b$a$b
  implements SapiCache.a
{
  SapiCache$b$a$b(SapiCache.b.a parama) {}
  
  public void a(b.a.a parama)
  {
    String str = b.a.a.a(a);
    parama = b.a.a.c(a);
    if (new File(SapiCache.f().getFilesDir(), str).exists()) {}
    try
    {
      SapiCache.a(parama, SapiCache.e(SapiCache.f(), str).getBytes());
      return;
    }
    catch (Throwable parama)
    {
      L.e(parama);
    }
  }
  
  public void a(b.a.a parama, String paramString) {}
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiCache.b.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */