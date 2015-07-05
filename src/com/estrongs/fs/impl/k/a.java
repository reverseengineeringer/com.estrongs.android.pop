package com.estrongs.fs.impl.k;

import com.estrongs.fs.m;
import java.io.File;

public class a
  extends com.estrongs.fs.a
{
  private File a = null;
  
  public a(File paramFile)
  {
    super(paramFile.getPath());
    a = paramFile;
    setName(paramFile.getName());
  }
  
  protected m doGetFileType()
  {
    if (a.isDirectory()) {
      return m.a;
    }
    return m.b;
  }
  
  public boolean exists()
  {
    return a.exists();
  }
  
  public long lastModified()
  {
    return a.lastModified();
  }
  
  public long length()
  {
    return a.length();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */