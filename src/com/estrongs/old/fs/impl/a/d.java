package com.estrongs.old.fs.impl.a;

import org.apache.commons.net.ftp.FTPClient;

public class d
  extends FTPClient
{
  public boolean a = false;
  private g b;
  private String c;
  
  public d(String paramString, g paramg)
  {
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
 * Qualified Name:     com.estrongs.old.fs.impl.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */