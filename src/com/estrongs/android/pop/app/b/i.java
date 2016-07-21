package com.estrongs.android.pop.app.b;

import com.estrongs.fs.a;
import com.estrongs.fs.w;

public class i
  extends a
{
  public boolean a;
  public String b;
  
  public i(String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    this(paramString1, paramString2, paramLong1, null);
    lastModified = paramLong2;
  }
  
  public i(String paramString1, String paramString2, long paramLong, String paramString3)
  {
    absolutePath = paramString1;
    path = ("log://" + paramString1);
    name = paramString2;
    size = paramLong;
    b = paramString3;
    if (paramLong == -1L)
    {
      setFileType(w.a);
      return;
    }
    setFileType(w.b);
  }
  
  public i(String paramString1, String paramString2, long paramLong1, String paramString3, long paramLong2)
  {
    this(paramString1, paramString2, paramLong1, paramString3);
    lastModified = paramLong2;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */