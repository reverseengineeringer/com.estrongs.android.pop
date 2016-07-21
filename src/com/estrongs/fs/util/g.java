package com.estrongs.fs.util;

import com.estrongs.a.b.o;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.fs.impl.local.m;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public class g
{
  public long a = 0L;
  public int b = 0;
  public int c = 0;
  public long d = 0L;
  public long e = 0L;
  public long f = 0L;
  public long g = 0L;
  public long h = 0L;
  public long i = 0L;
  public long j = 0L;
  public long k = 0L;
  public long l = 0L;
  public long m = 0L;
  public long n = 0L;
  public long o = 0L;
  boolean p = false;
  private h q;
  
  public g() {}
  
  public g(h paramh)
  {
    q = paramh;
  }
  
  public g(File paramFile)
  {
    a(paramFile);
  }
  
  public void a()
  {
    p = true;
  }
  
  public void a(File paramFile)
  {
    int i2 = 0;
    if (p) {}
    for (;;)
    {
      return;
      if (q != null) {
        q.a(paramFile);
      }
      label134:
      label237:
      long l1;
      if ((!ap.bC(paramFile.getPath())) && (m.a(FexApplication.a(), false)))
      {
        Object localObject;
        if ("/".equals(paramFile.getPath()))
        {
          localObject = com.estrongs.fs.impl.local.i.a(paramFile.getPath(), com.estrongs.fs.i.c, o.a).iterator();
          for (;;)
          {
            if (!((Iterator)localObject).hasNext()) {
              break label134;
            }
            com.estrongs.fs.h localh = (com.estrongs.fs.h)((Iterator)localObject).next();
            if (p) {
              break;
            }
            try
            {
              a(new File(localh.getAbsolutePath()));
            }
            catch (StackOverflowError localStackOverflowError3) {}
          }
        }
        if ((com.estrongs.fs.impl.local.i.h(paramFile.getPath())) && (paramFile.getName().trim().length() > 0))
        {
          c += 1;
          paramFile = com.estrongs.fs.impl.local.i.a(paramFile.getPath(), com.estrongs.fs.i.c, o.a).iterator();
          for (;;)
          {
            if (!paramFile.hasNext()) {
              break label237;
            }
            localObject = (com.estrongs.fs.h)paramFile.next();
            if (p) {
              break;
            }
            try
            {
              a(new File(((com.estrongs.fs.h)localObject).getAbsolutePath()));
            }
            catch (StackOverflowError localStackOverflowError1) {}
          }
          continue;
        }
        b += 1;
        l1 = com.estrongs.fs.impl.local.i.e(paramFile.getPath());
        a(paramFile.getName(), l1);
        a = (l1 + a);
        return;
      }
      File[] arrayOfFile;
      int i3;
      int i1;
      label317:
      File localFile;
      if ("/".equals(paramFile.getPath()))
      {
        if (p) {
          continue;
        }
        arrayOfFile = paramFile.listFiles();
        if (arrayOfFile != null)
        {
          i3 = arrayOfFile.length;
          i1 = 0;
          if (i1 < i3)
          {
            localFile = arrayOfFile[i1];
            if (p) {
              continue;
            }
          }
        }
      }
      try
      {
        a(localFile);
        i1 += 1;
        break label317;
        if ((paramFile.isDirectory()) && (paramFile.getName().trim().length() > 0))
        {
          c += 1;
          paramFile = paramFile.listFiles();
          if (paramFile == null) {
            continue;
          }
          i3 = paramFile.length;
          i1 = i2;
          if (i1 >= i3) {
            continue;
          }
          arrayOfFile = paramFile[i1];
          if (p) {
            continue;
          }
        }
      }
      catch (StackOverflowError localStackOverflowError4)
      {
        try
        {
          for (;;)
          {
            a(arrayOfFile);
            i1 += 1;
          }
          b += 1;
          l1 = b(paramFile);
          a(paramFile.getName(), l1);
          a = (l1 + a);
          return;
          localStackOverflowError4 = localStackOverflowError4;
        }
        catch (StackOverflowError localStackOverflowError2)
        {
          for (;;) {}
        }
      }
    }
  }
  
  public void a(String paramString, long paramLong)
  {
    int i1 = bg.b(paramString);
    if (bg.F(i1))
    {
      j += paramLong;
      k += 1L;
      return;
    }
    if (bg.e(i1))
    {
      f += paramLong;
      g += 1L;
      return;
    }
    if (bg.g(i1))
    {
      h += paramLong;
      i += 1L;
      return;
    }
    if (bg.a(i1))
    {
      d += paramLong;
      e += 1L;
      return;
    }
    if ((bg.j(i1)) || (bg.x(i1)) || (bg.B(i1)) || (bg.y(i1)) || (bg.m(i1)))
    {
      l += paramLong;
      m += 1L;
      return;
    }
    n += paramLong;
    o += 1L;
  }
  
  public void a(List<File> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      a((File)paramList.next());
    }
  }
  
  public long b()
  {
    return a;
  }
  
  protected long b(File paramFile)
  {
    return paramFile.length();
  }
  
  public int c()
  {
    return b;
  }
  
  public int d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */