package com.estrongs.fs.impl.r;

import com.estrongs.fs.w;
import com.estrongs.fs.x;

public class b
  extends x
{
  public long timeForLog;
  
  public b(String paramString1, w paramw, String paramString2)
  {
    super(paramString1, paramw, paramString2);
  }
  
  public b(String paramString1, w paramw, String paramString2, long paramLong)
  {
    super(paramString1, paramw, paramString2);
    timeForLog = paramLong;
  }
  
  public String getName()
  {
    return displayName;
  }
  
  public void setAbsolutePath(String paramString)
  {
    absolutePath = paramString;
  }
  
  public void setName(String paramString)
  {
    displayName = paramString;
  }
  
  public void setPath(String paramString)
  {
    path = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.r.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */