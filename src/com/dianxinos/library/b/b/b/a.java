package com.dianxinos.library.b.b.b;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

public abstract class a
{
  protected SecretKey a;
  protected Cipher b;
  protected Cipher c;
  
  protected static Cipher a(String paramString)
  {
    try
    {
      paramString = Cipher.getInstance(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  protected void a(SecretKey paramSecretKey, Cipher paramCipher1, Cipher paramCipher2)
  {
    a = paramSecretKey;
    b = paramCipher1;
    c = paramCipher2;
  }
  
  /* Error */
  public byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +8 -> 9
    //   4: aload_1
    //   5: arraylength
    //   6: ifne +5 -> 11
    //   9: aload_1
    //   10: areturn
    //   11: aconst_null
    //   12: astore_3
    //   13: new 32	javax/crypto/spec/IvParameterSpec
    //   16: dup
    //   17: aload_2
    //   18: invokespecial 35	javax/crypto/spec/IvParameterSpec:<init>	([B)V
    //   21: astore 5
    //   23: aload_0
    //   24: getfield 27	com/dianxinos/library/b/b/b/a:b	Ljavax/crypto/Cipher;
    //   27: astore 4
    //   29: aload 4
    //   31: monitorenter
    //   32: aload_3
    //   33: astore_2
    //   34: aload_0
    //   35: getfield 27	com/dianxinos/library/b/b/b/a:b	Ljavax/crypto/Cipher;
    //   38: iconst_1
    //   39: aload_0
    //   40: getfield 25	com/dianxinos/library/b/b/b/a:a	Ljavax/crypto/SecretKey;
    //   43: aload 5
    //   45: invokevirtual 39	javax/crypto/Cipher:init	(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    //   48: aload_3
    //   49: astore_2
    //   50: aload_0
    //   51: getfield 27	com/dianxinos/library/b/b/b/a:b	Ljavax/crypto/Cipher;
    //   54: aload_1
    //   55: invokevirtual 43	javax/crypto/Cipher:doFinal	([B)[B
    //   58: astore_1
    //   59: aload 4
    //   61: monitorexit
    //   62: aload_1
    //   63: areturn
    //   64: astore_2
    //   65: aload_2
    //   66: astore_3
    //   67: aload_1
    //   68: astore_2
    //   69: aload 4
    //   71: monitorexit
    //   72: aload_3
    //   73: athrow
    //   74: astore_2
    //   75: aload_2
    //   76: invokevirtual 46	java/lang/Exception:printStackTrace	()V
    //   79: aload_1
    //   80: areturn
    //   81: astore_2
    //   82: aconst_null
    //   83: astore_1
    //   84: goto -9 -> 75
    //   87: astore_3
    //   88: aload_2
    //   89: astore_1
    //   90: goto -23 -> 67
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	a
    //   0	93	1	paramArrayOfByte1	byte[]
    //   0	93	2	paramArrayOfByte2	byte[]
    //   12	61	3	arrayOfByte	byte[]
    //   87	1	3	localObject	Object
    //   27	43	4	localCipher	Cipher
    //   21	23	5	localIvParameterSpec	IvParameterSpec
    // Exception table:
    //   from	to	target	type
    //   59	62	64	finally
    //   72	74	74	java/lang/Exception
    //   13	32	81	java/lang/Exception
    //   34	48	87	finally
    //   50	59	87	finally
    //   69	72	87	finally
  }
  
  public byte[] b(byte[] paramArrayOfByte1, byte[] arg2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length == 0)) {
      return paramArrayOfByte1;
    }
    try
    {
      IvParameterSpec localIvParameterSpec = new IvParameterSpec(???);
      synchronized (c)
      {
        c.init(2, a, localIvParameterSpec);
        paramArrayOfByte1 = c.doFinal(paramArrayOfByte1);
        return paramArrayOfByte1;
      }
      return null;
    }
    catch (Exception paramArrayOfByte1)
    {
      paramArrayOfByte1.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */