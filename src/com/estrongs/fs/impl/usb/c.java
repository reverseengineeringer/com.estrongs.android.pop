package com.estrongs.fs.impl.usb;

import com.estrongs.fs.a;
import com.estrongs.fs.w;

public class c
  extends a
{
  protected boolean a = true;
  protected boolean b = true;
  private com.estrongs.fs.impl.usb.fs.c c = null;
  
  public c(com.estrongs.fs.impl.usb.fs.c paramc, String paramString)
  {
    super(paramString);
    c = paramc;
    String str = paramc.b();
    paramString = str;
    if (paramc.a())
    {
      paramString = str;
      if (str.endsWith("/")) {
        paramString = str.substring(0, str.length() - 1);
      }
    }
    size = paramc.f();
    if (paramc.a()) {}
    for (type = w.a;; type = w.b)
    {
      lastModified = paramc.i();
      setName(paramString);
      return;
    }
  }
  
  protected boolean canDelete()
  {
    return canWrite();
  }
  
  protected boolean canRead()
  {
    return b;
  }
  
  protected boolean canWrite()
  {
    return a;
  }
  
  public boolean exists()
  {
    return true;
  }
  
  public void setName(String paramString)
  {
    int i = 0;
    if (name != null) {
      i = 1;
    }
    super.setName(paramString);
    if ((i != 0) && (getFileType().a()))
    {
      if (!path.endsWith("/")) {
        path += "/";
      }
      if (!absolutePath.endsWith("/")) {
        absolutePath += "/";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */