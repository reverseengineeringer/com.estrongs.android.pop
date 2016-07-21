package com.dianxinos.library.notify.download;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import com.dianxinos.library.notify.c;
import java.io.File;

class r
{
  private static final File a = Environment.getExternalStorageDirectory();
  private static final File b = Environment.getDownloadCacheDirectory();
  private static final File c;
  private static int d = 0;
  private static final Context e = c.a();
  
  static
  {
    c = e.getCacheDir();
  }
  
  private static int a(long paramLong)
  {
    try
    {
      d = (int)(d + paramLong);
      int i = d;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static long a(File paramFile)
  {
    paramFile = paramFile.listFiles();
    long l1 = 0L;
    long l2;
    if (paramFile == null) {
      l2 = l1;
    }
    do
    {
      return l2;
      int j = paramFile.length;
      int i = 0;
      while (i < j)
      {
        l2 = paramFile[i].length();
        i += 1;
        l1 -= l2;
      }
      l2 = l1;
    } while (!f.a);
    Log.i("rcm-download", "available space (in bytes) in downloads data dir: " + l1);
    return l1;
  }
  
  static File a()
  {
    return c;
  }
  
  static void a(int paramInt, String paramString, long paramLong)
  {
    if (a(paramLong) < 1048576) {
      return;
    }
    b(paramInt, paramString, paramLong);
  }
  
  private static void a(File paramFile, long paramLong, int paramInt)
  {
    if (paramLong == 0L) {}
    for (;;)
    {
      return;
      if ((paramInt == 4) || (paramInt == 0)) {
        try
        {
          if (!Environment.getExternalStorageState().equals("mounted")) {
            throw new StopRequestException(199, "external media not mounted");
          }
        }
        finally {}
      }
      long l1 = b(paramFile);
      long l2;
      if ((l1 < 10485760L) && (l1 < 10485760L))
      {
        if (paramFile.equals(b)) {
          Log.w("rcm-download", "System cache dir ('/cache') is running low on space.space available (in bytes): " + l1);
        }
      }
      else if (paramFile.equals(c))
      {
        l2 = a(c);
        if (l2 >= 10485760L) {
          break label254;
        }
        Log.w("rcm-download", "Downloads data dir: " + paramFile + " is running low on space. space available (in bytes): " + l2);
        break label254;
      }
      while (l1 < paramLong)
      {
        throw new StopRequestException(198, "not enough free space in the filesystem rooted at: " + paramFile + " and unable to free any more");
        throw new StopRequestException(198, "space in the filesystem rooted at: " + paramFile + " is below 10% availability. stopping this download.");
        label254:
        l1 = l2;
        if (l2 < paramLong) {
          l1 = l2;
        }
      }
    }
  }
  
  private static long b(File paramFile)
  {
    StatFs localStatFs = new StatFs(paramFile.getPath());
    long l = localStatFs.getAvailableBlocks();
    l = localStatFs.getBlockSize() * (l - 4L);
    if (f.a) {
      Log.i("rcm-download", "available space (in bytes) in filesystem rooted at: " + paramFile.getPath() + " is: " + l);
    }
    return l;
  }
  
  private static void b()
  {
    try
    {
      d = 0;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static void b(int paramInt, String paramString, long paramLong)
  {
    b();
    File localFile = null;
    if (f.a) {
      Log.i("rcm-download", "in verifySpace, destination: " + paramInt + ", path: " + paramString + ", length: " + paramLong);
    }
    if (paramString == null) {
      throw new IllegalArgumentException("path can't be null");
    }
    switch (paramInt)
    {
    }
    while (localFile == null)
    {
      throw new IllegalStateException("invalid combination of destination: " + paramInt + ", path: " + paramString);
      localFile = c;
      continue;
      localFile = a;
      continue;
      localFile = b;
      continue;
      if (paramString.startsWith(a.getPath())) {
        localFile = a;
      } else if (paramString.startsWith(c.getPath())) {
        localFile = c;
      } else if (paramString.startsWith(b.getPath())) {
        localFile = b;
      }
    }
    a(localFile, paramLong, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */