package com.jcraft.jsch;

import java.io.PrintStream;
import java.util.Hashtable;

public abstract class KeyPair
{
  static byte[][] d = { Util.b("Proc-Type: 4,ENCRYPTED"), Util.b("DEK-Info: DES-EDE3-CBC,") };
  private static final byte[] g = Util.b("\n");
  private static byte[] k = Util.b(" ");
  private static final String[] n = { "PuTTY-User-Key-File-2: ", "Encryption: ", "Comment: ", "Public-Lines: " };
  private static final String[] o = { "Private-Lines: " };
  private static final String[] p = { "Private-MAC: " };
  int a = 0;
  protected String b = "no comment";
  JSch c = null;
  protected boolean e = false;
  protected byte[] f = null;
  private Cipher h;
  private HASH i;
  private byte[] j;
  private byte[] l = null;
  private byte[] m = null;
  
  public KeyPair(JSch paramJSch)
  {
    c = paramJSch;
  }
  
  private static byte a(byte paramByte)
  {
    if ((48 <= paramByte) && (paramByte <= 57)) {
      return (byte)(paramByte - 48);
    }
    return (byte)(paramByte - 97 + 10);
  }
  
  /* Error */
  public static KeyPair a(JSch paramJSch, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: invokestatic 98	com/jcraft/jsch/Util:d	(Ljava/lang/String;)[B
    //   6: astore 4
    //   8: aload_2
    //   9: ifnonnull +88 -> 97
    //   12: new 100	java/lang/StringBuilder
    //   15: dup
    //   16: aload_1
    //   17: invokestatic 104	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   20: invokespecial 107	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   23: ldc 109
    //   25: invokevirtual 113	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: astore_1
    //   32: aload_1
    //   33: invokestatic 98	com/jcraft/jsch/Util:d	(Ljava/lang/String;)[B
    //   36: astore_1
    //   37: aload_0
    //   38: aload 4
    //   40: aload_1
    //   41: invokestatic 120	com/jcraft/jsch/KeyPair:a	(Lcom/jcraft/jsch/JSch;[B[B)Lcom/jcraft/jsch/KeyPair;
    //   44: astore_0
    //   45: aload 4
    //   47: invokestatic 123	com/jcraft/jsch/Util:d	([B)V
    //   50: aload_0
    //   51: areturn
    //   52: astore_0
    //   53: new 125	com/jcraft/jsch/JSchException
    //   56: dup
    //   57: aload_0
    //   58: invokevirtual 126	java/io/IOException:toString	()Ljava/lang/String;
    //   61: aload_0
    //   62: invokespecial 129	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   65: athrow
    //   66: astore 5
    //   68: aload_3
    //   69: astore_1
    //   70: aload_2
    //   71: ifnull -34 -> 37
    //   74: new 125	com/jcraft/jsch/JSchException
    //   77: dup
    //   78: aload 5
    //   80: invokevirtual 126	java/io/IOException:toString	()Ljava/lang/String;
    //   83: aload 5
    //   85: invokespecial 129	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   88: athrow
    //   89: astore_0
    //   90: aload 4
    //   92: invokestatic 123	com/jcraft/jsch/Util:d	([B)V
    //   95: aload_0
    //   96: athrow
    //   97: aload_2
    //   98: astore_1
    //   99: goto -67 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	paramJSch	JSch
    //   0	102	1	paramString1	String
    //   0	102	2	paramString2	String
    //   1	68	3	localObject	Object
    //   6	85	4	arrayOfByte	byte[]
    //   66	18	5	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   2	8	52	java/io/IOException
    //   32	37	66	java/io/IOException
    //   37	45	89	finally
  }
  
  static KeyPair a(JSch paramJSch, byte[] paramArrayOfByte)
  {
    Object localObject1 = new Buffer(paramArrayOfByte);
    paramArrayOfByte = new Hashtable();
    while (a((Buffer)localObject1, paramArrayOfByte)) {}
    Object localObject2 = (String)paramArrayOfByte.get("PuTTY-User-Key-File-2");
    if (localObject2 == null) {
      return null;
    }
    byte[] arrayOfByte1 = a((Buffer)localObject1, Integer.parseInt((String)paramArrayOfByte.get("Public-Lines")));
    while (a((Buffer)localObject1, paramArrayOfByte)) {}
    byte[] arrayOfByte2 = a((Buffer)localObject1, Integer.parseInt((String)paramArrayOfByte.get("Private-Lines")));
    while (a((Buffer)localObject1, paramArrayOfByte)) {}
    localObject1 = Util.a(arrayOfByte2, 0, arrayOfByte2.length);
    arrayOfByte1 = Util.a(arrayOfByte1, 0, arrayOfByte1.length);
    label203:
    boolean bool;
    if (((String)localObject2).equals("ssh-rsa"))
    {
      localObject2 = new Buffer(arrayOfByte1);
      ((Buffer)localObject2).b(arrayOfByte1.length);
      ((Buffer)localObject2).d(new byte[((Buffer)localObject2).d()]);
      arrayOfByte1 = new byte[((Buffer)localObject2).d()];
      ((Buffer)localObject2).d(arrayOfByte1);
      arrayOfByte2 = new byte[((Buffer)localObject2).d()];
      ((Buffer)localObject2).d(arrayOfByte2);
      paramJSch = new KeyPairRSA(paramJSch, arrayOfByte2, arrayOfByte1, null);
      if (paramJSch == null) {
        break label428;
      }
      if (!paramArrayOfByte.get("Encryption").equals("none")) {
        break label430;
      }
      bool = false;
      label223:
      e = bool;
      a = 2;
      b = ((String)paramArrayOfByte.get("Comment"));
      if (!e) {
        break label456;
      }
      if (!Session.f(JSch.c("aes256-cbc"))) {
        break label446;
      }
    }
    for (;;)
    {
      try
      {
        h = ((Cipher)Class.forName(JSch.c("aes256-cbc")).newInstance());
        l = new byte[h.a()];
        f = ((byte[])localObject1);
        return paramJSch;
      }
      catch (Exception paramJSch)
      {
        byte[] arrayOfByte3;
        byte[] arrayOfByte4;
        label428:
        label430:
        throw new JSchException("The cipher 'aes256-cbc' is required, but it is not available.");
      }
      if (!((String)localObject2).equals("ssh-dss")) {
        break;
      }
      localObject2 = new Buffer(arrayOfByte1);
      ((Buffer)localObject2).b(arrayOfByte1.length);
      ((Buffer)localObject2).d(new byte[((Buffer)localObject2).d()]);
      arrayOfByte1 = new byte[((Buffer)localObject2).d()];
      ((Buffer)localObject2).d(arrayOfByte1);
      arrayOfByte2 = new byte[((Buffer)localObject2).d()];
      ((Buffer)localObject2).d(arrayOfByte2);
      arrayOfByte3 = new byte[((Buffer)localObject2).d()];
      ((Buffer)localObject2).d(arrayOfByte3);
      arrayOfByte4 = new byte[((Buffer)localObject2).d()];
      ((Buffer)localObject2).d(arrayOfByte4);
      paramJSch = new KeyPairDSA(paramJSch, arrayOfByte1, arrayOfByte2, arrayOfByte3, arrayOfByte4, null);
      break label203;
      break;
      bool = true;
      break label223;
      label446:
      throw new JSchException("The cipher 'aes256-cbc' is required, but it is not available.");
      label456:
      f = ((byte[])localObject1);
      paramJSch.b((byte[])localObject1);
    }
  }
  
  public static KeyPair a(JSch paramJSch, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Object localObject1 = new byte[8];
    Object localObject4 = null;
    Object localObject5;
    if ((paramArrayOfByte2 == null) && (paramArrayOfByte1 != null) && (paramArrayOfByte1.length > 11) && (paramArrayOfByte1[0] == 0) && (paramArrayOfByte1[1] == 0) && (paramArrayOfByte1[2] == 0) && (paramArrayOfByte1[3] == 7))
    {
      paramArrayOfByte2 = new Buffer(paramArrayOfByte1);
      paramArrayOfByte2.b(paramArrayOfByte1.length);
      localObject1 = new String(paramArrayOfByte2.j());
      paramArrayOfByte2.m();
      if (((String)localObject1).equals("ssh-rsa"))
      {
        localObject5 = KeyPairRSA.a(paramJSch, paramArrayOfByte2);
        return (KeyPair)localObject5;
      }
      if (((String)localObject1).equals("ssh-dss")) {
        return KeyPairDSA.a(paramJSch, paramArrayOfByte2);
      }
      throw new JSchException("privatekey: invalid key " + new String(paramArrayOfByte1, 4, 7));
    }
    if (paramArrayOfByte1 != null) {}
    Object localObject2;
    int i5;
    int i2;
    label229:
    label235:
    int i1;
    int i3;
    boolean bool;
    Object localObject3;
    label310:
    int i4;
    label902:
    int i6;
    int i7;
    for (;;)
    {
      try
      {
        localObject2 = a(paramJSch, paramArrayOfByte1);
        localObject5 = localObject2;
        if (localObject2 != null) {
          break;
        }
        if (paramArrayOfByte1 == null) {
          break label229;
        }
        i5 = paramArrayOfByte1.length;
      }
      catch (Exception paramJSch)
      {
        if (!(paramJSch instanceof JSchException)) {
          break label2015;
        }
      }
      if (paramArrayOfByte1 == null) {
        break label2210;
      }
      if (i2 != 0) {
        break label2754;
      }
      throw new JSchException("invalid privatekey: " + paramArrayOfByte1);
      throw ((JSchException)paramJSch);
      i5 = 0;
      break label2216;
      if ((paramArrayOfByte1[i1] != 45) || (i1 + 4 >= i5) || (paramArrayOfByte1[(i1 + 1)] != 45) || (paramArrayOfByte1[(i1 + 2)] != 45) || (paramArrayOfByte1[(i1 + 3)] != 45) || (paramArrayOfByte1[(i1 + 4)] != 45)) {
        break label2249;
      }
      localObject2 = null;
      i3 = 0;
      i2 = 0;
      bool = true;
      localObject3 = localObject1;
      break label2240;
      if ((paramArrayOfByte1[i1] == 66) && (i1 + 3 < i5) && (paramArrayOfByte1[(i1 + 1)] == 69) && (paramArrayOfByte1[(i1 + 2)] == 71) && (paramArrayOfByte1[(i1 + 3)] == 73))
      {
        i4 = i1 + 6;
        if (i4 + 2 < i5) {
          break label2256;
        }
        throw new JSchException("invalid privatekey: " + paramArrayOfByte1);
        throw new JSchException("invalid privatekey: " + paramArrayOfByte1);
      }
      if ((paramArrayOfByte1[i1] == 65) && (i1 + 7 < i5) && (paramArrayOfByte1[(i1 + 1)] == 69) && (paramArrayOfByte1[(i1 + 2)] == 83) && (paramArrayOfByte1[(i1 + 3)] == 45) && (paramArrayOfByte1[(i1 + 4)] == 50) && (paramArrayOfByte1[(i1 + 5)] == 53) && (paramArrayOfByte1[(i1 + 6)] == 54) && (paramArrayOfByte1[(i1 + 7)] == 45))
      {
        i1 += 8;
        if (Session.f(JSch.c("aes256-cbc")))
        {
          localObject2 = (Cipher)Class.forName(JSch.c("aes256-cbc")).newInstance();
          localObject3 = new byte[((Cipher)localObject2).a()];
          break label2240;
        }
        throw new JSchException("privatekey: aes256-cbc is not available " + paramArrayOfByte1);
      }
      if ((paramArrayOfByte1[i1] == 65) && (i1 + 7 < i5) && (paramArrayOfByte1[(i1 + 1)] == 69) && (paramArrayOfByte1[(i1 + 2)] == 83) && (paramArrayOfByte1[(i1 + 3)] == 45) && (paramArrayOfByte1[(i1 + 4)] == 49) && (paramArrayOfByte1[(i1 + 5)] == 57) && (paramArrayOfByte1[(i1 + 6)] == 50) && (paramArrayOfByte1[(i1 + 7)] == 45))
      {
        i1 += 8;
        if (Session.f(JSch.c("aes192-cbc")))
        {
          localObject2 = (Cipher)Class.forName(JSch.c("aes192-cbc")).newInstance();
          localObject3 = new byte[((Cipher)localObject2).a()];
          break label2240;
        }
        throw new JSchException("privatekey: aes192-cbc is not available " + paramArrayOfByte1);
      }
      if ((paramArrayOfByte1[i1] != 65) || (i1 + 7 >= i5) || (paramArrayOfByte1[(i1 + 1)] != 69) || (paramArrayOfByte1[(i1 + 2)] != 83) || (paramArrayOfByte1[(i1 + 3)] != 45) || (paramArrayOfByte1[(i1 + 4)] != 49) || (paramArrayOfByte1[(i1 + 5)] != 50) || (paramArrayOfByte1[(i1 + 6)] != 56) || (paramArrayOfByte1[(i1 + 7)] != 45)) {
        break label2614;
      }
      i1 += 8;
      if (Session.f(JSch.c("aes128-cbc")))
      {
        localObject2 = (Cipher)Class.forName(JSch.c("aes128-cbc")).newInstance();
        localObject3 = new byte[((Cipher)localObject2).a()];
        break label2240;
      }
      throw new JSchException("privatekey: aes128-cbc is not available " + paramArrayOfByte1);
      for (;;)
      {
        i1 = i4;
        if (i6 >= localObject3.length) {
          break;
        }
        i1 = i4 + 1;
        i7 = a(paramArrayOfByte1[i4]);
        i4 = i1 + 1;
        localObject3[i6] = ((byte)((a(paramArrayOfByte1[i1]) & 0xF) + (i7 << 4 & 0xF0)));
        i6 += 1;
      }
      label965:
      if ((paramArrayOfByte1[i1] == 13) && (i1 + 1 < paramArrayOfByte1.length) && (paramArrayOfByte1[(i1 + 1)] == 10))
      {
        i1 += 1;
        break label2240;
      }
      if ((paramArrayOfByte1[i1] != 10) || (i1 + 1 >= paramArrayOfByte1.length)) {
        break label2747;
      }
      if (paramArrayOfByte1[(i1 + 1)] == 10)
      {
        i1 += 2;
      }
      else
      {
        if ((paramArrayOfByte1[(i1 + 1)] != 13) || (i1 + 2 >= paramArrayOfByte1.length) || (paramArrayOfByte1[(i1 + 2)] != 10)) {
          break label2671;
        }
        i1 += 3;
      }
    }
    label1066:
    label1080:
    label1104:
    label1133:
    label1152:
    label1157:
    Object localObject6;
    if (i4 >= paramArrayOfByte1.length)
    {
      i6 = i7;
      break label2682;
      break label2764;
      throw new JSchException("invalid privatekey: " + paramArrayOfByte1);
      localObject5 = new byte[i4 - i1];
      System.arraycopy(paramArrayOfByte1, i1, localObject5, 0, localObject5.length);
      i1 = localObject5.length;
      i4 = 0;
      break label2800;
      if (i4 - 0 > 0)
      {
        localObject1 = Util.a((byte[])localObject5, 0, i4 - 0);
        Util.d((byte[])localObject5);
        if ((localObject1 != null) && (localObject1.length > 4) && (localObject1[0] == 63) && (localObject1[1] == 111) && (localObject1[2] == -7) && (localObject1[3] == -21))
        {
          localObject5 = new Buffer((byte[])localObject1);
          ((Buffer)localObject5).d();
          ((Buffer)localObject5).d();
          ((Buffer)localObject5).j();
          localObject6 = Util.b(((Buffer)localObject5).j());
          if (((String)localObject6).equals("3des-cbc"))
          {
            ((Buffer)localObject5).d();
            ((Buffer)localObject5).d(new byte[localObject1.length - ((Buffer)localObject5).b()]);
            throw new JSchException("unknown privatekey format: " + paramArrayOfByte1);
            label1302:
            System.arraycopy(localObject5, i4 + 1, localObject5, i4 - i6, i1 - (i4 + 1));
            i6 = i1;
            if (i5 == 0) {
              break label2845;
            }
            i6 = i1 - 1;
            break label2845;
          }
          if (((String)localObject6).equals("none"))
          {
            ((Buffer)localObject5).d();
            ((Buffer)localObject5).d();
            localObject6 = new byte[localObject1.length - ((Buffer)localObject5).b()];
            ((Buffer)localObject5).d((byte[])localObject6);
            bool = false;
            label1385:
            if (paramArrayOfByte2 == null) {}
          }
        }
      }
    }
    label1495:
    label1652:
    label1666:
    label2001:
    label2015:
    label2047:
    label2085:
    label2147:
    label2157:
    label2160:
    label2166:
    label2172:
    label2183:
    label2210:
    label2216:
    label2218:
    label2240:
    label2249:
    label2256:
    label2614:
    label2671:
    label2682:
    label2747:
    label2752:
    label2754:
    label2764:
    label2800:
    label2845:
    label2859:
    label2882:
    label2884:
    label2891:
    label2899:
    label2913:
    label2927:
    label2964:
    label2971:
    for (;;)
    {
      int i8;
      try
      {
        i7 = paramArrayOfByte2.length;
        if ((paramArrayOfByte2.length > 4) && (paramArrayOfByte2[0] == 45) && (paramArrayOfByte2[1] == 45) && (paramArrayOfByte2[2] == 45) && (paramArrayOfByte2[3] == 45))
        {
          i4 = 1;
          i1 = 0;
          i5 = i1 + 1;
          if (paramArrayOfByte2.length > i5)
          {
            i1 = i5;
            if (paramArrayOfByte2[i5] != 10) {
              continue;
            }
          }
          i1 = i4;
          i4 = i5;
          if (paramArrayOfByte2.length > i5) {
            break label2884;
          }
          i1 = 0;
          i4 = i5;
          break label2884;
          if (paramArrayOfByte2.length > i4) {
            break label2891;
          }
          i1 = 0;
          break label2891;
          if (i1 == 0) {
            break label2172;
          }
          paramArrayOfByte2 = Util.a(paramArrayOfByte2, i4, i6 - i4);
          if ((paramArrayOfByte1 != null) && (i2 != 3)) {
            break label2183;
          }
          if (paramArrayOfByte2[8] == 100)
          {
            i2 = 1;
            localObject4 = "";
            localObject1 = paramArrayOfByte2;
            paramArrayOfByte2 = (byte[])localObject4;
            localObject4 = null;
            if (i2 != 1) {
              break label2047;
            }
            localObject4 = new KeyPairDSA(paramJSch);
            localObject5 = localObject4;
            if (localObject4 == null) {
              break;
            }
            e = bool;
            m = ((byte[])localObject1);
            a = i3;
            b = paramArrayOfByte2;
            h = ((Cipher)localObject2);
            if (!bool) {
              break label2085;
            }
            e = true;
            l = ((byte[])localObject3);
            f = ((byte[])localObject6);
            return (KeyPair)localObject4;
            if (paramArrayOfByte2[i4] != 10) {
              break label2964;
            }
            i8 = 0;
            i5 = i4 + 1;
            if (i5 < paramArrayOfByte2.length) {
              break label2927;
            }
            i6 = i8;
            break label2913;
            if (paramArrayOfByte2[i6] == 10)
            {
              System.arraycopy(paramArrayOfByte2, i6 + 1, paramArrayOfByte2, i6, i5 - i6 - 1);
              i5 -= 1;
              break label2899;
            }
            i7 = paramArrayOfByte2[i6];
            if (i7 == 45) {
              continue;
            }
            i6 += 1;
            break label2899;
          }
          if (paramArrayOfByte2[8] != 114) {
            break label2183;
          }
          i2 = 2;
          localObject4 = "";
          localObject1 = paramArrayOfByte2;
          paramArrayOfByte2 = (byte[])localObject4;
          continue;
        }
        if ((paramArrayOfByte2[0] != 115) || (paramArrayOfByte2[1] != 115) || (paramArrayOfByte2[2] != 104) || (paramArrayOfByte2[3] != 45)) {
          break label2172;
        }
        if ((paramArrayOfByte1 != null) || (paramArrayOfByte2.length <= 7)) {
          break label2166;
        }
        i1 = paramArrayOfByte2[4];
        if (i1 == 100)
        {
          i1 = 1;
          i2 = 0;
          if (i2 < i7) {
            continue;
          }
          i4 = i2 + 1;
          if (i4 >= i7) {
            break label2160;
          }
          i2 = i4;
          if (i2 < i7) {
            continue;
          }
        }
      }
      catch (Exception paramArrayOfByte2)
      {
        paramArrayOfByte2 = null;
      }
      try
      {
        localObject1 = Util.a(paramArrayOfByte2, i4, i2 - i4);
        i4 = i2;
        i5 = i4 + 1;
        if (i4 >= i7) {
          break label2147;
        }
        i2 = i5;
        if (i2 >= i7)
        {
          if ((i2 <= 0) || (paramArrayOfByte2[(i2 - 1)] != 13)) {
            break label2157;
          }
          i2 -= 1;
          if (i5 >= i2) {
            break label2147;
          }
        }
      }
      catch (Exception paramArrayOfByte2)
      {
        for (;;)
        {
          paramArrayOfByte2 = null;
          i2 = i1;
        }
        paramArrayOfByte2 = "";
        i2 = i1;
      }
      try
      {
        paramArrayOfByte2 = new String(paramArrayOfByte2, i5, i2 - i5);
        i2 = i1;
      }
      catch (Exception paramArrayOfByte2)
      {
        paramArrayOfByte2 = (byte[])localObject1;
        i2 = i1;
        break label2001;
      }
      if (paramArrayOfByte2[4] == 114)
      {
        i1 = 2;
        continue;
        if (paramArrayOfByte2[i2] != 32)
        {
          i2 += 1;
          continue;
          if (paramArrayOfByte2[i2] != 32)
          {
            i2 += 1;
            continue;
            if (paramArrayOfByte2[i2] != 10)
            {
              i2 += 1;
              continue;
              localObject4 = "";
              localObject1 = paramArrayOfByte2;
              paramArrayOfByte2 = (byte[])localObject4;
              continue;
              if ((paramJSch instanceof Throwable)) {
                throw new JSchException(paramJSch.toString(), paramJSch);
              }
              throw new JSchException(paramJSch.toString());
              if (i2 == 2)
              {
                localObject4 = new KeyPairRSA(paramJSch);
              }
              else if (i3 == 3)
              {
                localObject4 = new KeyPairPKCS8(paramJSch);
                continue;
                if (((KeyPair)localObject4).b((byte[])localObject6))
                {
                  e = false;
                  return (KeyPair)localObject4;
                }
                throw new JSchException("invalid privatekey: " + paramArrayOfByte1);
                continue;
                continue;
                localObject1 = null;
              }
            }
          }
        }
      }
      else
      {
        i1 = i2;
        continue;
        paramArrayOfByte2 = "";
        localObject1 = localObject4;
        continue;
        localObject4 = "";
        localObject1 = paramArrayOfByte2;
        paramArrayOfByte2 = (byte[])localObject4;
        continue;
        localObject6 = localObject1;
        break label1385;
        localObject1 = null;
        break label1152;
        localObject1 = null;
        break label1157;
        i1 = 0;
        if (i1 >= i5)
        {
          localObject2 = null;
          i3 = 0;
          i2 = 0;
          bool = true;
          localObject3 = localObject1;
        }
        for (;;)
        {
          if (i1 < i5) {
            break label2752;
          }
          break;
          i1 += 1;
          break label2218;
          break label235;
          if ((paramArrayOfByte1[i4] == 68) && (paramArrayOfByte1[(i4 + 1)] == 83) && (paramArrayOfByte1[(i4 + 2)] == 65))
          {
            i2 = 1;
            i1 = i3;
          }
          for (;;)
          {
            i4 += 3;
            i3 = i1;
            i1 = i4;
            break label2240;
            if ((paramArrayOfByte1[i4] == 82) && (paramArrayOfByte1[(i4 + 1)] == 83) && (paramArrayOfByte1[(i4 + 2)] == 65))
            {
              i2 = 2;
              i1 = i3;
            }
            else if ((paramArrayOfByte1[i4] == 83) && (paramArrayOfByte1[(i4 + 1)] == 83) && (paramArrayOfByte1[(i4 + 2)] == 72))
            {
              i2 = 3;
              i1 = 1;
            }
            else if ((i4 + 6 < i5) && (paramArrayOfByte1[i4] == 80) && (paramArrayOfByte1[(i4 + 1)] == 82) && (paramArrayOfByte1[(i4 + 2)] == 73) && (paramArrayOfByte1[(i4 + 3)] == 86) && (paramArrayOfByte1[(i4 + 4)] == 65) && (paramArrayOfByte1[(i4 + 5)] == 84) && (paramArrayOfByte1[(i4 + 6)] == 69))
            {
              i2 = 3;
              i1 = 3;
              bool = false;
              i4 += 3;
            }
            else
            {
              if ((i4 + 8 >= i5) || (paramArrayOfByte1[i4] != 69) || (paramArrayOfByte1[(i4 + 1)] != 78) || (paramArrayOfByte1[(i4 + 2)] != 67) || (paramArrayOfByte1[(i4 + 3)] != 82) || (paramArrayOfByte1[(i4 + 4)] != 89) || (paramArrayOfByte1[(i4 + 5)] != 80) || (paramArrayOfByte1[(i4 + 6)] != 84) || (paramArrayOfByte1[(i4 + 7)] != 69) || (paramArrayOfByte1[(i4 + 8)] != 68)) {
                break;
              }
              i2 = 3;
              i1 = 3;
              i4 += 5;
            }
          }
          if ((paramArrayOfByte1[i1] != 67) || (i1 + 3 >= i5) || (paramArrayOfByte1[(i1 + 1)] != 66) || (paramArrayOfByte1[(i1 + 2)] != 67) || (paramArrayOfByte1[(i1 + 3)] != 44)) {
            break label965;
          }
          i4 = i1 + 4;
          i6 = 0;
          break label902;
          i7 = 0;
          i4 = i1 + 1;
          break label1066;
          for (;;)
          {
            if (i6 == 0)
            {
              i4 = i1 + 1;
              i1 = i4;
              if (i3 == 3) {
                break;
              }
              bool = false;
              i1 = i4;
              break;
              i6 = i7;
              if (paramArrayOfByte1[i4] != 10) {
                if (paramArrayOfByte1[i4] == 58)
                {
                  i6 = 1;
                }
                else
                {
                  i4 += 1;
                  break label1066;
                }
              }
            }
          }
          i1 += 1;
        }
        break label310;
        i4 = i1;
        for (;;)
        {
          if (i4 >= i5)
          {
            if (i5 - i4 == 0) {
              break label1080;
            }
            if (i4 - i1 != 0) {
              break label1104;
            }
            break label1080;
          }
          if (paramArrayOfByte1[i4] == 45) {
            break;
          }
          i4 += 1;
        }
        for (;;)
        {
          if (i4 >= i1) {
            break label2882;
          }
          if (localObject5[i4] == 10)
          {
            if (localObject5[(i4 - 1)] == 13) {}
            for (i5 = 1;; i5 = 0)
            {
              if (i5 == 0) {
                break label2859;
              }
              i6 = 1;
              break;
              i1 = i6 - 1;
              break label2800;
            }
            i6 = 0;
            break label1302;
          }
          if (localObject5[i4] == 45) {
            break;
          }
          i4 += 1;
        }
        break label1133;
        for (;;)
        {
          if (i1 != 0) {
            break label2971;
          }
          break;
          i6 = i4;
          i5 = i7;
          if (i1 == 0) {
            break label1495;
          }
          if (i6 < i5) {
            break label1666;
          }
          break label1495;
          for (;;)
          {
            if (i6 == 0)
            {
              i4 += 1;
              break;
              i6 = i8;
              if (paramArrayOfByte2[i5] != 10) {
                if (paramArrayOfByte2[i5] == 58)
                {
                  i6 = 1;
                }
                else
                {
                  i5 += 1;
                  break label1652;
                }
              }
            }
          }
          i4 += 1;
        }
      }
    }
  }
  
  private static boolean a(Buffer paramBuffer, Hashtable paramHashtable)
  {
    byte[] arrayOfByte = b;
    int i1 = c;
    int i2 = i1;
    String str;
    for (;;)
    {
      if (i2 >= arrayOfByte.length) {
        str = null;
      }
      for (;;)
      {
        if (str != null) {
          break label107;
        }
        return false;
        if (arrayOfByte[i2] == 13)
        {
          str = null;
        }
        else
        {
          if (arrayOfByte[i2] != 58) {
            break;
          }
          str = new String(arrayOfByte, i1, i2 - i1);
          i2 += 1;
          i1 = i2;
          if (i2 < arrayOfByte.length)
          {
            i1 = i2;
            if (arrayOfByte[i2] == 32) {
              i1 = i2 + 1;
            }
          }
        }
      }
      i2 += 1;
    }
    label107:
    i2 = i1;
    for (;;)
    {
      Object localObject;
      if (i2 >= arrayOfByte.length) {
        localObject = null;
      }
      for (;;)
      {
        if (localObject != null)
        {
          paramHashtable.put(str, localObject);
          c = i1;
        }
        if ((str == null) || (localObject == null)) {
          break label212;
        }
        return true;
        if (arrayOfByte[i2] != 13) {
          break;
        }
        localObject = new String(arrayOfByte, i1, i2 - i1);
        i2 += 1;
        i1 = i2;
        if (i2 < arrayOfByte.length)
        {
          i1 = i2;
          if (arrayOfByte[i2] == 10) {
            i1 = i2 + 1;
          }
        }
      }
      i2 += 1;
    }
    label212:
    return false;
  }
  
  private static byte[] a(Buffer paramBuffer, int paramInt)
  {
    byte[] arrayOfByte2 = b;
    int i3 = c;
    Object localObject2 = null;
    int i1 = i3;
    int i2 = paramInt;
    paramInt = i3;
    label40:
    Object localObject1;
    if (i2 <= 0)
    {
      if (localObject2 != null) {
        c = i1;
      }
      return (byte[])localObject2;
      i3 = paramInt + 1;
      if (arrayOfByte2[paramInt] == 13) {
        if (localObject2 == null)
        {
          localObject1 = new byte[i3 - i1 - 1];
          System.arraycopy(arrayOfByte2, i1, localObject1, 0, i3 - i1 - 1);
          i1 = i3;
        }
      }
    }
    for (;;)
    {
      paramInt = i1;
      if (arrayOfByte2[i1] == 10) {
        paramInt = i1 + 1;
      }
      i1 = paramInt;
      i2 -= 1;
      localObject2 = localObject1;
      break;
      byte[] arrayOfByte1 = new byte[localObject2.length + i3 - i1 - 1];
      System.arraycopy(localObject2, 0, arrayOfByte1, 0, localObject2.length);
      System.arraycopy(arrayOfByte2, i1, arrayOfByte1, localObject2.length, i3 - i1 - 1);
      paramInt = 0;
      for (;;)
      {
        i1 = i3;
        localObject1 = arrayOfByte1;
        if (paramInt >= localObject2.length) {
          break;
        }
        localObject2[paramInt] = 0;
        paramInt += 1;
      }
      paramInt = i3;
      if (arrayOfByte2.length > paramInt) {
        break label40;
      }
      localObject1 = localObject2;
      i1 = paramInt;
    }
  }
  
  private byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    try
    {
      paramArrayOfByte2 = a(paramArrayOfByte2, paramArrayOfByte3);
      h.a(1, paramArrayOfByte2, paramArrayOfByte3);
      Util.d(paramArrayOfByte2);
      paramArrayOfByte2 = new byte[paramArrayOfByte1.length];
      h.a(paramArrayOfByte1, 0, paramArrayOfByte1.length, paramArrayOfByte2, 0);
      return paramArrayOfByte2;
    }
    catch (Exception paramArrayOfByte1) {}
    return null;
  }
  
  private HASH f()
  {
    try
    {
      i = ((HASH)Class.forName(JSch.c("md5")).newInstance());
      i.a();
      return i;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private Cipher g()
  {
    try
    {
      h = ((Cipher)Class.forName(JSch.c("3des-cbc")).newInstance());
      return h;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  int a(int paramInt)
  {
    int i1 = 1;
    int i2 = paramInt;
    if (paramInt <= 127) {
      return 1;
    }
    while (i2 > 0)
    {
      i2 >>>= 8;
      i1 += 1;
    }
    return i1;
  }
  
  int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = 48;
    return b(paramArrayOfByte, paramInt1 + 1, paramInt2);
  }
  
  int a(byte[] paramArrayOfByte1, int paramInt, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte1[paramInt] = 2;
    paramInt = b(paramArrayOfByte1, paramInt + 1, paramArrayOfByte2.length);
    System.arraycopy(paramArrayOfByte2, 0, paramArrayOfByte1, paramInt, paramArrayOfByte2.length);
    return paramInt + paramArrayOfByte2.length;
  }
  
  void a(KeyPair paramKeyPair)
  {
    m = m;
    a = a;
    b = b;
    h = h;
  }
  
  public abstract byte[] a();
  
  public abstract byte[] a(byte[] paramArrayOfByte);
  
  byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i4 = 0;
    int i5 = 0;
    int i2 = 0;
    for (;;)
    {
      byte[] arrayOfByte1;
      int i1;
      byte[] arrayOfByte3;
      Object localObject;
      try
      {
        if (h == null) {
          h = g();
        }
        if (i == null) {
          i = f();
        }
        arrayOfByte1 = new byte[h.b()];
        int i3 = i.b();
        int i6 = arrayOfByte1.length / i3;
        byte[] arrayOfByte4;
        if (arrayOfByte1.length % i3 == 0)
        {
          i1 = 0;
          arrayOfByte4 = new byte[i1 + i6 * i3];
          arrayOfByte3 = null;
          localObject = null;
          arrayOfByte2 = arrayOfByte1;
        }
        try
        {
          if (a != 0) {
            continue;
          }
          i1 = i2;
          arrayOfByte2 = arrayOfByte1;
          if (i1 + i3 <= arrayOfByte4.length) {
            continue;
          }
          arrayOfByte2 = arrayOfByte1;
          System.arraycopy(arrayOfByte4, 0, arrayOfByte1, 0, arrayOfByte1.length);
          paramArrayOfByte1 = arrayOfByte1;
        }
        catch (Exception paramArrayOfByte2)
        {
          paramArrayOfByte1 = arrayOfByte2;
          System.err.println(paramArrayOfByte2);
          continue;
        }
        return paramArrayOfByte1;
        i1 = i3;
        continue;
        if (localObject != null)
        {
          arrayOfByte2 = arrayOfByte1;
          i.a((byte[])localObject, 0, localObject.length);
        }
        arrayOfByte2 = arrayOfByte1;
        i.a(paramArrayOfByte1, 0, paramArrayOfByte1.length);
        arrayOfByte2 = arrayOfByte1;
        localObject = i;
        arrayOfByte2 = arrayOfByte1;
        if (paramArrayOfByte2.length > 8)
        {
          i2 = 8;
          arrayOfByte2 = arrayOfByte1;
          ((HASH)localObject).a(paramArrayOfByte2, 0, i2);
          arrayOfByte2 = arrayOfByte1;
          localObject = i.c();
          arrayOfByte2 = arrayOfByte1;
          System.arraycopy(localObject, 0, arrayOfByte4, i1, localObject.length);
          arrayOfByte2 = arrayOfByte1;
          i1 += localObject.length;
          continue;
        }
        arrayOfByte2 = arrayOfByte1;
        i2 = paramArrayOfByte2.length;
        continue;
        arrayOfByte2 = arrayOfByte1;
        if (a == 1)
        {
          i1 = i4;
          paramArrayOfByte2 = arrayOfByte3;
          arrayOfByte2 = arrayOfByte1;
          if (i1 + i3 > arrayOfByte4.length)
          {
            arrayOfByte2 = arrayOfByte1;
            System.arraycopy(arrayOfByte4, 0, arrayOfByte1, 0, arrayOfByte1.length);
            paramArrayOfByte1 = arrayOfByte1;
            continue;
          }
          if (paramArrayOfByte2 != null)
          {
            arrayOfByte2 = arrayOfByte1;
            i.a(paramArrayOfByte2, 0, paramArrayOfByte2.length);
          }
          arrayOfByte2 = arrayOfByte1;
          i.a(paramArrayOfByte1, 0, paramArrayOfByte1.length);
          arrayOfByte2 = arrayOfByte1;
          paramArrayOfByte2 = i.c();
          arrayOfByte2 = arrayOfByte1;
          System.arraycopy(paramArrayOfByte2, 0, arrayOfByte4, i1, paramArrayOfByte2.length);
          arrayOfByte2 = arrayOfByte1;
          i1 += paramArrayOfByte2.length;
          continue;
        }
        arrayOfByte2 = arrayOfByte1;
        if (a != 2) {
          break label576;
        }
        arrayOfByte2 = arrayOfByte1;
        localObject = (HASH)Class.forName(JSch.c("sha-1")).newInstance();
        arrayOfByte2 = arrayOfByte1;
        arrayOfByte3 = new byte[4];
        arrayOfByte2 = arrayOfByte1;
        paramArrayOfByte2 = new byte[40];
        i1 = i5;
      }
      finally {}
      byte[] arrayOfByte2 = paramArrayOfByte2;
      ((HASH)localObject).a();
      arrayOfByte3[3] = ((byte)i1);
      arrayOfByte2 = paramArrayOfByte2;
      ((HASH)localObject).a(arrayOfByte3, 0, arrayOfByte3.length);
      arrayOfByte2 = paramArrayOfByte2;
      ((HASH)localObject).a(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      arrayOfByte2 = paramArrayOfByte2;
      System.arraycopy(((HASH)localObject).c(), 0, paramArrayOfByte2, i1 * 20, 20);
      i1 += 1;
      break label582;
      label576:
      paramArrayOfByte1 = arrayOfByte1;
      continue;
      label582:
      if (i1 >= 2) {
        paramArrayOfByte1 = paramArrayOfByte2;
      }
    }
  }
  
  int b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i1 = a(paramInt2) - 1;
    if (i1 == 0)
    {
      i1 = paramInt1 + 1;
      paramArrayOfByte[paramInt1] = ((byte)paramInt2);
      return i1;
    }
    int i3 = paramInt1 + 1;
    paramArrayOfByte[paramInt1] = ((byte)(i1 | 0x80));
    int i2 = i3 + i1;
    paramInt1 = i1;
    for (;;)
    {
      i1 = i2;
      if (paramInt1 <= 0) {
        break;
      }
      paramArrayOfByte[(i3 + paramInt1 - 1)] = ((byte)(paramInt2 & 0xFF));
      paramInt2 >>>= 8;
      paramInt1 -= 1;
    }
  }
  
  abstract boolean b(byte[] paramArrayOfByte);
  
  abstract byte[] b();
  
  public boolean c(byte[] paramArrayOfByte)
  {
    boolean bool = false;
    if (!e) {
      bool = true;
    }
    do
    {
      do
      {
        return bool;
        if (paramArrayOfByte != null) {
          break;
        }
      } while (e);
      return true;
      byte[] arrayOfByte = new byte[paramArrayOfByte.length];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, arrayOfByte.length);
      paramArrayOfByte = a(f, arrayOfByte, l);
      Util.d(arrayOfByte);
      if (b(paramArrayOfByte)) {
        e = false;
      }
    } while (e);
    return true;
  }
  
  public byte[] c()
  {
    return m;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public void e()
  {
    Util.d(j);
  }
  
  public void finalize()
  {
    e();
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.KeyPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */