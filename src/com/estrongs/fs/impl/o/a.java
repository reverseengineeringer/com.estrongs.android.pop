package com.estrongs.fs.impl.o;

import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.w;

public class a
  extends com.estrongs.fs.a
{
  private NetFileInfo a = null;
  
  public a(NetFileInfo paramNetFileInfo)
  {
    super(path);
    a = paramNetFileInfo;
    setName(name);
  }
  
  public void a(String paramString)
  {
    path = paramString;
  }
  
  public void b(String paramString)
  {
    absolutePath = paramString;
  }
  
  protected boolean canDelete()
  {
    return (!a.isDirectory) || (a.folder_type == 0) || (a.folder_type == 64);
  }
  
  protected boolean canRead()
  {
    return true;
  }
  
  protected boolean canWrite()
  {
    return canDelete();
  }
  
  public long createdTime()
  {
    return 0L;
  }
  
  protected w doGetFileType()
  {
    if (a.isDirectory) {
      return w.a;
    }
    return w.b;
  }
  
  public boolean exists()
  {
    try
    {
      boolean bool = b.e(a.path);
      return bool;
    }
    catch (Exception localException)
    {
      throw new FileSystemException(localException);
    }
  }
  
  public w getFileType()
  {
    if (type == w.L) {
      type = doGetFileType();
    }
    return type;
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
    return a.lastModifiedTime;
  }
  
  public long length()
  {
    return a.size;
  }
  
  public String toString()
  {
    return getAbsolutePath();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.o.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */