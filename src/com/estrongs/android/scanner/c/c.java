package com.estrongs.android.scanner.c;

import android.content.ContentValues;
import android.database.DatabaseUtils;
import com.estrongs.android.scanner.a.a;
import com.estrongs.android.scanner.a.b;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.a.f;
import com.estrongs.android.scanner.d.m;
import com.estrongs.android.scanner.d.q;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

public class c
  implements g
{
  private static final String a = c.class.getSimpleName();
  private final m b = new m();
  private final AtomicBoolean c = new AtomicBoolean(false);
  
  public com.estrongs.android.scanner.a.c a(String paramString1, String paramString2, int paramInt)
  {
    if (paramInt == 3)
    {
      if (paramString1.endsWith("/")) {
        break label168;
      }
      paramString1 = paramString1 + "/";
    }
    label168:
    for (;;)
    {
      paramString2 = b.e(paramString1);
      if (paramString2 != null) {
        return new b(paramString1, ap.d(paramString1), paramString2.a(), 0L);
      }
      l.e(a, "maybe is not directory:" + paramString1);
      File localFile;
      do
      {
        do
        {
          return null;
        } while (paramInt == 0);
        localFile = new File(paramString1);
      } while (!localFile.isDirectory());
      paramString2 = paramString1;
      if (!paramString1.endsWith("/")) {
        paramString2 = paramString1 + "/";
      }
      long l = localFile.lastModified();
      return new b(paramString2, localFile.getName(), l);
    }
  }
  
  public d a(String paramString1, String paramString2)
  {
    return null;
  }
  
  public void a(a parama)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("path LIKE ");
    localStringBuilder.append(DatabaseUtils.sqlEscapeString(parama.d() + "%"));
    ContentValues localContentValues = new ContentValues();
    int i = parama.c();
    if (i == 11) {
      localContentValues.put("pathtype", Integer.valueOf(3));
    }
    for (;;)
    {
      b.a(localStringBuilder.toString(), localContentValues);
      do
      {
        return;
      } while (i != 12);
      localContentValues.put("pathtype", Integer.valueOf(0));
    }
  }
  
  public void a(f paramf) {}
  
  public void a(com.estrongs.android.scanner.a.g paramg)
  {
    if (paramg.e()) {
      if (c.compareAndSet(true, false)) {
        b.a(paramg.b());
      }
    }
    com.estrongs.android.scanner.a.c localc;
    do
    {
      return;
      localc = paramg.a();
    } while (!(localc instanceof b));
    c.set(true);
    String str = paramg.d();
    if (paramg.c() == 3)
    {
      l.b(a, "sync dirty directory:" + str);
      b.d(str);
      return;
    }
    if (paramg.c() == 1)
    {
      paramg = (b)localc;
      l.b(a, "sync new directory:" + str);
      b.a(paramg);
      return;
    }
    l.b(a, "sync old directory:" + str);
    localc.a(b.a(str));
    b.b(localc);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      b.d();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */