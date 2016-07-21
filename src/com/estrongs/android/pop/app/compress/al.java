package com.estrongs.android.pop.app.compress;

import android.widget.EditText;
import com.estrongs.fs.FileSystemException;
import com.estrongs.io.archive.aeszip.k;
import com.estrongs.io.archive.e;
import com.estrongs.io.archive.j;
import com.estrongs.io.archive.sevenzip.f;
import com.estrongs.io.archive.sevenzip.x;
import java.io.IOException;
import java.util.Map;

class al
  extends Thread
{
  al(aj paramaj, String paramString)
  {
    super(paramString);
  }
  
  public void run()
  {
    Object localObject1 = null;
    try
    {
      if (("7z".equalsIgnoreCase(aj.i(a))) && (!f.a(null, f.a)))
      {
        aj.p(a).sendMessage(aj.p(a).obtainMessage(1, 10, 0, null));
        a.a();
        return;
      }
      str2 = aj.g(a);
      aj.p(a).b(str2);
      str1 = aj.l(a).getText().toString();
      localMap = aj.c(a, str1);
      if (!"zip".equalsIgnoreCase(aj.i(a))) {
        break label287;
      }
      if (str1.length() > 0) {
        a.b = new k(str2, aj.a(a), localMap);
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Map localMap;
        aj.p(a).sendMessage(aj.p(a).obtainMessage(2, localIOException.getMessage()));
        localIOException.printStackTrace();
        a.a();
        return;
        if ("7z".equalsIgnoreCase(aj.i(a)))
        {
          aj localaj = a;
          com.estrongs.io.a.a.b localb = aj.a(a);
          if (str1.length() != 0) {
            break;
          }
          b = new x(str2, localb, localIOException);
        }
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        String str2;
        String str1;
        aj.p(a).sendMessage(aj.p(a).obtainMessage(2, localNullPointerException.getMessage()));
        localNullPointerException.printStackTrace();
        a.a();
        return;
        Object localObject2 = str1;
        continue;
        aj.p(a).sendMessage(aj.p(a).obtainMessage(1, 10, 0, str2));
        com.estrongs.fs.a.b.a().a(str2);
      }
    }
    catch (FileSystemException localFileSystemException)
    {
      aj.p(a).sendMessage(aj.p(a).obtainMessage(2, localFileSystemException.getMessage()));
      localFileSystemException.printStackTrace();
      a.a();
    }
    if (a.b == null) {
      a.b = new j(str2, aj.a(a), localMap);
    }
    a.b.a(aj.q(a));
    if (aj.a(a).b())
    {
      aj.p(a).sendMessage(aj.p(a).obtainMessage(1, 10, 0, null));
      a.a();
      return;
    }
    label287:
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */