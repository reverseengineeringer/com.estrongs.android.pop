package com.jcraft.jsch;

import java.util.Vector;

class LocalIdentityRepository
  implements IdentityRepository
{
  private Vector a = new Vector();
  private JSch b;
  
  LocalIdentityRepository(JSch paramJSch)
  {
    b = paramJSch;
  }
  
  /* Error */
  public Vector a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 17	java/util/Vector
    //   5: dup
    //   6: invokespecial 18	java/util/Vector:<init>	()V
    //   9: astore_3
    //   10: iconst_0
    //   11: istore_1
    //   12: aload_0
    //   13: getfield 20	com/jcraft/jsch/LocalIdentityRepository:a	Ljava/util/Vector;
    //   16: invokevirtual 28	java/util/Vector:size	()I
    //   19: istore_2
    //   20: iload_1
    //   21: iload_2
    //   22: if_icmplt +7 -> 29
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_3
    //   28: areturn
    //   29: aload_3
    //   30: aload_0
    //   31: getfield 20	com/jcraft/jsch/LocalIdentityRepository:a	Ljava/util/Vector;
    //   34: iload_1
    //   35: invokevirtual 32	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   38: invokevirtual 36	java/util/Vector:addElement	(Ljava/lang/Object;)V
    //   41: iload_1
    //   42: iconst_1
    //   43: iadd
    //   44: istore_1
    //   45: goto -33 -> 12
    //   48: astore_3
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_3
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	LocalIdentityRepository
    //   11	34	1	i	int
    //   19	4	2	j	int
    //   9	21	3	localVector	Vector
    //   48	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	10	48	finally
    //   12	20	48	finally
    //   29	41	48	finally
  }
  
  public void a(Identity paramIdentity)
  {
    try
    {
      if (!a.contains(paramIdentity)) {
        a.addElement(paramIdentity);
      }
      return;
    }
    finally
    {
      paramIdentity = finally;
      throw paramIdentity;
    }
  }
  
  public boolean a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = IdentityFile.a("from remote:", paramArrayOfByte, null, b);
      a.addElement(paramArrayOfByte);
      bool = true;
    }
    catch (JSchException paramArrayOfByte)
    {
      for (;;)
      {
        paramArrayOfByte = paramArrayOfByte;
        boolean bool = false;
      }
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
    return bool;
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_1
    //   4: iload_1
    //   5: aload_0
    //   6: getfield 20	com/jcraft/jsch/LocalIdentityRepository:a	Ljava/util/Vector;
    //   9: invokevirtual 28	java/util/Vector:size	()I
    //   12: if_icmplt +13 -> 25
    //   15: aload_0
    //   16: getfield 20	com/jcraft/jsch/LocalIdentityRepository:a	Ljava/util/Vector;
    //   19: invokevirtual 54	java/util/Vector:removeAllElements	()V
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: aload_0
    //   26: getfield 20	com/jcraft/jsch/LocalIdentityRepository:a	Ljava/util/Vector;
    //   29: iload_1
    //   30: invokevirtual 32	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   33: checkcast 56	com/jcraft/jsch/Identity
    //   36: invokeinterface 59 1 0
    //   41: iload_1
    //   42: iconst_1
    //   43: iadd
    //   44: istore_1
    //   45: goto -41 -> 4
    //   48: astore_2
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	LocalIdentityRepository
    //   3	42	1	i	int
    //   48	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	22	48	finally
    //   25	41	48	finally
  }
  
  void b(Identity paramIdentity)
  {
    try
    {
      a.removeElement(paramIdentity);
      return;
    }
    finally
    {
      paramIdentity = finally;
      throw paramIdentity;
    }
  }
  
  public boolean b(byte[] paramArrayOfByte)
  {
    boolean bool;
    if (paramArrayOfByte == null)
    {
      bool = false;
      return bool;
    }
    int i = 0;
    for (;;)
    {
      try
      {
        if (i >= a.size())
        {
          bool = false;
          break;
        }
        Identity localIdentity = (Identity)a.elementAt(i);
        byte[] arrayOfByte = localIdentity.a();
        if ((arrayOfByte != null) && (Util.b(paramArrayOfByte, arrayOfByte)))
        {
          a.removeElement(localIdentity);
          localIdentity.e();
          bool = true;
          break;
        }
      }
      finally {}
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.LocalIdentityRepository
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */