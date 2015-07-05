package com.estrongs.fs.impl.d;

import com.estrongs.fs.a;
import com.estrongs.fs.h;
import com.estrongs.fs.m;

public abstract class d
  extends a
{
  private h a = null;
  
  public d(h paramh)
  {
    absolutePath = paramh.getAbsolutePath();
    a = paramh;
    name = paramh.getName();
  }
  
  protected abstract String a();
  
  protected m doGetFileType()
  {
    if (a.getFileType().a()) {
      return m.a;
    }
    return m.b;
  }
  
  public boolean exists()
  {
    return a.exists();
  }
  
  public String getPath()
  {
    if (path == null) {
      path = (a() + a.getAbsolutePath().substring(1, a.getAbsolutePath().length()));
    }
    return super.getPath();
  }
  
  public long lastModified()
  {
    return a.lastModified();
  }
  
  public long length()
  {
    return a.length();
  }
  
  public void setName(String paramString)
  {
    if (path == null) {
      getPath();
    }
    super.setName(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */