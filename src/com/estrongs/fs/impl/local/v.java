package com.estrongs.fs.impl.local;

import com.estrongs.fs.a;
import com.estrongs.fs.m;

public class v
  extends a
{
  private long a;
  private long b;
  private String c;
  
  public v(String paramString, boolean paramBoolean)
  {
    super(paramString);
    isLink = paramBoolean;
  }
  
  public String a()
  {
    return c;
  }
  
  public void a(long paramLong)
  {
    a = paramLong;
  }
  
  public void a(String paramString)
  {
    c = paramString;
  }
  
  public void b(long paramLong)
  {
    b = paramLong;
  }
  
  protected m doGetFileType()
  {
    return null;
  }
  
  public long lastModified()
  {
    return a;
  }
  
  public long length()
  {
    return b;
  }
  
  public void setFileType(m paramm)
  {
    type = paramm;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */