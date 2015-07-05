package com.jcraft.jsch;

import java.util.Vector;

class UserAuthPublicKey
  extends UserAuth
{
  public boolean a(Session paramSession)
  {
    super.a(paramSession);
    for (;;)
    {
      byte[] arrayOfByte2;
      int i;
      Identity localIdentity;
      byte[] arrayOfByte1;
      int j;
      Object localObject;
      synchronized (paramSession.i().a())
      {
        if (???.size() <= 0) {
          return false;
        }
        arrayOfByte2 = Util.b(d);
        i = 0;
        if (i >= ???.size()) {
          return false;
        }
        if (l >= k) {
          return false;
        }
        localIdentity = (Identity)???.elementAt(i);
        arrayOfByte1 = localIdentity.a();
        if (arrayOfByte1 != null)
        {
          b.a();
          c.a((byte)50);
          c.b(arrayOfByte2);
          c.b(Util.b("ssh-connection"));
          c.b(Util.b("publickey"));
          c.a((byte)0);
          c.b(Util.b(localIdentity.b()));
          c.b(arrayOfByte1);
          paramSession.b(b);
          c = paramSession.a(c);
          j = c.n() & 0xFF;
          if ((j == 60) || (j == 51) || (j != 53)) {
            break label942;
          }
          c.d();
          c.g();
          c.g();
          localObject = c.j();
          c.j();
          localObject = Util.b((byte[])localObject);
          if (a == null) {
            continue;
          }
          a.d((String)localObject);
        }
      }
      label472:
      label851:
      label933:
      label942:
      while (j == 60)
      {
        j = 5;
        if ((localIdentity.d()) && (0 == 0))
        {
          if (a == null) {
            throw new JSchException("USERAUTH fail");
          }
          if ((localIdentity.d()) && (!a.b("Passphrase for " + localIdentity.c()))) {
            throw new JSchAuthCancelException("publickey");
          }
          localObject = a.b();
          if (localObject == null) {}
        }
        for (localObject = Util.b((String)localObject);; localObject = null)
        {
          if (((!localIdentity.d()) || (localObject != null)) && (localIdentity.a((byte[])localObject)))
          {
            if ((localObject == null) || (!(paramSession.i() instanceof IdentityRepository.Wrapper))) {
              break label933;
            }
            ((IdentityRepository.Wrapper)paramSession.i()).c();
          }
          for (;;)
          {
            Util.d((byte[])localObject);
            if (localIdentity.d()) {
              break label948;
            }
            if (arrayOfByte1 == null) {}
            for (localObject = localIdentity.a();; localObject = arrayOfByte1)
            {
              if (localObject == null) {
                break label948;
              }
              b.a();
              c.a((byte)50);
              c.b(arrayOfByte2);
              c.b(Util.b("ssh-connection"));
              c.b(Util.b("publickey"));
              c.a((byte)1);
              c.b(Util.b(localIdentity.b()));
              c.b((byte[])localObject);
              localObject = paramSession.a();
              j = localObject.length;
              arrayOfByte1 = new byte[j + 4 + c.c - 5];
              arrayOfByte1[0] = ((byte)(j >>> 24));
              arrayOfByte1[1] = ((byte)(j >>> 16));
              arrayOfByte1[2] = ((byte)(j >>> 8));
              arrayOfByte1[3] = ((byte)j);
              System.arraycopy(localObject, 0, arrayOfByte1, 4, j);
              System.arraycopy(c.b, 5, arrayOfByte1, j + 4, c.c - 5);
              localObject = localIdentity.b(arrayOfByte1);
              if (localObject == null) {
                break;
              }
              c.b((byte[])localObject);
              paramSession.b(b);
              for (;;)
              {
                c = paramSession.a(c);
                j = c.n() & 0xFF;
                if (j == 52)
                {
                  return true;
                  Util.d((byte[])localObject);
                  int k = j - 1;
                  j = k;
                  if (k != 0) {
                    break;
                  }
                  localObject = null;
                  break label472;
                }
                if (j != 53) {
                  break label851;
                }
                c.d();
                c.g();
                c.g();
                localObject = c.j();
                c.j();
                localObject = Util.b((byte[])localObject);
                if (a != null) {
                  a.d((String)localObject);
                }
              }
              if (j != 51) {
                break label948;
              }
              c.d();
              c.g();
              c.g();
              localObject = c.j();
              if (c.g() != 0) {
                throw new JSchPartialAuthException(Util.b((byte[])localObject));
              }
              l += 1;
              break label948;
            }
          }
        }
      }
      label948:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.UserAuthPublicKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */