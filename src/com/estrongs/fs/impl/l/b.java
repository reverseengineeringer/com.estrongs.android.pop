package com.estrongs.fs.impl.l;

import com.estrongs.fs.a;
import com.estrongs.fs.w;
import java.io.File;

public class b
  extends a
{
  protected String a;
  private File b;
  private long c;
  private int d;
  private int e;
  
  public b(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    super(paramString2, paramString3);
    type = w.b;
    a = paramString1;
    size = paramLong1;
    lastModified = paramLong2;
    d = paramInt1;
    e = paramInt2;
    name = paramString4;
  }
  
  private void d()
  {
    if (b == null) {
      b = new File(absolutePath);
    }
  }
  
  public long a()
  {
    return c;
  }
  
  public void a(long paramLong)
  {
    c = paramLong;
  }
  
  public int b()
  {
    return d;
  }
  
  public int c()
  {
    return e;
  }
  
  protected w doGetFileType()
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
      d();
      lastModified = b.lastModified();
    }
    return lastModified;
  }
  
  public long length()
  {
    if (size <= 0L)
    {
      d();
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
 * Qualified Name:     com.estrongs.fs.impl.l.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */