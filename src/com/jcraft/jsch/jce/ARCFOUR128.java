package com.jcraft.jsch.jce;

public class ARCFOUR128
  implements com.jcraft.jsch.Cipher
{
  private javax.crypto.Cipher a;
  
  public int a()
  {
    return 8;
  }
  
  /* Error */
  public void a(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_2
    //   4: astore_3
    //   5: aload_2
    //   6: arraylength
    //   7: bipush 16
    //   9: if_icmple +17 -> 26
    //   12: bipush 16
    //   14: newarray <illegal type>
    //   16: astore_3
    //   17: aload_2
    //   18: iconst_0
    //   19: aload_3
    //   20: iconst_0
    //   21: aload_3
    //   22: arraylength
    //   23: invokestatic 23	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   26: aload_0
    //   27: ldc 25
    //   29: invokestatic 31	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   32: putfield 33	com/jcraft/jsch/jce/ARCFOUR128:a	Ljavax/crypto/Cipher;
    //   35: new 35	javax/crypto/spec/SecretKeySpec
    //   38: dup
    //   39: aload_3
    //   40: ldc 25
    //   42: invokespecial 38	javax/crypto/spec/SecretKeySpec:<init>	([BLjava/lang/String;)V
    //   45: astore_2
    //   46: ldc 27
    //   48: monitorenter
    //   49: aload_0
    //   50: getfield 33	com/jcraft/jsch/jce/ARCFOUR128:a	Ljavax/crypto/Cipher;
    //   53: astore_3
    //   54: iload_1
    //   55: ifne +29 -> 84
    //   58: iload 4
    //   60: istore_1
    //   61: aload_3
    //   62: iload_1
    //   63: aload_2
    //   64: invokevirtual 42	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   67: ldc 27
    //   69: monitorexit
    //   70: iconst_1
    //   71: newarray <illegal type>
    //   73: astore_2
    //   74: iconst_0
    //   75: istore_1
    //   76: iload_1
    //   77: sipush 1536
    //   80: if_icmplt +23 -> 103
    //   83: return
    //   84: iconst_2
    //   85: istore_1
    //   86: goto -25 -> 61
    //   89: astore_2
    //   90: ldc 27
    //   92: monitorexit
    //   93: aload_2
    //   94: athrow
    //   95: astore_2
    //   96: aload_0
    //   97: aconst_null
    //   98: putfield 33	com/jcraft/jsch/jce/ARCFOUR128:a	Ljavax/crypto/Cipher;
    //   101: aload_2
    //   102: athrow
    //   103: aload_0
    //   104: getfield 33	com/jcraft/jsch/jce/ARCFOUR128:a	Ljavax/crypto/Cipher;
    //   107: aload_2
    //   108: iconst_0
    //   109: iconst_1
    //   110: aload_2
    //   111: iconst_0
    //   112: invokevirtual 46	javax/crypto/Cipher:update	([BII[BI)I
    //   115: pop
    //   116: iload_1
    //   117: iconst_1
    //   118: iadd
    //   119: istore_1
    //   120: goto -44 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	ARCFOUR128
    //   0	123	1	paramInt	int
    //   0	123	2	paramArrayOfByte1	byte[]
    //   0	123	3	paramArrayOfByte2	byte[]
    //   1	58	4	i	int
    // Exception table:
    //   from	to	target	type
    //   49	54	89	finally
    //   61	70	89	finally
    //   90	93	89	finally
    //   26	49	95	java/lang/Exception
    //   70	74	95	java/lang/Exception
    //   93	95	95	java/lang/Exception
    //   103	116	95	java/lang/Exception
  }
  
  public void a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    a.update(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
  }
  
  public int b()
  {
    return 16;
  }
  
  public boolean c()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.ARCFOUR128
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */