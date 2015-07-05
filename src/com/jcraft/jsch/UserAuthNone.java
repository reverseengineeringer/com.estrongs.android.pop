package com.jcraft.jsch;

class UserAuthNone
  extends UserAuth
{
  private String e = null;
  
  String a()
  {
    return e;
  }
  
  public boolean a(Session paramSession)
  {
    super.a(paramSession);
    b.a();
    c.a((byte)5);
    c.b(Util.b("ssh-userauth"));
    paramSession.b(b);
    if (JSch.d().a(1)) {
      JSch.d().a(1, "SSH_MSG_SERVICE_REQUEST sent");
    }
    c = paramSession.a(c);
    if (c.n() == 6) {}
    for (int i = 1;; i = 0)
    {
      if (JSch.d().a(1)) {
        JSch.d().a(1, "SSH_MSG_SERVICE_ACCEPT received");
      }
      if (i != 0) {
        break;
      }
      return false;
    }
    Object localObject = Util.b(d);
    b.a();
    c.a((byte)50);
    c.b((byte[])localObject);
    c.b(Util.b("ssh-connection"));
    c.b(Util.b("none"));
    paramSession.b(b);
    for (;;)
    {
      c = paramSession.a(c);
      i = c.n() & 0xFF;
      if (i == 52) {
        return true;
      }
      if (i != 53) {
        break;
      }
      c.d();
      c.g();
      c.g();
      localObject = c.j();
      c.j();
      localObject = Util.b((byte[])localObject);
      if (a != null) {
        try
        {
          a.d((String)localObject);
        }
        catch (RuntimeException localRuntimeException) {}
      }
    }
    if (i == 51)
    {
      c.d();
      c.g();
      c.g();
      paramSession = c.j();
      c.g();
      e = Util.b(paramSession);
      return false;
    }
    throw new JSchException("USERAUTH fail (" + i + ")");
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.UserAuthNone
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */