package com.jcraft.jsch;

class UserAuthPassword
  extends UserAuth
{
  private final int e = 60;
  
  public boolean a(Session paramSession)
  {
    super.a(paramSession);
    Object localObject3 = q;
    Object localObject4 = d + "@" + m;
    Object localObject2 = localObject4;
    Object localObject1 = localObject3;
    if (o != 22)
    {
      localObject2 = localObject4 + ":" + o;
      localObject1 = localObject3;
    }
    int i;
    try
    {
      i = l;
      int j = k;
      if (i >= j)
      {
        if (localObject1 != null) {
          Util.d((byte[])localObject1);
        }
        return false;
      }
      if (localObject1 == null)
      {
        localObject3 = a;
        if (localObject3 == null)
        {
          if (localObject1 != null) {
            Util.d((byte[])localObject1);
          }
          return false;
        }
        if (!a.c("Password for " + (String)localObject2)) {
          throw new JSchAuthCancelException("password");
        }
      }
    }
    finally {}
    for (;;)
    {
      if (localObject1 != null) {
        Util.d((byte[])localObject1);
      }
      throw paramSession;
      localObject3 = a.a();
      if (localObject3 == null) {
        throw new JSchAuthCancelException("password");
      }
      localObject3 = Util.b((String)localObject3);
      localObject1 = localObject3;
      for (;;)
      {
        try
        {
          localObject3 = Util.b(d);
          b.a();
          c.a((byte)50);
          c.b((byte[])localObject3);
          c.b(Util.b("ssh-connection"));
          c.b(Util.b("password"));
          c.a((byte)0);
          c.b((byte[])localObject1);
          paramSession.b(b);
          c = paramSession.a(c);
          i = c.n();
          i &= 0xFF;
          if (i == 52)
          {
            if (localObject1 != null) {
              Util.d((byte[])localObject1);
            }
            return true;
          }
          if (i == 53)
          {
            c.d();
            c.g();
            c.g();
            localObject4 = c.j();
            c.j();
            localObject4 = Util.b((byte[])localObject4);
            if (a != null) {
              a.d((String)localObject4);
            }
          }
          else if (i == 60)
          {
            c.d();
            c.g();
            c.g();
            localObject4 = c.j();
            c.j();
            if ((a == null) || (!(a instanceof UIKeyboardInteractive)))
            {
              if (a != null) {
                a.d("Password must be changed.");
              }
              if (localObject1 != null) {
                Util.d((byte[])localObject1);
              }
              return false;
            }
            UIKeyboardInteractive localUIKeyboardInteractive = (UIKeyboardInteractive)a;
            boolean[] arrayOfBoolean = new boolean[1];
            localObject4 = localUIKeyboardInteractive.a((String)localObject2, "Password Change Required", Util.b((byte[])localObject4), new String[] { "New Password: " }, arrayOfBoolean);
            if (localObject4 == null) {
              throw new JSchAuthCancelException("password");
            }
            localObject4 = Util.b(localObject4[0]);
            b.a();
            c.a((byte)50);
            c.b((byte[])localObject3);
            c.b(Util.b("ssh-connection"));
            c.b(Util.b("password"));
            c.a((byte)1);
            c.b((byte[])localObject1);
            c.b((byte[])localObject4);
            Util.d((byte[])localObject4);
            paramSession.b(b);
          }
          else
          {
            if (i == 51)
            {
              c.d();
              c.g();
              c.g();
              localObject3 = c.j();
              if (c.g() != 0) {
                throw new JSchPartialAuthException(Util.b((byte[])localObject3));
              }
              l += 1;
              if (localObject1 == null) {
                continue;
              }
              Util.d((byte[])localObject1);
              localObject1 = null;
              break;
            }
            if (localObject1 != null) {
              Util.d((byte[])localObject1);
            }
            return false;
            break;
          }
        }
        finally {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.UserAuthPassword
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */