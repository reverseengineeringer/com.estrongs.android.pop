package com.estrongs.fs.util;

import com.estrongs.fs.h;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a
  extends f
{
  public static final Map<String, b> a = new ConcurrentHashMap();
  private int h;
  private int i;
  private byte[] j;
  private byte[] k;
  private byte[] l;
  private byte[] m;
  private byte[] n;
  private String o;
  private boolean p;
  private Cipher q = null;
  private File r;
  private File s;
  
  public a(h paramh, String paramString, boolean paramBoolean)
  {
    c = paramh;
    b = paramString.getBytes();
    p = paramBoolean;
  }
  
  private void a(RandomAccessFile paramRandomAccessFile)
  {
    try
    {
      j = new byte[g];
      k = new byte[g];
      paramRandomAccessFile.seek(0L);
      h = a(paramRandomAccessFile, j, g);
      paramRandomAccessFile.seek(d - g);
      i = a(paramRandomAccessFile, k, g);
      return;
    }
    catch (IOException paramRandomAccessFile)
    {
      throw new EncryptException(paramRandomAccessFile);
    }
  }
  
  private void a(RandomAccessFile paramRandomAccessFile, boolean paramBoolean)
  {
    try
    {
      paramRandomAccessFile.seek(0L);
      m = b(j, b);
      if (m.length != j.length) {
        throw new EncryptException("Decrypt error!");
      }
    }
    catch (IOException paramRandomAccessFile)
    {
      throw new EncryptException(paramRandomAccessFile);
    }
    if (paramBoolean) {
      c();
    }
    paramRandomAccessFile.write(m, 0, h);
    paramRandomAccessFile.seek(d - g);
    m = b(k, b);
    if (m.length != k.length) {
      throw new EncryptException("Decrypt error!");
    }
    paramRandomAccessFile.write(m, 0, i);
    if (!paramBoolean) {
      return;
    }
    if (paramRandomAccessFile.getFilePointer() != d) {
      throw new EncryptException("Invalid RandomAccessFile operation");
    }
    paramRandomAccessFile.setLength(d);
    paramRandomAccessFile.close();
    if (s.exists()) {
      s.delete();
    }
  }
  
  private void b(RandomAccessFile paramRandomAccessFile)
  {
    byte[] arrayOfByte = new byte[4];
    paramRandomAccessFile.seek(paramRandomAccessFile.length() - 4L);
    a(paramRandomAccessFile, arrayOfByte, 4);
    ByteBuffer.allocate(4);
    int i1 = ByteBuffer.wrap(arrayOfByte).getInt();
    d = (paramRandomAccessFile.length() - i1);
    if (d < 0L) {
      throw new EncryptException("Invalid filelocker file");
    }
    l = new byte[i1];
    paramRandomAccessFile.seek(d);
    a(paramRandomAccessFile, l, i1);
  }
  
  private byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      if (f) {
        return a(paramArrayOfByte1, paramArrayOfByte2);
      }
      paramArrayOfByte1 = q.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      throw new EncryptException(paramArrayOfByte1);
    }
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: new 164	java/io/BufferedOutputStream
    //   3: dup
    //   4: new 166	java/io/FileOutputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 117	com/estrongs/fs/util/a:s	Ljava/io/File;
    //   12: invokespecial 169	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   15: invokespecial 172	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_2
    //   19: aload_2
    //   20: astore_1
    //   21: aload_2
    //   22: aload_0
    //   23: getfield 62	com/estrongs/fs/util/a:j	[B
    //   26: iconst_0
    //   27: aload_0
    //   28: getfield 75	com/estrongs/fs/util/a:h	I
    //   31: invokevirtual 175	java/io/OutputStream:write	([BII)V
    //   34: aload_2
    //   35: astore_1
    //   36: aload_2
    //   37: aload_0
    //   38: getfield 64	com/estrongs/fs/util/a:k	[B
    //   41: iconst_0
    //   42: aload_0
    //   43: getfield 81	com/estrongs/fs/util/a:i	I
    //   46: invokevirtual 175	java/io/OutputStream:write	([BII)V
    //   49: aload_2
    //   50: astore_1
    //   51: aload_2
    //   52: aload_0
    //   53: getfield 149	com/estrongs/fs/util/a:l	[B
    //   56: iconst_0
    //   57: aload_0
    //   58: getfield 149	com/estrongs/fs/util/a:l	[B
    //   61: arraylength
    //   62: invokevirtual 175	java/io/OutputStream:write	([BII)V
    //   65: aload_2
    //   66: ifnull +7 -> 73
    //   69: aload_2
    //   70: invokevirtual 176	java/io/OutputStream:close	()V
    //   73: return
    //   74: astore_3
    //   75: aconst_null
    //   76: astore_1
    //   77: new 83	com/estrongs/fs/util/EncryptException
    //   80: dup
    //   81: aload_3
    //   82: invokespecial 86	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/Throwable;)V
    //   85: athrow
    //   86: astore_3
    //   87: aload_1
    //   88: astore_2
    //   89: aload_3
    //   90: astore_1
    //   91: aload_2
    //   92: ifnull +7 -> 99
    //   95: aload_2
    //   96: invokevirtual 176	java/io/OutputStream:close	()V
    //   99: aload_1
    //   100: athrow
    //   101: astore_1
    //   102: return
    //   103: astore_2
    //   104: goto -5 -> 99
    //   107: astore_1
    //   108: aconst_null
    //   109: astore_2
    //   110: goto -19 -> 91
    //   113: astore_3
    //   114: aload_2
    //   115: astore_1
    //   116: goto -39 -> 77
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	a
    //   20	80	1	localObject1	Object
    //   101	1	1	localIOException1	IOException
    //   107	1	1	localObject2	Object
    //   115	1	1	localObject3	Object
    //   18	78	2	localObject4	Object
    //   103	1	2	localIOException2	IOException
    //   109	6	2	localObject5	Object
    //   74	8	3	localException1	Exception
    //   86	4	3	localObject6	Object
    //   113	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	19	74	java/lang/Exception
    //   21	34	86	finally
    //   36	49	86	finally
    //   51	65	86	finally
    //   77	86	86	finally
    //   69	73	101	java/io/IOException
    //   95	99	103	java/io/IOException
    //   0	19	107	finally
    //   21	34	113	java/lang/Exception
    //   36	49	113	java/lang/Exception
    //   51	65	113	java/lang/Exception
  }
  
  private void c(RandomAccessFile paramRandomAccessFile)
  {
    paramRandomAccessFile.seek(0L);
    paramRandomAccessFile.write(j, 0, h);
    paramRandomAccessFile.seek(d - g);
    paramRandomAccessFile.write(k, 0, i);
    paramRandomAccessFile.write(l, 0, l.length);
    if (s.exists()) {
      s.delete();
    }
  }
  
  private void c(byte[] paramArrayOfByte)
  {
    int i1 = 1;
    int i2 = paramArrayOfByte.length - 4 - 8;
    byte[] arrayOfByte1 = b(paramArrayOfByte, 0, i2);
    byte[] arrayOfByte2 = new byte[8];
    System.arraycopy(paramArrayOfByte, i2, arrayOfByte2, 0, arrayOfByte2.length);
    if (!Arrays.equals(arrayOfByte2, arrayOfByte1)) {
      throw new EncryptException("Locked file is corrupted");
    }
    i2 = paramArrayOfByte[(i2 - 1)];
    boolean bool;
    if ((i2 & 0x1) != 0)
    {
      bool = true;
      f = bool;
      if ((i2 & 0x2) == 0) {
        break label264;
      }
      bool = true;
      label86:
      e = bool;
      d(b);
      i2 = paramArrayOfByte[0];
      if (i2 < 0) {
        break label270;
      }
      arrayOfByte1 = new byte[i2];
      System.arraycopy(paramArrayOfByte, 1, arrayOfByte1, 0, arrayOfByte1.length);
      ByteBuffer.allocate(4);
      g = ByteBuffer.wrap(arrayOfByte1).getInt();
      i1 = i2 + 0 + 1;
      label147:
      int i3 = paramArrayOfByte[i1];
      i2 = i3;
      if (i3 < 0)
      {
        i2 = i3;
        if (i3 != -1) {
          i2 = i3 & 0xFF;
        }
      }
      if (i2 < 0) {
        break label278;
      }
      arrayOfByte1 = new byte[i2];
      System.arraycopy(paramArrayOfByte, i1 + 1, arrayOfByte1, 0, arrayOfByte1.length);
      o = new String(b(arrayOfByte1, b));
      i1 = i2 + i1 + 1;
    }
    for (;;)
    {
      i2 = paramArrayOfByte[i1];
      if (i2 >= 0)
      {
        n = new byte[i2];
        System.arraycopy(paramArrayOfByte, i1 + 1, n, 0, n.length);
      }
      return;
      bool = false;
      break;
      label264:
      bool = false;
      break label86;
      label270:
      g = -1;
      break label147;
      label278:
      o = null;
      i1 += 1;
    }
  }
  
  private void d(byte[] paramArrayOfByte)
  {
    if (f) {
      return;
    }
    try
    {
      q = Cipher.getInstance("2.16.840.1.101.3.4.1.4/CFB/NoPadding");
      Object localObject = a(paramArrayOfByte);
      paramArrayOfByte = new IvParameterSpec(new byte[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 });
      localObject = new SecretKeySpec((byte[])localObject, "AES");
      q.init(2, (Key)localObject, paramArrayOfByte);
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      try
      {
        q = Cipher.getInstance("AES/CFB/NoPadding");
      }
      catch (NoSuchAlgorithmException paramArrayOfByte)
      {
        throw paramArrayOfByte;
      }
    }
  }
  
  /* Error */
  public boolean a()
  {
    // Byte code:
    //   0: invokestatic 253	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   3: astore 14
    //   5: aload 14
    //   7: ifnull +31 -> 38
    //   10: aload 14
    //   12: bipush 9
    //   14: iconst_2
    //   15: anewarray 255	java/lang/Object
    //   18: dup
    //   19: iconst_0
    //   20: aload_0
    //   21: getfield 79	com/estrongs/fs/util/a:d	J
    //   24: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   27: aastore
    //   28: dup
    //   29: iconst_1
    //   30: lconst_0
    //   31: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   34: aastore
    //   35: invokevirtual 265	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   38: new 119	java/io/File
    //   41: dup
    //   42: aload_0
    //   43: getfield 43	com/estrongs/fs/util/a:c	Lcom/estrongs/fs/h;
    //   46: invokeinterface 271 1 0
    //   51: invokespecial 272	java/io/File:<init>	(Ljava/lang/String;)V
    //   54: astore 13
    //   56: new 66	java/io/RandomAccessFile
    //   59: dup
    //   60: aload 13
    //   62: ldc_w 273
    //   65: invokespecial 276	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   68: astore 15
    //   70: aload_0
    //   71: aload 15
    //   73: invokespecial 278	com/estrongs/fs/util/a:b	(Ljava/io/RandomAccessFile;)V
    //   76: aload_0
    //   77: aload_0
    //   78: getfield 149	com/estrongs/fs/util/a:l	[B
    //   81: invokespecial 280	com/estrongs/fs/util/a:c	([B)V
    //   84: aload_0
    //   85: getfield 205	com/estrongs/fs/util/a:n	[B
    //   88: aload_0
    //   89: getfield 52	com/estrongs/fs/util/a:b	[B
    //   92: invokestatic 282	com/estrongs/fs/util/a:b	([B)[B
    //   95: invokestatic 192	java/util/Arrays:equals	([B[B)Z
    //   98: ifne +14 -> 112
    //   101: new 83	com/estrongs/fs/util/EncryptException
    //   104: dup
    //   105: ldc_w 284
    //   108: invokespecial 97	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/String;)V
    //   111: athrow
    //   112: aload_0
    //   113: getfield 203	com/estrongs/fs/util/a:o	Ljava/lang/String;
    //   116: astore 9
    //   118: aload 9
    //   120: astore 8
    //   122: aload 9
    //   124: ifnonnull +25 -> 149
    //   127: aload 13
    //   129: invokevirtual 287	java/io/File:getName	()Ljava/lang/String;
    //   132: iconst_0
    //   133: aload 13
    //   135: invokevirtual 287	java/io/File:getName	()Ljava/lang/String;
    //   138: ldc_w 289
    //   141: invokevirtual 293	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   144: invokevirtual 297	java/lang/String:substring	(II)Ljava/lang/String;
    //   147: astore 8
    //   149: aload_0
    //   150: new 119	java/io/File
    //   153: dup
    //   154: aload 13
    //   156: invokevirtual 300	java/io/File:getParent	()Ljava/lang/String;
    //   159: aload 8
    //   161: invokespecial 303	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   164: putfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   167: aload_0
    //   168: getfield 197	com/estrongs/fs/util/a:e	Z
    //   171: ifeq +768 -> 939
    //   174: new 66	java/io/RandomAccessFile
    //   177: dup
    //   178: aload_0
    //   179: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   182: ldc_w 307
    //   185: invokespecial 276	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   188: astore 10
    //   190: aload 10
    //   192: astore 9
    //   194: aload 10
    //   196: astore 8
    //   198: aload 15
    //   200: lconst_0
    //   201: invokevirtual 70	java/io/RandomAccessFile:seek	(J)V
    //   204: lconst_0
    //   205: lstore 4
    //   207: aload 10
    //   209: astore 9
    //   211: aload 10
    //   213: astore 8
    //   215: sipush 16384
    //   218: newarray <illegal type>
    //   220: astore 11
    //   222: aload 10
    //   224: astore 9
    //   226: aload 10
    //   228: astore 8
    //   230: aload 15
    //   232: aload 11
    //   234: iconst_0
    //   235: aload 11
    //   237: arraylength
    //   238: invokevirtual 311	java/io/RandomAccessFile:read	([BII)I
    //   241: istore_1
    //   242: iload_1
    //   243: iconst_m1
    //   244: if_icmpeq +408 -> 652
    //   247: aload 10
    //   249: astore 9
    //   251: aload 10
    //   253: astore 8
    //   255: lload 4
    //   257: aload_0
    //   258: getfield 79	com/estrongs/fs/util/a:d	J
    //   261: lcmp
    //   262: ifge +390 -> 652
    //   265: aload 14
    //   267: ifnull +115 -> 382
    //   270: aload 10
    //   272: astore 9
    //   274: aload 10
    //   276: astore 8
    //   278: aload 14
    //   280: invokevirtual 314	com/estrongs/a/a:taskStopped	()Z
    //   283: ifeq +99 -> 382
    //   286: aload 10
    //   288: astore 9
    //   290: aload 10
    //   292: astore 8
    //   294: aload_0
    //   295: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   298: ifnull +37 -> 335
    //   301: aload 10
    //   303: astore 9
    //   305: aload 10
    //   307: astore 8
    //   309: aload_0
    //   310: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   313: invokevirtual 123	java/io/File:exists	()Z
    //   316: ifeq +19 -> 335
    //   319: aload 10
    //   321: astore 9
    //   323: aload 10
    //   325: astore 8
    //   327: aload_0
    //   328: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   331: invokevirtual 126	java/io/File:delete	()Z
    //   334: pop
    //   335: iconst_0
    //   336: istore_3
    //   337: aload 10
    //   339: ifnull +8 -> 347
    //   342: aload 10
    //   344: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   347: iload_3
    //   348: istore_2
    //   349: aload 15
    //   351: ifnull +10 -> 361
    //   354: aload 15
    //   356: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   359: iload_3
    //   360: istore_2
    //   361: iload_2
    //   362: ireturn
    //   363: astore 8
    //   365: aload 8
    //   367: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   370: goto -23 -> 347
    //   373: astore 8
    //   375: aload 8
    //   377: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   380: iconst_0
    //   381: ireturn
    //   382: lload 4
    //   384: iload_1
    //   385: i2l
    //   386: ladd
    //   387: lstore 6
    //   389: aload 10
    //   391: astore 9
    //   393: aload 10
    //   395: astore 8
    //   397: aload_0
    //   398: aload_0
    //   399: aload 11
    //   401: aload_0
    //   402: getfield 52	com/estrongs/fs/util/a:b	[B
    //   405: invokespecial 90	com/estrongs/fs/util/a:b	([B[B)[B
    //   408: putfield 92	com/estrongs/fs/util/a:m	[B
    //   411: aload 10
    //   413: astore 9
    //   415: aload 10
    //   417: astore 8
    //   419: aload_0
    //   420: getfield 92	com/estrongs/fs/util/a:m	[B
    //   423: arraylength
    //   424: aload 11
    //   426: arraylength
    //   427: if_icmpeq +101 -> 528
    //   430: aload 10
    //   432: astore 9
    //   434: aload 10
    //   436: astore 8
    //   438: new 83	com/estrongs/fs/util/EncryptException
    //   441: dup
    //   442: ldc_w 319
    //   445: invokespecial 97	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/String;)V
    //   448: athrow
    //   449: astore 10
    //   451: aload 9
    //   453: astore 8
    //   455: aload_0
    //   456: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   459: ifnull +29 -> 488
    //   462: aload 9
    //   464: astore 8
    //   466: aload_0
    //   467: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   470: invokevirtual 123	java/io/File:exists	()Z
    //   473: ifeq +15 -> 488
    //   476: aload 9
    //   478: astore 8
    //   480: aload_0
    //   481: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   484: invokevirtual 126	java/io/File:delete	()Z
    //   487: pop
    //   488: aload 9
    //   490: astore 8
    //   492: aload 10
    //   494: athrow
    //   495: astore 10
    //   497: aload 8
    //   499: astore 9
    //   501: aload 10
    //   503: astore 8
    //   505: aload 9
    //   507: ifnull +8 -> 515
    //   510: aload 9
    //   512: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   515: aload 15
    //   517: ifnull +8 -> 525
    //   520: aload 15
    //   522: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   525: aload 8
    //   527: athrow
    //   528: aload 10
    //   530: astore 9
    //   532: aload 10
    //   534: astore 8
    //   536: lload 6
    //   538: aload_0
    //   539: getfield 79	com/estrongs/fs/util/a:d	J
    //   542: lcmp
    //   543: ifge +77 -> 620
    //   546: aload 10
    //   548: astore 9
    //   550: aload 10
    //   552: astore 8
    //   554: aload 10
    //   556: aload_0
    //   557: getfield 92	com/estrongs/fs/util/a:m	[B
    //   560: iconst_0
    //   561: aload 11
    //   563: arraylength
    //   564: invokevirtual 103	java/io/RandomAccessFile:write	([BII)V
    //   567: lload 6
    //   569: lstore 4
    //   571: aload 14
    //   573: ifnull -351 -> 222
    //   576: aload 10
    //   578: astore 9
    //   580: aload 10
    //   582: astore 8
    //   584: aload 14
    //   586: bipush 9
    //   588: iconst_2
    //   589: anewarray 255	java/lang/Object
    //   592: dup
    //   593: iconst_0
    //   594: aload_0
    //   595: getfield 79	com/estrongs/fs/util/a:d	J
    //   598: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   601: aastore
    //   602: dup
    //   603: iconst_1
    //   604: lload 6
    //   606: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   609: aastore
    //   610: invokevirtual 265	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   613: lload 6
    //   615: lstore 4
    //   617: goto -395 -> 222
    //   620: aload 10
    //   622: astore 9
    //   624: aload 10
    //   626: astore 8
    //   628: aload 10
    //   630: aload_0
    //   631: getfield 92	com/estrongs/fs/util/a:m	[B
    //   634: iconst_0
    //   635: aload_0
    //   636: getfield 79	com/estrongs/fs/util/a:d	J
    //   639: lload 6
    //   641: iload_1
    //   642: i2l
    //   643: lsub
    //   644: lsub
    //   645: l2i
    //   646: invokevirtual 103	java/io/RandomAccessFile:write	([BII)V
    //   649: goto -82 -> 567
    //   652: aload 10
    //   654: astore 9
    //   656: aload 10
    //   658: astore 8
    //   660: aload 10
    //   662: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   665: aconst_null
    //   666: astore 12
    //   668: aconst_null
    //   669: astore 11
    //   671: aload 11
    //   673: astore 9
    //   675: aload 12
    //   677: astore 8
    //   679: aload 13
    //   681: invokevirtual 126	java/io/File:delete	()Z
    //   684: pop
    //   685: aload 11
    //   687: astore 9
    //   689: aload 12
    //   691: astore 8
    //   693: aload_0
    //   694: getfield 54	com/estrongs/fs/util/a:p	Z
    //   697: ifeq +124 -> 821
    //   700: aload 11
    //   702: astore 9
    //   704: aload 12
    //   706: astore 8
    //   708: aload_0
    //   709: getfield 203	com/estrongs/fs/util/a:o	Ljava/lang/String;
    //   712: ifnull +186 -> 898
    //   715: iconst_1
    //   716: istore_2
    //   717: aload 11
    //   719: astore 9
    //   721: aload 12
    //   723: astore 8
    //   725: getstatic 34	com/estrongs/fs/util/a:a	Ljava/util/Map;
    //   728: astore 18
    //   730: aload 11
    //   732: astore 9
    //   734: aload 12
    //   736: astore 8
    //   738: aload_0
    //   739: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   742: invokevirtual 320	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   745: invokestatic 326	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   748: astore 17
    //   750: aload 11
    //   752: astore 9
    //   754: aload 12
    //   756: astore 8
    //   758: new 45	java/lang/String
    //   761: dup
    //   762: aload_0
    //   763: getfield 52	com/estrongs/fs/util/a:b	[B
    //   766: invokespecial 201	java/lang/String:<init>	([B)V
    //   769: astore 16
    //   771: iload_2
    //   772: ifeq +131 -> 903
    //   775: aload 11
    //   777: astore 9
    //   779: aload 12
    //   781: astore 8
    //   783: aload 13
    //   785: invokevirtual 287	java/io/File:getName	()Ljava/lang/String;
    //   788: astore 10
    //   790: aload 11
    //   792: astore 9
    //   794: aload 12
    //   796: astore 8
    //   798: aload 18
    //   800: aload 17
    //   802: new 328	com/estrongs/fs/util/b
    //   805: dup
    //   806: aload_0
    //   807: aload 16
    //   809: iload_2
    //   810: aload 10
    //   812: invokespecial 331	com/estrongs/fs/util/b:<init>	(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;)V
    //   815: invokeinterface 337 3 0
    //   820: pop
    //   821: aload 14
    //   823: ifnull +40 -> 863
    //   826: aload 11
    //   828: astore 9
    //   830: aload 12
    //   832: astore 8
    //   834: aload 14
    //   836: iconst_2
    //   837: iconst_2
    //   838: anewarray 255	java/lang/Object
    //   841: dup
    //   842: iconst_0
    //   843: lconst_1
    //   844: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   847: aastore
    //   848: dup
    //   849: iconst_1
    //   850: aload_0
    //   851: getfield 43	com/estrongs/fs/util/a:c	Lcom/estrongs/fs/h;
    //   854: invokeinterface 271 1 0
    //   859: aastore
    //   860: invokevirtual 265	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   863: iconst_1
    //   864: istore_2
    //   865: iconst_0
    //   866: ifeq +11 -> 877
    //   869: new 339	java/lang/NullPointerException
    //   872: dup
    //   873: invokespecial 340	java/lang/NullPointerException:<init>	()V
    //   876: athrow
    //   877: aload 15
    //   879: ifnull -518 -> 361
    //   882: aload 15
    //   884: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   887: iconst_1
    //   888: ireturn
    //   889: astore 8
    //   891: aload 8
    //   893: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   896: iconst_1
    //   897: ireturn
    //   898: iconst_0
    //   899: istore_2
    //   900: goto -183 -> 717
    //   903: aconst_null
    //   904: astore 10
    //   906: goto -116 -> 790
    //   909: astore 8
    //   911: aload 8
    //   913: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   916: goto -39 -> 877
    //   919: astore 9
    //   921: aload 9
    //   923: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   926: goto -411 -> 515
    //   929: astore 9
    //   931: aload 9
    //   933: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   936: goto -411 -> 525
    //   939: aload_0
    //   940: aload 15
    //   942: invokespecial 342	com/estrongs/fs/util/a:a	(Ljava/io/RandomAccessFile;)V
    //   945: aload 15
    //   947: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   950: aload 13
    //   952: aload_0
    //   953: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   956: invokevirtual 346	java/io/File:renameTo	(Ljava/io/File;)Z
    //   959: ifne +151 -> 1110
    //   962: iconst_0
    //   963: ireturn
    //   964: astore 8
    //   966: aload 8
    //   968: athrow
    //   969: astore 9
    //   971: aload 9
    //   973: invokevirtual 349	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   976: astore 8
    //   978: aload 8
    //   980: ifnull +1161 -> 2141
    //   983: aload 8
    //   985: ldc_w 351
    //   988: invokevirtual 355	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   991: ifeq +1150 -> 2141
    //   994: aload 8
    //   996: ldc_w 357
    //   999: invokevirtual 355	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   1002: ifeq +1139 -> 2141
    //   1005: aload 13
    //   1007: invokevirtual 320	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1010: invokestatic 361	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   1013: ifeq +404 -> 1417
    //   1016: new 363	android/os/StatFs
    //   1019: dup
    //   1020: aload 13
    //   1022: invokevirtual 320	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1025: invokespecial 364	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   1028: astore 8
    //   1030: aload 8
    //   1032: invokevirtual 367	android/os/StatFs:getBlockSize	()I
    //   1035: i2l
    //   1036: lstore 4
    //   1038: aload 8
    //   1040: invokevirtual 370	android/os/StatFs:getAvailableBlocks	()I
    //   1043: i2l
    //   1044: lstore 6
    //   1046: aload 13
    //   1048: invokevirtual 371	java/io/File:length	()J
    //   1051: lload 6
    //   1053: lload 4
    //   1055: lmul
    //   1056: lcmp
    //   1057: ifle +360 -> 1417
    //   1060: aload 14
    //   1062: ifnull +355 -> 1417
    //   1065: aload 14
    //   1067: bipush 12
    //   1069: new 373	com/estrongs/a/q
    //   1072: dup
    //   1073: ldc_w 375
    //   1076: iconst_2
    //   1077: anewarray 257	java/lang/Long
    //   1080: dup
    //   1081: iconst_0
    //   1082: aload 13
    //   1084: invokevirtual 371	java/io/File:length	()J
    //   1087: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1090: aastore
    //   1091: dup
    //   1092: iconst_1
    //   1093: lload 6
    //   1095: lload 4
    //   1097: lmul
    //   1098: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1101: aastore
    //   1102: invokespecial 378	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   1105: invokevirtual 382	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1108: iconst_0
    //   1109: ireturn
    //   1110: new 66	java/io/RandomAccessFile
    //   1113: dup
    //   1114: aload_0
    //   1115: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1118: ldc_w 307
    //   1121: invokespecial 276	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1124: astore 8
    //   1126: aload_0
    //   1127: new 119	java/io/File
    //   1130: dup
    //   1131: new 384	java/lang/StringBuilder
    //   1134: dup
    //   1135: invokespecial 385	java/lang/StringBuilder:<init>	()V
    //   1138: aload 13
    //   1140: invokevirtual 300	java/io/File:getParent	()Ljava/lang/String;
    //   1143: invokevirtual 389	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1146: ldc_w 391
    //   1149: invokevirtual 389	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1152: aload 13
    //   1154: invokevirtual 287	java/io/File:getName	()Ljava/lang/String;
    //   1157: invokevirtual 389	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1160: ldc_w 393
    //   1163: invokevirtual 389	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1166: invokevirtual 396	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1169: invokestatic 400	com/estrongs/fs/util/j:m	(Ljava/lang/String;)Ljava/lang/String;
    //   1172: invokespecial 272	java/io/File:<init>	(Ljava/lang/String;)V
    //   1175: putfield 117	com/estrongs/fs/util/a:s	Ljava/io/File;
    //   1178: aload_0
    //   1179: aload 8
    //   1181: iconst_1
    //   1182: invokespecial 402	com/estrongs/fs/util/a:a	(Ljava/io/RandomAccessFile;Z)V
    //   1185: aload_0
    //   1186: getfield 54	com/estrongs/fs/util/a:p	Z
    //   1189: ifeq +76 -> 1265
    //   1192: aload_0
    //   1193: getfield 203	com/estrongs/fs/util/a:o	Ljava/lang/String;
    //   1196: ifnull +980 -> 2176
    //   1199: iconst_1
    //   1200: istore_2
    //   1201: getstatic 34	com/estrongs/fs/util/a:a	Ljava/util/Map;
    //   1204: astore 10
    //   1206: aload_0
    //   1207: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1210: invokevirtual 320	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1213: invokestatic 326	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   1216: astore 9
    //   1218: new 45	java/lang/String
    //   1221: dup
    //   1222: aload_0
    //   1223: getfield 52	com/estrongs/fs/util/a:b	[B
    //   1226: invokespecial 201	java/lang/String:<init>	([B)V
    //   1229: astore 11
    //   1231: iload_2
    //   1232: ifeq +949 -> 2181
    //   1235: aload 13
    //   1237: invokevirtual 287	java/io/File:getName	()Ljava/lang/String;
    //   1240: astore 8
    //   1242: aload 10
    //   1244: aload 9
    //   1246: new 328	com/estrongs/fs/util/b
    //   1249: dup
    //   1250: aload_0
    //   1251: aload 11
    //   1253: iload_2
    //   1254: aload 8
    //   1256: invokespecial 331	com/estrongs/fs/util/b:<init>	(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;)V
    //   1259: invokeinterface 337 3 0
    //   1264: pop
    //   1265: aload 14
    //   1267: ifnull +63 -> 1330
    //   1270: aload 14
    //   1272: bipush 9
    //   1274: iconst_2
    //   1275: anewarray 255	java/lang/Object
    //   1278: dup
    //   1279: iconst_0
    //   1280: aload_0
    //   1281: getfield 79	com/estrongs/fs/util/a:d	J
    //   1284: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1287: aastore
    //   1288: dup
    //   1289: iconst_1
    //   1290: aload_0
    //   1291: getfield 79	com/estrongs/fs/util/a:d	J
    //   1294: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1297: aastore
    //   1298: invokevirtual 265	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1301: aload 14
    //   1303: iconst_2
    //   1304: iconst_2
    //   1305: anewarray 255	java/lang/Object
    //   1308: dup
    //   1309: iconst_0
    //   1310: lconst_1
    //   1311: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1314: aastore
    //   1315: dup
    //   1316: iconst_1
    //   1317: aload_0
    //   1318: getfield 43	com/estrongs/fs/util/a:c	Lcom/estrongs/fs/h;
    //   1321: invokeinterface 271 1 0
    //   1326: aastore
    //   1327: invokevirtual 265	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1330: iconst_1
    //   1331: ireturn
    //   1332: astore 8
    //   1334: aload 8
    //   1336: athrow
    //   1337: astore 9
    //   1339: aload_0
    //   1340: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1343: aload 13
    //   1345: invokevirtual 346	java/io/File:renameTo	(Ljava/io/File;)Z
    //   1348: ifne +34 -> 1382
    //   1351: new 57	java/io/IOException
    //   1354: dup
    //   1355: new 384	java/lang/StringBuilder
    //   1358: dup
    //   1359: ldc_w 404
    //   1362: invokespecial 405	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1365: aload_0
    //   1366: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1369: invokevirtual 287	java/io/File:getName	()Ljava/lang/String;
    //   1372: invokevirtual 389	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1375: invokevirtual 396	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1378: invokespecial 406	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   1381: athrow
    //   1382: new 66	java/io/RandomAccessFile
    //   1385: dup
    //   1386: aload 13
    //   1388: ldc_w 307
    //   1391: invokespecial 276	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1394: astore 8
    //   1396: aload_0
    //   1397: aload 8
    //   1399: invokespecial 408	com/estrongs/fs/util/a:c	(Ljava/io/RandomAccessFile;)V
    //   1402: aload 8
    //   1404: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   1407: aload 9
    //   1409: athrow
    //   1410: astore 8
    //   1412: aload 8
    //   1414: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   1417: new 66	java/io/RandomAccessFile
    //   1420: dup
    //   1421: aload 13
    //   1423: ldc_w 273
    //   1426: invokespecial 276	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1429: astore 15
    //   1431: new 66	java/io/RandomAccessFile
    //   1434: dup
    //   1435: aload_0
    //   1436: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1439: ldc_w 307
    //   1442: invokespecial 276	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1445: astore 10
    //   1447: aload 10
    //   1449: astore 9
    //   1451: aload 10
    //   1453: astore 8
    //   1455: aload 15
    //   1457: lconst_0
    //   1458: invokevirtual 70	java/io/RandomAccessFile:seek	(J)V
    //   1461: lconst_0
    //   1462: lstore 4
    //   1464: aload 10
    //   1466: astore 9
    //   1468: aload 10
    //   1470: astore 8
    //   1472: sipush 16384
    //   1475: newarray <illegal type>
    //   1477: astore 11
    //   1479: aload 10
    //   1481: astore 9
    //   1483: aload 10
    //   1485: astore 8
    //   1487: aload 15
    //   1489: aload 11
    //   1491: iconst_0
    //   1492: aload 11
    //   1494: arraylength
    //   1495: invokevirtual 311	java/io/RandomAccessFile:read	([BII)I
    //   1498: istore_1
    //   1499: iload_1
    //   1500: iconst_m1
    //   1501: if_icmpeq +380 -> 1881
    //   1504: aload 10
    //   1506: astore 9
    //   1508: aload 10
    //   1510: astore 8
    //   1512: lload 4
    //   1514: aload_0
    //   1515: getfield 79	com/estrongs/fs/util/a:d	J
    //   1518: lcmp
    //   1519: ifge +362 -> 1881
    //   1522: aload 14
    //   1524: ifnull +111 -> 1635
    //   1527: aload 10
    //   1529: astore 9
    //   1531: aload 10
    //   1533: astore 8
    //   1535: aload 14
    //   1537: invokevirtual 314	com/estrongs/a/a:taskStopped	()Z
    //   1540: ifeq +95 -> 1635
    //   1543: aload 10
    //   1545: astore 9
    //   1547: aload 10
    //   1549: astore 8
    //   1551: aload_0
    //   1552: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1555: ifnull +37 -> 1592
    //   1558: aload 10
    //   1560: astore 9
    //   1562: aload 10
    //   1564: astore 8
    //   1566: aload_0
    //   1567: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1570: invokevirtual 123	java/io/File:exists	()Z
    //   1573: ifeq +19 -> 1592
    //   1576: aload 10
    //   1578: astore 9
    //   1580: aload 10
    //   1582: astore 8
    //   1584: aload_0
    //   1585: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1588: invokevirtual 126	java/io/File:delete	()Z
    //   1591: pop
    //   1592: iconst_0
    //   1593: istore_2
    //   1594: aload 10
    //   1596: ifnull +8 -> 1604
    //   1599: aload 10
    //   1601: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   1604: aload 15
    //   1606: ifnull -1245 -> 361
    //   1609: aload 15
    //   1611: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   1614: iconst_0
    //   1615: ireturn
    //   1616: astore 8
    //   1618: aload 8
    //   1620: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   1623: iconst_0
    //   1624: ireturn
    //   1625: astore 8
    //   1627: aload 8
    //   1629: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   1632: goto -28 -> 1604
    //   1635: lload 4
    //   1637: iload_1
    //   1638: i2l
    //   1639: ladd
    //   1640: lstore 6
    //   1642: aload 10
    //   1644: astore 9
    //   1646: aload 10
    //   1648: astore 8
    //   1650: lload 6
    //   1652: aload_0
    //   1653: getfield 79	com/estrongs/fs/util/a:d	J
    //   1656: lcmp
    //   1657: ifge +194 -> 1851
    //   1660: aload 10
    //   1662: astore 9
    //   1664: aload 10
    //   1666: astore 8
    //   1668: aload 10
    //   1670: aload 11
    //   1672: iconst_0
    //   1673: aload 11
    //   1675: arraylength
    //   1676: invokevirtual 103	java/io/RandomAccessFile:write	([BII)V
    //   1679: lload 6
    //   1681: lstore 4
    //   1683: aload 14
    //   1685: ifnull -206 -> 1479
    //   1688: aload 10
    //   1690: astore 9
    //   1692: aload 10
    //   1694: astore 8
    //   1696: aload 14
    //   1698: bipush 9
    //   1700: iconst_2
    //   1701: anewarray 255	java/lang/Object
    //   1704: dup
    //   1705: iconst_0
    //   1706: aload_0
    //   1707: getfield 79	com/estrongs/fs/util/a:d	J
    //   1710: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1713: aastore
    //   1714: dup
    //   1715: iconst_1
    //   1716: lload 6
    //   1718: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1721: aastore
    //   1722: invokevirtual 265	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1725: aload 10
    //   1727: astore 9
    //   1729: aload 10
    //   1731: astore 8
    //   1733: aload 14
    //   1735: iconst_2
    //   1736: iconst_2
    //   1737: anewarray 255	java/lang/Object
    //   1740: dup
    //   1741: iconst_0
    //   1742: iload_1
    //   1743: i2l
    //   1744: lconst_0
    //   1745: ladd
    //   1746: invokestatic 261	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1749: aastore
    //   1750: dup
    //   1751: iconst_1
    //   1752: aload_0
    //   1753: getfield 43	com/estrongs/fs/util/a:c	Lcom/estrongs/fs/h;
    //   1756: invokeinterface 271 1 0
    //   1761: aastore
    //   1762: invokevirtual 265	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1765: lload 6
    //   1767: lstore 4
    //   1769: goto -290 -> 1479
    //   1772: astore 10
    //   1774: aload 9
    //   1776: astore 8
    //   1778: aload_0
    //   1779: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1782: ifnull +29 -> 1811
    //   1785: aload 9
    //   1787: astore 8
    //   1789: aload_0
    //   1790: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1793: invokevirtual 123	java/io/File:exists	()Z
    //   1796: ifeq +15 -> 1811
    //   1799: aload 9
    //   1801: astore 8
    //   1803: aload_0
    //   1804: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1807: invokevirtual 126	java/io/File:delete	()Z
    //   1810: pop
    //   1811: aload 9
    //   1813: astore 8
    //   1815: aload 10
    //   1817: athrow
    //   1818: astore 10
    //   1820: aload 8
    //   1822: astore 9
    //   1824: aload 10
    //   1826: astore 8
    //   1828: aload 9
    //   1830: ifnull +8 -> 1838
    //   1833: aload 9
    //   1835: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   1838: aload 15
    //   1840: ifnull +8 -> 1848
    //   1843: aload 15
    //   1845: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   1848: aload 8
    //   1850: athrow
    //   1851: aload 10
    //   1853: astore 9
    //   1855: aload 10
    //   1857: astore 8
    //   1859: aload 10
    //   1861: aload 11
    //   1863: iconst_0
    //   1864: aload_0
    //   1865: getfield 79	com/estrongs/fs/util/a:d	J
    //   1868: lload 6
    //   1870: iload_1
    //   1871: i2l
    //   1872: lsub
    //   1873: lsub
    //   1874: l2i
    //   1875: invokevirtual 103	java/io/RandomAccessFile:write	([BII)V
    //   1878: goto -199 -> 1679
    //   1881: aload 10
    //   1883: astore 9
    //   1885: aload 10
    //   1887: astore 8
    //   1889: aload_0
    //   1890: aload 10
    //   1892: iconst_0
    //   1893: invokespecial 402	com/estrongs/fs/util/a:a	(Ljava/io/RandomAccessFile;Z)V
    //   1896: aload 10
    //   1898: astore 9
    //   1900: aload 10
    //   1902: astore 8
    //   1904: aload 10
    //   1906: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   1909: aconst_null
    //   1910: astore 12
    //   1912: aconst_null
    //   1913: astore 11
    //   1915: aload 11
    //   1917: astore 9
    //   1919: aload 12
    //   1921: astore 8
    //   1923: aload 13
    //   1925: invokevirtual 126	java/io/File:delete	()Z
    //   1928: pop
    //   1929: aload 11
    //   1931: astore 9
    //   1933: aload 12
    //   1935: astore 8
    //   1937: aload_0
    //   1938: getfield 54	com/estrongs/fs/util/a:p	Z
    //   1941: ifeq +124 -> 2065
    //   1944: aload 11
    //   1946: astore 9
    //   1948: aload 12
    //   1950: astore 8
    //   1952: aload_0
    //   1953: getfield 203	com/estrongs/fs/util/a:o	Ljava/lang/String;
    //   1956: ifnull +144 -> 2100
    //   1959: iconst_1
    //   1960: istore_2
    //   1961: aload 11
    //   1963: astore 9
    //   1965: aload 12
    //   1967: astore 8
    //   1969: getstatic 34	com/estrongs/fs/util/a:a	Ljava/util/Map;
    //   1972: astore 16
    //   1974: aload 11
    //   1976: astore 9
    //   1978: aload 12
    //   1980: astore 8
    //   1982: aload_0
    //   1983: getfield 305	com/estrongs/fs/util/a:r	Ljava/io/File;
    //   1986: invokevirtual 320	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1989: invokestatic 326	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   1992: astore 17
    //   1994: aload 11
    //   1996: astore 9
    //   1998: aload 12
    //   2000: astore 8
    //   2002: new 45	java/lang/String
    //   2005: dup
    //   2006: aload_0
    //   2007: getfield 52	com/estrongs/fs/util/a:b	[B
    //   2010: invokespecial 201	java/lang/String:<init>	([B)V
    //   2013: astore 14
    //   2015: iload_2
    //   2016: ifeq +89 -> 2105
    //   2019: aload 11
    //   2021: astore 9
    //   2023: aload 12
    //   2025: astore 8
    //   2027: aload 13
    //   2029: invokevirtual 287	java/io/File:getName	()Ljava/lang/String;
    //   2032: astore 10
    //   2034: aload 11
    //   2036: astore 9
    //   2038: aload 12
    //   2040: astore 8
    //   2042: aload 16
    //   2044: aload 17
    //   2046: new 328	com/estrongs/fs/util/b
    //   2049: dup
    //   2050: aload_0
    //   2051: aload 14
    //   2053: iload_2
    //   2054: aload 10
    //   2056: invokespecial 331	com/estrongs/fs/util/b:<init>	(Lcom/estrongs/fs/util/a;Ljava/lang/String;ZLjava/lang/String;)V
    //   2059: invokeinterface 337 3 0
    //   2064: pop
    //   2065: iconst_1
    //   2066: istore_2
    //   2067: iconst_0
    //   2068: ifeq +11 -> 2079
    //   2071: new 339	java/lang/NullPointerException
    //   2074: dup
    //   2075: invokespecial 340	java/lang/NullPointerException:<init>	()V
    //   2078: athrow
    //   2079: aload 15
    //   2081: ifnull -1720 -> 361
    //   2084: aload 15
    //   2086: invokevirtual 115	java/io/RandomAccessFile:close	()V
    //   2089: iconst_1
    //   2090: ireturn
    //   2091: astore 8
    //   2093: aload 8
    //   2095: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   2098: iconst_1
    //   2099: ireturn
    //   2100: iconst_0
    //   2101: istore_2
    //   2102: goto -141 -> 1961
    //   2105: aconst_null
    //   2106: astore 10
    //   2108: goto -74 -> 2034
    //   2111: astore 8
    //   2113: aload 8
    //   2115: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   2118: goto -39 -> 2079
    //   2121: astore 9
    //   2123: aload 9
    //   2125: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   2128: goto -290 -> 1838
    //   2131: astore 9
    //   2133: aload 9
    //   2135: invokevirtual 317	java/lang/Exception:printStackTrace	()V
    //   2138: goto -290 -> 1848
    //   2141: aload 9
    //   2143: athrow
    //   2144: astore 8
    //   2146: aconst_null
    //   2147: astore 9
    //   2149: goto -321 -> 1828
    //   2152: astore 10
    //   2154: aconst_null
    //   2155: astore 9
    //   2157: goto -383 -> 1774
    //   2160: astore 8
    //   2162: aconst_null
    //   2163: astore 9
    //   2165: goto -1660 -> 505
    //   2168: astore 10
    //   2170: aconst_null
    //   2171: astore 9
    //   2173: goto -1722 -> 451
    //   2176: iconst_0
    //   2177: istore_2
    //   2178: goto -977 -> 1201
    //   2181: aconst_null
    //   2182: astore 8
    //   2184: goto -942 -> 1242
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2187	0	this	a
    //   241	1630	1	i1	int
    //   348	1830	2	bool1	boolean
    //   336	24	3	bool2	boolean
    //   205	1563	4	l1	long
    //   387	1482	6	l2	long
    //   120	206	8	localObject1	Object
    //   363	3	8	localException1	Exception
    //   373	3	8	localException2	Exception
    //   395	438	8	localObject2	Object
    //   889	3	8	localException3	Exception
    //   909	3	8	localException4	Exception
    //   964	3	8	localException5	Exception
    //   976	279	8	localObject3	Object
    //   1332	3	8	localException6	Exception
    //   1394	9	8	localRandomAccessFile1	RandomAccessFile
    //   1410	3	8	localException7	Exception
    //   1453	130	8	localObject4	Object
    //   1616	3	8	localException8	Exception
    //   1625	3	8	localException9	Exception
    //   1648	393	8	localObject5	Object
    //   2091	3	8	localException10	Exception
    //   2111	3	8	localException11	Exception
    //   2144	1	8	localObject6	Object
    //   2160	1	8	localObject7	Object
    //   2182	1	8	localObject8	Object
    //   116	713	9	localObject9	Object
    //   919	3	9	localException12	Exception
    //   929	3	9	localException13	Exception
    //   969	3	9	localException14	Exception
    //   1216	29	9	str1	String
    //   1337	71	9	localException15	Exception
    //   1449	588	9	localObject10	Object
    //   2121	3	9	localException16	Exception
    //   2131	11	9	localException17	Exception
    //   2147	25	9	localObject11	Object
    //   188	247	10	localRandomAccessFile2	RandomAccessFile
    //   449	44	10	localException18	Exception
    //   495	166	10	localObject12	Object
    //   788	942	10	localObject13	Object
    //   1772	44	10	localException19	Exception
    //   1818	87	10	localRandomAccessFile3	RandomAccessFile
    //   2032	75	10	str2	String
    //   2152	1	10	localException20	Exception
    //   2168	1	10	localException21	Exception
    //   220	1815	11	localObject14	Object
    //   666	1373	12	localObject15	Object
    //   54	1974	13	localFile	File
    //   3	2049	14	localObject16	Object
    //   68	2017	15	localRandomAccessFile4	RandomAccessFile
    //   769	1274	16	localObject17	Object
    //   748	1297	17	str3	String
    //   728	71	18	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   342	347	363	java/lang/Exception
    //   354	359	373	java/lang/Exception
    //   198	204	449	java/lang/Exception
    //   215	222	449	java/lang/Exception
    //   230	242	449	java/lang/Exception
    //   255	265	449	java/lang/Exception
    //   278	286	449	java/lang/Exception
    //   294	301	449	java/lang/Exception
    //   309	319	449	java/lang/Exception
    //   327	335	449	java/lang/Exception
    //   397	411	449	java/lang/Exception
    //   419	430	449	java/lang/Exception
    //   438	449	449	java/lang/Exception
    //   536	546	449	java/lang/Exception
    //   554	567	449	java/lang/Exception
    //   584	613	449	java/lang/Exception
    //   628	649	449	java/lang/Exception
    //   660	665	449	java/lang/Exception
    //   679	685	449	java/lang/Exception
    //   693	700	449	java/lang/Exception
    //   708	715	449	java/lang/Exception
    //   725	730	449	java/lang/Exception
    //   738	750	449	java/lang/Exception
    //   758	771	449	java/lang/Exception
    //   783	790	449	java/lang/Exception
    //   798	821	449	java/lang/Exception
    //   834	863	449	java/lang/Exception
    //   198	204	495	finally
    //   215	222	495	finally
    //   230	242	495	finally
    //   255	265	495	finally
    //   278	286	495	finally
    //   294	301	495	finally
    //   309	319	495	finally
    //   327	335	495	finally
    //   397	411	495	finally
    //   419	430	495	finally
    //   438	449	495	finally
    //   455	462	495	finally
    //   466	476	495	finally
    //   480	488	495	finally
    //   492	495	495	finally
    //   536	546	495	finally
    //   554	567	495	finally
    //   584	613	495	finally
    //   628	649	495	finally
    //   660	665	495	finally
    //   679	685	495	finally
    //   693	700	495	finally
    //   708	715	495	finally
    //   725	730	495	finally
    //   738	750	495	finally
    //   758	771	495	finally
    //   783	790	495	finally
    //   798	821	495	finally
    //   834	863	495	finally
    //   882	887	889	java/lang/Exception
    //   869	877	909	java/lang/Exception
    //   510	515	919	java/lang/Exception
    //   520	525	929	java/lang/Exception
    //   939	950	964	java/lang/Exception
    //   950	962	969	java/lang/Exception
    //   966	969	969	java/lang/Exception
    //   1334	1337	969	java/lang/Exception
    //   1339	1382	969	java/lang/Exception
    //   1382	1410	969	java/lang/Exception
    //   1110	1126	1332	java/lang/Exception
    //   1126	1199	1337	java/lang/Exception
    //   1201	1231	1337	java/lang/Exception
    //   1235	1242	1337	java/lang/Exception
    //   1242	1265	1337	java/lang/Exception
    //   1270	1330	1337	java/lang/Exception
    //   1016	1060	1410	java/lang/Exception
    //   1065	1108	1410	java/lang/Exception
    //   1609	1614	1616	java/lang/Exception
    //   1599	1604	1625	java/lang/Exception
    //   1455	1461	1772	java/lang/Exception
    //   1472	1479	1772	java/lang/Exception
    //   1487	1499	1772	java/lang/Exception
    //   1512	1522	1772	java/lang/Exception
    //   1535	1543	1772	java/lang/Exception
    //   1551	1558	1772	java/lang/Exception
    //   1566	1576	1772	java/lang/Exception
    //   1584	1592	1772	java/lang/Exception
    //   1650	1660	1772	java/lang/Exception
    //   1668	1679	1772	java/lang/Exception
    //   1696	1725	1772	java/lang/Exception
    //   1733	1765	1772	java/lang/Exception
    //   1859	1878	1772	java/lang/Exception
    //   1889	1896	1772	java/lang/Exception
    //   1904	1909	1772	java/lang/Exception
    //   1923	1929	1772	java/lang/Exception
    //   1937	1944	1772	java/lang/Exception
    //   1952	1959	1772	java/lang/Exception
    //   1969	1974	1772	java/lang/Exception
    //   1982	1994	1772	java/lang/Exception
    //   2002	2015	1772	java/lang/Exception
    //   2027	2034	1772	java/lang/Exception
    //   2042	2065	1772	java/lang/Exception
    //   1455	1461	1818	finally
    //   1472	1479	1818	finally
    //   1487	1499	1818	finally
    //   1512	1522	1818	finally
    //   1535	1543	1818	finally
    //   1551	1558	1818	finally
    //   1566	1576	1818	finally
    //   1584	1592	1818	finally
    //   1650	1660	1818	finally
    //   1668	1679	1818	finally
    //   1696	1725	1818	finally
    //   1733	1765	1818	finally
    //   1778	1785	1818	finally
    //   1789	1799	1818	finally
    //   1803	1811	1818	finally
    //   1815	1818	1818	finally
    //   1859	1878	1818	finally
    //   1889	1896	1818	finally
    //   1904	1909	1818	finally
    //   1923	1929	1818	finally
    //   1937	1944	1818	finally
    //   1952	1959	1818	finally
    //   1969	1974	1818	finally
    //   1982	1994	1818	finally
    //   2002	2015	1818	finally
    //   2027	2034	1818	finally
    //   2042	2065	1818	finally
    //   2084	2089	2091	java/lang/Exception
    //   2071	2079	2111	java/lang/Exception
    //   1833	1838	2121	java/lang/Exception
    //   1843	1848	2131	java/lang/Exception
    //   1431	1447	2144	finally
    //   1431	1447	2152	java/lang/Exception
    //   174	190	2160	finally
    //   174	190	2168	java/lang/Exception
  }
  
  public String b()
  {
    if (r == null) {
      return null;
    }
    return r.getAbsolutePath();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */