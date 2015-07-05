package com.jcraft.jsch;

public abstract class UserAuth
{
  protected UserInfo a;
  protected Packet b;
  protected Buffer c;
  protected String d;
  
  public boolean a(Session paramSession)
  {
    a = paramSession.c();
    b = h;
    c = b.b();
    d = paramSession.h();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.UserAuth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */