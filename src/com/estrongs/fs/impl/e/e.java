package com.estrongs.fs.impl.e;

import com.estrongs.bluetooth.parser.OBEXElement;
import com.estrongs.fs.w;
import java.util.Date;

public class e
  extends com.estrongs.fs.a
{
  private OBEXElement a;
  
  public e(OBEXElement paramOBEXElement, String paramString)
  {
    super(paramString);
    a = paramOBEXElement;
    setName(paramOBEXElement.a());
  }
  
  protected boolean canDelete()
  {
    return canWrite();
  }
  
  protected boolean canRead()
  {
    boolean bool = false;
    if (a.h().charAt(0) == 'R') {
      bool = true;
    }
    return bool;
  }
  
  protected boolean canWrite()
  {
    boolean bool = true;
    if (a.h().length() == 1) {
      return false;
    }
    if (a.h().charAt(1) == 'W') {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  protected w doGetFileType()
  {
    if (a.e()) {
      return w.a;
    }
    return w.b;
  }
  
  public boolean exists()
  {
    return a.d(getAbsolutePath());
  }
  
  public long lastModified()
  {
    if (a.f() == null) {
      return 0L;
    }
    return a.f().getTime();
  }
  
  public long length()
  {
    return a.c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.e.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */