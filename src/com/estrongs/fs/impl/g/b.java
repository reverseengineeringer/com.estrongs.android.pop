package com.estrongs.fs.impl.g;

import com.estrongs.fs.a;
import com.estrongs.fs.m;
import java.io.File;

public class b
  extends a
{
  protected String a;
  private File b;
  
  public b(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong1, long paramLong2)
  {
    super(paramString2, paramString3);
    type = m.b;
    a = paramString1;
    size = paramLong1;
    lastModified = paramLong2;
    name = paramString4;
  }
  
  private void a()
  {
    if (b == null) {
      b = new File(absolutePath);
    }
  }
  
  protected m doGetFileType()
  {
    return type;
  }
  
  public String getPath()
  {
    return path;
  }
  
  public long lastModified()
  {
    if (lastModified <= 0L)
    {
      a();
      lastModified = b.lastModified();
    }
    return lastModified;
  }
  
  public long length()
  {
    if (size <= 0L)
    {
      a();
      size = b.length();
    }
    return size;
  }
  
  public void setName(String paramString)
  {
    if (name != null)
    {
      String str = name;
      absolutePath = (absolutePath.substring(0, absolutePath.lastIndexOf(str)) + paramString);
    }
    name = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.g.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */