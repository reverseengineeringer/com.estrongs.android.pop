package com.estrongs.fs.impl.adb;

import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.m;

public class a
  extends com.estrongs.fs.a
{
  private e a;
  
  public a(e parame)
  {
    super(c.a(parame));
    a = parame;
    setName(a.a);
  }
  
  public String a()
  {
    return a.b;
  }
  
  public String b()
  {
    return a.c;
  }
  
  public int c()
  {
    return a.d;
  }
  
  protected boolean canDelete()
  {
    return true;
  }
  
  protected boolean canRead()
  {
    return true;
  }
  
  protected boolean canWrite()
  {
    return false;
  }
  
  public long createdTime()
  {
    return 0L;
  }
  
  protected m doGetFileType()
  {
    return m.b;
  }
  
  public boolean exists()
  {
    try
    {
      boolean bool = com.estrongs.old.fs.impl.a.c.b().b(getAbsolutePath());
      return bool;
    }
    catch (Exception localException)
    {
      throw new FileSystemException(localException);
    }
  }
  
  public m getFileType()
  {
    return m.b;
  }
  
  public boolean hasPermission(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    case 0: 
      return canRead();
    case 1: 
      return canWrite();
    }
    return canDelete();
  }
  
  public long lastAccessed()
  {
    return 0L;
  }
  
  public long lastModified()
  {
    return a.h;
  }
  
  public long length()
  {
    return a.g;
  }
  
  public String toString()
  {
    return getAbsolutePath();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.adb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */