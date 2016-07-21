package com.estrongs.android.a.b;

import com.estrongs.fs.h;
import java.io.InputStream;

public class r
  extends k
{
  private long a;
  private String b;
  private boolean c;
  private k d;
  private byte[] e;
  
  public r(long paramLong1, String paramString1, long paramLong2, long paramLong3, String paramString2, int paramInt)
  {
    super(paramString1, paramLong2, paramLong3);
    a = paramLong1;
    b = paramString2;
    c = false;
    d = a(paramInt, paramString1, paramLong2, paramLong3);
  }
  
  public r(k paramk)
  {
    super(paramk.e_(), paramk.d(), paramk.f());
    d = paramk;
    a = 0L;
    b = null;
    c = true;
  }
  
  private k a(int paramInt, String paramString, long paramLong1, long paramLong2)
  {
    if (paramInt == 1) {
      return new p(paramString, paramLong1, paramLong2);
    }
    if (paramInt == 2) {
      return new o(paramString, paramLong1, paramLong2);
    }
    if (paramInt == 3) {
      return new w(paramString, paramLong1, paramLong2);
    }
    if (paramInt == 4) {
      return new e(paramString, paramLong1, paramLong2);
    }
    if (paramInt == 5) {
      return new b(paramString, paramLong1, paramLong2);
    }
    if (paramInt == 6) {
      return new v(paramString, paramLong1, paramLong2);
    }
    return new k(paramString, paramLong1, paramLong2);
  }
  
  /* Error */
  private String a(k paramk)
  {
    // Byte code:
    //   0: new 67	java/io/FileInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokevirtual 70	com/estrongs/android/a/b/k:b	()Ljava/io/File;
    //   8: invokespecial 73	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   11: astore 6
    //   13: aload 6
    //   15: astore 5
    //   17: aload_1
    //   18: invokevirtual 39	com/estrongs/android/a/b/k:d	()J
    //   21: l2i
    //   22: istore_2
    //   23: iload_2
    //   24: sipush 6144
    //   27: if_icmpge +84 -> 111
    //   30: aload 6
    //   32: astore 5
    //   34: aload_0
    //   35: getfield 75	com/estrongs/android/a/b/r:e	[B
    //   38: iload_2
    //   39: sipush 6144
    //   42: iconst_0
    //   43: invokestatic 81	java/util/Arrays:fill	([BIIB)V
    //   46: goto +144 -> 190
    //   49: aload 6
    //   51: astore 5
    //   53: aload 6
    //   55: aload_0
    //   56: getfield 75	com/estrongs/android/a/b/r:e	[B
    //   59: iload_2
    //   60: iload_3
    //   61: invokevirtual 85	java/io/FileInputStream:read	([BII)I
    //   64: istore 4
    //   66: iload 4
    //   68: iconst_m1
    //   69: if_icmpeq +22 -> 91
    //   72: iload_2
    //   73: iload 4
    //   75: iadd
    //   76: istore_2
    //   77: iload_3
    //   78: iload 4
    //   80: isub
    //   81: istore 4
    //   83: iload 4
    //   85: istore_3
    //   86: iload 4
    //   88: ifne -39 -> 49
    //   91: aload 6
    //   93: astore 5
    //   95: aload_0
    //   96: getfield 75	com/estrongs/android/a/b/r:e	[B
    //   99: iconst_1
    //   100: invokestatic 91	com/baidu/android/common/security/MD5Util:toMd5	([BZ)Ljava/lang/String;
    //   103: astore_1
    //   104: aload 6
    //   106: invokestatic 96	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   109: aload_1
    //   110: areturn
    //   111: sipush 6144
    //   114: istore_2
    //   115: goto +75 -> 190
    //   118: astore 5
    //   120: aconst_null
    //   121: astore_1
    //   122: aload 5
    //   124: invokevirtual 100	java/io/FileNotFoundException:printStackTrace	()V
    //   127: aload_1
    //   128: invokestatic 96	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   131: aconst_null
    //   132: areturn
    //   133: astore_1
    //   134: aconst_null
    //   135: astore 6
    //   137: aload 6
    //   139: astore 5
    //   141: aload_1
    //   142: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   145: aload 6
    //   147: invokestatic 96	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   150: aconst_null
    //   151: areturn
    //   152: astore_1
    //   153: aconst_null
    //   154: astore 5
    //   156: aload 5
    //   158: invokestatic 96	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   161: aload_1
    //   162: athrow
    //   163: astore_1
    //   164: goto -8 -> 156
    //   167: astore 6
    //   169: aload_1
    //   170: astore 5
    //   172: aload 6
    //   174: astore_1
    //   175: goto -19 -> 156
    //   178: astore_1
    //   179: goto -42 -> 137
    //   182: astore 5
    //   184: aload 6
    //   186: astore_1
    //   187: goto -65 -> 122
    //   190: iload_2
    //   191: istore_3
    //   192: iconst_0
    //   193: istore_2
    //   194: goto -145 -> 49
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	197	0	this	r
    //   0	197	1	paramk	k
    //   22	172	2	i	int
    //   60	132	3	j	int
    //   64	23	4	k	int
    //   15	79	5	localFileInputStream1	java.io.FileInputStream
    //   118	5	5	localFileNotFoundException1	java.io.FileNotFoundException
    //   139	32	5	localObject1	Object
    //   182	1	5	localFileNotFoundException2	java.io.FileNotFoundException
    //   11	135	6	localFileInputStream2	java.io.FileInputStream
    //   167	18	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	13	118	java/io/FileNotFoundException
    //   0	13	133	java/io/IOException
    //   0	13	152	finally
    //   17	23	163	finally
    //   34	46	163	finally
    //   53	66	163	finally
    //   95	104	163	finally
    //   141	145	163	finally
    //   122	127	167	finally
    //   17	23	178	java/io/IOException
    //   34	46	178	java/io/IOException
    //   53	66	178	java/io/IOException
    //   95	104	178	java/io/IOException
    //   17	23	182	java/io/FileNotFoundException
    //   34	46	182	java/io/FileNotFoundException
    //   53	66	182	java/io/FileNotFoundException
    //   95	104	182	java/io/FileNotFoundException
  }
  
  private byte[] a(InputStream paramInputStream, int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    while (paramInt1 > 0)
    {
      long l = paramInputStream.skip(paramInt1);
      if (l == -1L) {
        throw new RuntimeException(": unexpected EOF");
      }
      paramInt1 = (int)(paramInt1 - l);
    }
    paramInt1 = 0;
    int i;
    do
    {
      i = paramInputStream.read(paramArrayOfByte, paramInt2 + paramInt1, paramInt3);
      if (i == -1) {
        break;
      }
      paramInt1 += i;
      i = paramInt3 - i;
      paramInt3 = i;
    } while (i != 0);
    return paramArrayOfByte;
  }
  
  /* Error */
  private String b(k paramk)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 39	com/estrongs/android/a/b/k:d	()J
    //   4: l2i
    //   5: istore_3
    //   6: new 67	java/io/FileInputStream
    //   9: dup
    //   10: aload_1
    //   11: invokevirtual 70	com/estrongs/android/a/b/k:b	()Ljava/io/File;
    //   14: invokespecial 73	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   17: astore 4
    //   19: iconst_0
    //   20: istore_2
    //   21: aconst_null
    //   22: astore 5
    //   24: iload_2
    //   25: iconst_3
    //   26: if_icmpge +60 -> 86
    //   29: aload 4
    //   31: astore_1
    //   32: aload_0
    //   33: aload 4
    //   35: iconst_3
    //   36: newarray <illegal type>
    //   38: dup
    //   39: iconst_0
    //   40: iconst_0
    //   41: iastore
    //   42: dup
    //   43: iconst_1
    //   44: iload_3
    //   45: iconst_1
    //   46: ishr
    //   47: sipush 2048
    //   50: isub
    //   51: iastore
    //   52: dup
    //   53: iconst_2
    //   54: iload_3
    //   55: sipush 4096
    //   58: isub
    //   59: iastore
    //   60: iload_2
    //   61: iaload
    //   62: aload_0
    //   63: getfield 75	com/estrongs/android/a/b/r:e	[B
    //   66: iload_2
    //   67: sipush 2048
    //   70: imul
    //   71: sipush 2048
    //   74: invokespecial 120	com/estrongs/android/a/b/r:a	(Ljava/io/InputStream;I[BII)[B
    //   77: astore 5
    //   79: iload_2
    //   80: iconst_1
    //   81: iadd
    //   82: istore_2
    //   83: goto -59 -> 24
    //   86: aload 4
    //   88: astore_1
    //   89: aload 5
    //   91: iconst_1
    //   92: invokestatic 91	com/baidu/android/common/security/MD5Util:toMd5	([BZ)Ljava/lang/String;
    //   95: astore 5
    //   97: aload 4
    //   99: invokestatic 96	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   102: aload 5
    //   104: areturn
    //   105: astore 5
    //   107: aconst_null
    //   108: astore 4
    //   110: aload 4
    //   112: astore_1
    //   113: aload 5
    //   115: invokevirtual 100	java/io/FileNotFoundException:printStackTrace	()V
    //   118: aload 4
    //   120: invokestatic 96	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   123: aconst_null
    //   124: areturn
    //   125: astore 5
    //   127: aconst_null
    //   128: astore 4
    //   130: aload 4
    //   132: astore_1
    //   133: aload 5
    //   135: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   138: aload 4
    //   140: invokestatic 96	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   143: aconst_null
    //   144: areturn
    //   145: astore 4
    //   147: aconst_null
    //   148: astore_1
    //   149: aload_1
    //   150: invokestatic 96	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   153: aload 4
    //   155: athrow
    //   156: astore 4
    //   158: goto -9 -> 149
    //   161: astore 5
    //   163: goto -33 -> 130
    //   166: astore 5
    //   168: goto -58 -> 110
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	171	0	this	r
    //   0	171	1	paramk	k
    //   20	63	2	i	int
    //   5	54	3	j	int
    //   17	122	4	localFileInputStream	java.io.FileInputStream
    //   145	9	4	localObject1	Object
    //   156	1	4	localObject2	Object
    //   22	81	5	localObject3	Object
    //   105	9	5	localFileNotFoundException1	java.io.FileNotFoundException
    //   125	9	5	localIOException1	java.io.IOException
    //   161	1	5	localIOException2	java.io.IOException
    //   166	1	5	localFileNotFoundException2	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   6	19	105	java/io/FileNotFoundException
    //   6	19	125	java/io/IOException
    //   6	19	145	finally
    //   32	79	156	finally
    //   89	97	156	finally
    //   113	118	156	finally
    //   133	138	156	finally
    //   32	79	161	java/io/IOException
    //   89	97	161	java/io/IOException
    //   32	79	166	java/io/FileNotFoundException
    //   89	97	166	java/io/FileNotFoundException
  }
  
  public static ThreadLocal<t> i()
  {
    return new s();
  }
  
  public h a()
  {
    return d.a();
  }
  
  /* Error */
  public String a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 23	com/estrongs/android/a/b/r:b	Ljava/lang/String;
    //   4: ifnull +8 -> 12
    //   7: aload_0
    //   8: getfield 23	com/estrongs/android/a/b/r:b	Ljava/lang/String;
    //   11: areturn
    //   12: aload_0
    //   13: aload_1
    //   14: putfield 75	com/estrongs/android/a/b/r:e	[B
    //   17: aload_0
    //   18: monitorenter
    //   19: aload_0
    //   20: getfield 23	com/estrongs/android/a/b/r:b	Ljava/lang/String;
    //   23: ifnonnull +23 -> 46
    //   26: aload_0
    //   27: invokevirtual 133	com/estrongs/android/a/b/r:d	()J
    //   30: ldc2_w 134
    //   33: lcmp
    //   34: ifgt +19 -> 53
    //   37: aload_0
    //   38: aload_0
    //   39: aload_0
    //   40: invokespecial 137	com/estrongs/android/a/b/r:a	(Lcom/estrongs/android/a/b/k;)Ljava/lang/String;
    //   43: putfield 23	com/estrongs/android/a/b/r:b	Ljava/lang/String;
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_0
    //   49: getfield 23	com/estrongs/android/a/b/r:b	Ljava/lang/String;
    //   52: areturn
    //   53: aload_0
    //   54: aload_0
    //   55: aload_0
    //   56: invokespecial 139	com/estrongs/android/a/b/r:b	(Lcom/estrongs/android/a/b/k;)Ljava/lang/String;
    //   59: putfield 23	com/estrongs/android/a/b/r:b	Ljava/lang/String;
    //   62: goto -16 -> 46
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	r
    //   0	70	1	paramArrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   19	46	65	finally
    //   46	48	65	finally
    //   53	62	65	finally
    //   66	68	65	finally
  }
  
  public final void a(long paramLong)
  {
    a = paramLong;
  }
  
  public final long j()
  {
    return a;
  }
  
  public final String k()
  {
    return b;
  }
  
  public final boolean l()
  {
    return c;
  }
  
  public final void m()
  {
    c = true;
  }
  
  public int n()
  {
    if ((d instanceof p)) {
      return 1;
    }
    if ((d instanceof o)) {
      return 2;
    }
    if ((d instanceof w)) {
      return 3;
    }
    if ((d instanceof e)) {
      return 4;
    }
    if ((d instanceof b)) {
      return 5;
    }
    if ((d instanceof v)) {
      return 6;
    }
    return 0;
  }
  
  public String toString()
  {
    return "SameFileResultObject [id=" + a + ", md5=" + b + ", path=" + e_() + ", exist=" + c + ", lastModified=" + f() + ",filesize=" + d() + "]";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.b.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */