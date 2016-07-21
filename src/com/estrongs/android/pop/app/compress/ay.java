package com.estrongs.android.pop.app.compress;

import com.estrongs.fs.FileSystemException;
import com.estrongs.io.archive.aeszip.k;
import com.estrongs.io.archive.c;
import com.estrongs.io.archive.j;
import com.estrongs.io.archive.sevenzip.f;
import com.estrongs.io.archive.sevenzip.x;
import java.io.IOException;

class ay
  extends Thread
{
  ay(ax paramax, String paramString)
  {
    super(paramString);
  }
  
  public void run()
  {
    Object localObject1 = null;
    try
    {
      if (("7z".equalsIgnoreCase(aa).d)) && (!f.a(null, f.a)))
      {
        ax.b(a).sendMessage(ax.b(a).obtainMessage(1, 10, 0, null));
        ax.a(a, false);
        return;
      }
      str2 = aa).a;
      ax.b(a).b(str2);
      str1 = aa).b;
      if (!"zip".equalsIgnoreCase(aa).d)) {
        break label299;
      }
      if (str1.length() > 0) {
        a.a = new k(str2, ax.c(a), aa).e);
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        ax.b(a).sendMessage(ax.b(a).obtainMessage(2, localIOException.getMessage()));
        localIOException.printStackTrace();
        return;
        if ("7z".equalsIgnoreCase(aa).d))
        {
          ax localax = a;
          com.estrongs.io.a.a.b localb = ax.c(a);
          if (str1.length() != 0) {
            break;
          }
          a = new x(str2, localb, localIOException);
        }
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      String str2;
      for (;;)
      {
        String str1;
        ax.a(a, false);
        ax.b(a).sendMessage(ax.b(a).obtainMessage(2, localNullPointerException.getMessage()));
        localNullPointerException.printStackTrace();
        return;
        Object localObject2 = str1;
      }
      ax.a(a, false);
      ax.b(a).sendMessage(ax.b(a).obtainMessage(1, 10, 0, str2));
      com.estrongs.fs.a.b.a().a(str2);
      return;
    }
    catch (FileSystemException localFileSystemException)
    {
      ax.a(a, false);
      ax.b(a).sendMessage(ax.b(a).obtainMessage(2, localFileSystemException.getMessage()));
      localFileSystemException.printStackTrace();
    }
    if (a.a == null) {
      a.a = new j(str2, ax.c(a), aa).e);
    }
    a.a.a(aa).c);
    if (ax.c(a).b())
    {
      ax.a(a, false);
      ax.b(a).sendMessage(ax.b(a).obtainMessage(1, 10, 0, null));
      return;
    }
    label299:
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */