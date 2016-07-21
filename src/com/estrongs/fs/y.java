package com.estrongs.fs;

import com.estrongs.fs.impl.local.f;
import java.io.File;

public abstract class y
  extends a
{
  private h a = null;
  
  public y(h paramh)
  {
    absolutePath = paramh.getAbsolutePath();
    a = paramh;
    name = paramh.getName();
  }
  
  public y(File paramFile)
  {
    this(new f(paramFile));
  }
  
  protected abstract String a();
  
  protected w doGetFileType()
  {
    if (a.getFileType().a()) {
      return w.a;
    }
    return w.b;
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
 * Qualified Name:     com.estrongs.fs.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */