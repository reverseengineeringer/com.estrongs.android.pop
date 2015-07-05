package com.estrongs.fs.impl.n;

import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import com.estrongs.fs.m;

public class a
  extends com.estrongs.fs.a
{
  public int a;
  private h b = null;
  private String c;
  private String d;
  
  public a(String paramString1, String paramString2, h paramh)
  {
    if (am.aX(paramString1))
    {
      c = paramString1;
      d = paramString2;
      paramString1 = (String)localObject;
    }
    for (;;)
    {
      path = paramString1;
      absolutePath = paramh.getAbsolutePath();
      b = paramh;
      name = paramh.getName();
      return;
      if (paramString1.endsWith("/")) {
        paramString1 = paramString1 + paramh.getName();
      } else {
        paramString1 = paramString1 + "/" + paramh.getName();
      }
    }
  }
  
  public h a()
  {
    return b;
  }
  
  protected m doGetFileType()
  {
    if (b.getFileType().a()) {
      return m.a;
    }
    return m.b;
  }
  
  public boolean exists()
  {
    return b.exists();
  }
  
  public String getPath()
  {
    if (path == null)
    {
      str = am.bE(b.getAbsolutePath());
      if (d == null) {
        break label101;
      }
      str = str.substring(d.length());
      str = str.replace("/", "#");
      if (c.charAt(c.length() - 1) != '/') {
        break label122;
      }
    }
    label101:
    label122:
    for (String str = c + str;; str = c + "/" + str)
    {
      path = str;
      return super.getPath();
      str = str.substring(am.bE(am.aY(c)).length());
      break;
    }
  }
  
  public long lastModified()
  {
    return b.lastModified();
  }
  
  public long length()
  {
    return b.length();
  }
  
  public void setName(String paramString)
  {
    if (path == null) {
      getPath();
    }
    String str = paramString;
    if (name != null)
    {
      str = paramString;
      if (am.aX(com.estrongs.fs.a.a.a(path))) {
        str = paramString.substring(paramString.lastIndexOf("#") + 1);
      }
    }
    super.setName(str);
    b.setName(str);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.n.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */