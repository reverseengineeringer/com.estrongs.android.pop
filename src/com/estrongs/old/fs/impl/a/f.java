package com.estrongs.old.fs.impl.a;

import org.apache.commons.net.ftp.FTPSClient;

public class f
  extends FTPSClient
{
  public boolean a = false;
  private g b;
  private String c;
  
  public f(String paramString, g paramg, boolean paramBoolean)
  {
    super(paramBoolean);
    c = paramString;
    b = paramg;
  }
  
  public void disconnect()
  {
    if ((a) || (c.d()))
    {
      super.disconnect();
      return;
    }
    c.a(c, b);
  }
  
  public boolean logout()
  {
    if ((a) || (c.d())) {
      return super.logout();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */