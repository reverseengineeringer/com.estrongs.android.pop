package com.estrongs.fs;

import com.estrongs.android.util.am;

public class o
  extends a
{
  public o(h paramh, String paramString)
  {
    if (paramh.getPath().equals(paramh.getAbsolutePath()))
    {
      if (paramh.getPath().endsWith("/")) {}
      for (paramh = paramh.getPath() + paramString;; paramh = paramh.getPath() + "/" + paramString)
      {
        absolutePath = paramh;
        path = paramh;
        return;
      }
    }
    String str;
    if (paramh.getPath().endsWith("/"))
    {
      str = paramh.getPath() + paramString;
      path = str;
      if (!paramh.getAbsolutePath().endsWith("/")) {
        break label222;
      }
    }
    label222:
    for (paramh = paramh.getAbsolutePath() + paramString;; paramh = paramh.getAbsolutePath() + "/" + paramString)
    {
      absolutePath = paramh;
      return;
      str = paramh.getPath() + "/" + paramString;
      break;
    }
  }
  
  public o(String paramString)
  {
    super(paramString);
    name = am.d(paramString);
    if (paramString.endsWith("/")) {
      type = m.c(paramString);
    }
  }
  
  public o(String paramString, boolean paramBoolean)
  {
    super(paramString);
    name = am.d(paramString);
    if (paramBoolean)
    {
      type = m.b;
      return;
    }
    type = m.a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */