package com.flurry.sdk;

import android.os.FileObserver;
import java.io.File;
import java.io.IOException;

public class aq
{
  private static final String a = aq.class.getSimpleName();
  private final String b;
  private final long c;
  private final boolean d;
  private FileObserver e;
  private ai f;
  
  public aq(String paramString, long paramLong, boolean paramBoolean)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      throw new IllegalArgumentException("The cache must have a name");
    }
    b = paramString;
    c = paramLong;
    d = paramBoolean;
  }
  
  public aq.b a(String paramString)
  {
    if (f == null) {}
    while (paramString == null) {
      return null;
    }
    try
    {
      Object localObject = f.a(ff.c(paramString));
      if (localObject == null) {
        break label97;
      }
      localObject = new aq.b(this, (ai.c)localObject, d, null);
      paramString = (String)localObject;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        kg.a(3, a, "Exception during getReader for cache: " + b + " key: " + paramString, localIOException);
        lt.a(null);
        paramString = null;
        continue;
        paramString = null;
      }
    }
    return paramString;
  }
  
  public void a()
  {
    try
    {
      File localFile = new File(ff.a(b), "canary");
      if ((!ls.a(localFile)) || ((!localFile.exists()) && (!localFile.createNewFile()))) {
        throw new IOException("Could not create canary file.");
      }
    }
    catch (IOException localIOException)
    {
      kg.a(3, a, "Could not open cache: " + b);
      return;
    }
    e = new aq.1(this, localIOException.getAbsolutePath());
    e.startWatching();
    f = ai.a(ff.a(b), 1, 1, c);
  }
  
  public aq.c b(String paramString)
  {
    if (f == null) {}
    while (paramString == null) {
      return null;
    }
    try
    {
      Object localObject = f.b(ff.c(paramString));
      if (localObject == null) {
        break label97;
      }
      localObject = new aq.c(this, (ai.a)localObject, d, null);
      paramString = (String)localObject;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        kg.a(3, a, "Exception during getWriter for cache: " + b + " key: " + paramString, localIOException);
        lt.a(null);
        paramString = null;
        continue;
        paramString = null;
      }
    }
    return paramString;
  }
  
  public void b()
  {
    if (e != null)
    {
      e.stopWatching();
      e = null;
    }
    lt.a(f);
  }
  
  public void c()
  {
    d();
    a();
  }
  
  public boolean c(String paramString)
  {
    if (f == null) {}
    while (paramString == null) {
      return false;
    }
    try
    {
      boolean bool = f.c(ff.c(paramString));
      return bool;
    }
    catch (IOException localIOException)
    {
      kg.a(3, a, "Exception during remove for cache: " + b + " key: " + paramString, localIOException);
    }
    return false;
  }
  
  public void d()
  {
    if (f == null) {
      return;
    }
    try
    {
      f.a();
      return;
    }
    catch (IOException localIOException)
    {
      kg.a(3, a, "Exception during delete for cache: " + b, localIOException);
    }
  }
  
  public boolean d(String paramString)
  {
    boolean bool = false;
    if (f == null) {}
    while (paramString == null) {
      return false;
    }
    try
    {
      paramString = f.a(ff.c(paramString));
      if (paramString != null) {
        bool = true;
      }
      lt.a(paramString);
      return bool;
    }
    catch (IOException paramString)
    {
      kg.a(3, a, "Exception during exists for cache: " + b, paramString);
      return false;
    }
    finally
    {
      lt.a(null);
    }
  }
  
  protected void finalize()
  {
    super.finalize();
    b();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */