package com.jcraft.jsch;

class UserAuthKeyboardInteractive
  extends UserAuth
{
  public boolean a(Session paramSession)
  {
    super.a(paramSession);
    if ((a != null) && (!(a instanceof UIKeyboardInteractive))) {}
    Object localObject1;
    Object localObject3;
    int i;
    label115:
    int k;
    do
    {
      do
      {
        return false;
        localObject1 = d + "@" + m;
        localObject3 = localObject1;
        if (o != 22) {
          localObject3 = localObject1 + ":" + o;
        }
        localObject1 = q;
        byte[] arrayOfByte = Util.b(d);
        i = 0;
        if (l >= k) {
          break label841;
        }
        b.a();
        c.a((byte)50);
        c.b(arrayOfByte);
        c.b(Util.b("ssh-connection"));
        c.b(Util.b("keyboard-interactive"));
        c.b(Util.a);
        c.b(Util.a);
        paramSession.b(b);
        k = 1;
        for (;;)
        {
          c = paramSession.a(c);
          j = c.n() & 0xFF;
          if (j == 52) {
            return true;
          }
          if (j != 53) {
            break;
          }
          c.d();
          c.g();
          c.g();
          localObject2 = c.j();
          c.j();
          localObject2 = Util.b((byte[])localObject2);
          if (a != null) {
            a.d((String)localObject2);
          }
        }
        if (j != 51) {
          break;
        }
        c.d();
        c.g();
        c.g();
        localObject2 = c.j();
        if (c.g() != 0) {
          throw new JSchPartialAuthException(Util.b((byte[])localObject2));
        }
      } while (k != 0);
      l += 1;
      if (i == 0) {
        break;
      }
      throw new JSchAuthCancelException("keyboard-interactive");
    } while (j != 60);
    c.d();
    c.g();
    c.g();
    Object localObject2 = Util.b(c.j());
    Object localObject4 = Util.b(c.j());
    Util.b(c.j());
    int m = c.d();
    String[] arrayOfString = new String[m];
    boolean[] arrayOfBoolean = new boolean[m];
    int j = 0;
    if (j >= m)
    {
      if ((localObject1 == null) || (arrayOfString.length != 1) || (arrayOfBoolean[0] != 0) || (arrayOfString[0].toLowerCase().indexOf("password:") < 0)) {
        break label675;
      }
      localObject2 = new byte[1][];
      localObject2[0] = localObject1;
      localObject1 = null;
    }
    for (;;)
    {
      label548:
      b.a();
      c.a((byte)61);
      if ((m > 0) && ((localObject2 == null) || (m != localObject2.length)))
      {
        if (localObject2 == null)
        {
          c.a(m);
          j = 0;
          label598:
          if (j < m) {}
        }
        for (;;)
        {
          j = i;
          if (localObject2 == null) {
            j = 1;
          }
          paramSession.b(b);
          k = 0;
          i = j;
          break;
          arrayOfString[j] = Util.b(c.j());
          if (c.g() != 0) {}
          for (int n = 1;; n = 0)
          {
            arrayOfBoolean[j] = n;
            j += 1;
            break;
          }
          label675:
          if (((m <= 0) && (((String)localObject2).length() <= 0) && (((String)localObject4).length() <= 0)) || (a == null)) {
            break label843;
          }
          localObject4 = ((UIKeyboardInteractive)a).a((String)localObject3, (String)localObject2, (String)localObject4, arrayOfString, arrayOfBoolean);
          if (localObject4 == null) {
            break label843;
          }
          localObject2 = new byte[localObject4.length][];
          j = 0;
          while (j < localObject4.length)
          {
            localObject2[j] = Util.b(localObject4[j]);
            j += 1;
          }
          break label548;
          c.b(Util.a);
          j += 1;
          break label598;
          c.a(0);
        }
      }
      c.a(m);
      k = 0;
      for (;;)
      {
        j = i;
        if (k >= m) {
          break;
        }
        c.b(localObject2[k]);
        k += 1;
      }
      break label115;
      label841:
      break;
      label843:
      localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.UserAuthKeyboardInteractive
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */