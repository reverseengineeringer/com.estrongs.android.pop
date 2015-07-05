package com.estrongs.fs.impl.e;

import com.estrongs.fs.h;
import com.estrongs.fs.m;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;

public class a
  implements h
{
  protected int a = -2;
  protected boolean b = true;
  private File c;
  private String d;
  
  public a(File paramFile)
  {
    c = paramFile;
    if ((!paramFile.isDirectory()) && ((paramFile instanceof ArchiveEntryFile)) && (((ArchiveEntryFile)paramFile).isEncrypted()))
    {
      d = (paramFile.getName() + " * ");
      return;
    }
    d = paramFile.getName();
  }
  
  public File a()
  {
    return c;
  }
  
  public long createdTime()
  {
    return lastModified();
  }
  
  public boolean exists()
  {
    return false;
  }
  
  public String getAbsolutePath()
  {
    return c.getAbsolutePath();
  }
  
  public int getESFileType()
  {
    return a;
  }
  
  public Object getExtra(String paramString)
  {
    return null;
  }
  
  public m getFileType()
  {
    if (c.isDirectory()) {
      return m.a;
    }
    return m.b;
  }
  
  public String getName()
  {
    return d;
  }
  
  public String getPath()
  {
    return c.getPath();
  }
  
  public boolean hasPermission(int paramInt)
  {
    return false;
  }
  
  public boolean isLink()
  {
    return false;
  }
  
  public long lastAccessed()
  {
    return 0L;
  }
  
  public long lastModified()
  {
    return c.lastModified();
  }
  
  public long length()
  {
    return c.length();
  }
  
  public Object putExtra(String paramString, Object paramObject)
  {
    return null;
  }
  
  public void setESFileType(int paramInt)
  {
    a = paramInt;
  }
  
  public void setFileType(m paramm) {}
  
  public void setName(String paramString) {}
  
  public void setShouldTryLoadThumbnail(boolean paramBoolean)
  {
    b = false;
  }
  
  public boolean shouldTryLoadThumbnail()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */