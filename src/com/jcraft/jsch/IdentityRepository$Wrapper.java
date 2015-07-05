package com.jcraft.jsch;

import java.util.Vector;

public class IdentityRepository$Wrapper
  implements IdentityRepository
{
  private IdentityRepository a;
  private Vector b = new Vector();
  private boolean c = false;
  
  IdentityRepository$Wrapper(IdentityRepository paramIdentityRepository)
  {
    this(paramIdentityRepository, false);
  }
  
  IdentityRepository$Wrapper(IdentityRepository paramIdentityRepository, boolean paramBoolean)
  {
    a = paramIdentityRepository;
    c = paramBoolean;
  }
  
  public Vector a()
  {
    int j = 0;
    Vector localVector1 = new Vector();
    int i = 0;
    Vector localVector2;
    if (i >= b.size())
    {
      localVector2 = a.a();
      i = j;
    }
    for (;;)
    {
      if (i >= localVector2.size())
      {
        return localVector1;
        localVector1.add((Identity)b.elementAt(i));
        i += 1;
        break;
      }
      localVector1.add(localVector2.elementAt(i));
      i += 1;
    }
  }
  
  void a(Identity paramIdentity)
  {
    if ((!c) && (!paramIdentity.d()) && ((paramIdentity instanceof IdentityFile))) {}
    try
    {
      a.a(((IdentityFile)paramIdentity).f().a());
      return;
    }
    catch (JSchException paramIdentity) {}
    b.addElement(paramIdentity);
    return;
  }
  
  public boolean a(byte[] paramArrayOfByte)
  {
    return a.a(paramArrayOfByte);
  }
  
  public void b()
  {
    b.removeAllElements();
    a.b();
  }
  
  public boolean b(byte[] paramArrayOfByte)
  {
    return a.b(paramArrayOfByte);
  }
  
  void c()
  {
    Object[] arrayOfObject;
    int i;
    if (b.size() > 0)
    {
      arrayOfObject = b.toArray();
      i = 0;
    }
    for (;;)
    {
      if (i >= arrayOfObject.length) {
        return;
      }
      Identity localIdentity = (Identity)arrayOfObject[i];
      b.removeElement(localIdentity);
      a(localIdentity);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.IdentityRepository.Wrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */