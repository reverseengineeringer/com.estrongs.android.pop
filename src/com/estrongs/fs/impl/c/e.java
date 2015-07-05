package com.estrongs.fs.impl.c;

import com.estrongs.bluetooth.parser.OBEXElement;
import com.estrongs.fs.m;
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
  
  protected m doGetFileType()
  {
    if (a.e()) {
      return m.a;
    }
    return m.b;
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
 * Qualified Name:     com.estrongs.fs.impl.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */