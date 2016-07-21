package com.estrongs.fs.util;

import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class c
  extends f
{
  private int a;
  private int h;
  private byte[] i;
  private byte[] j;
  private byte[] k;
  private byte[] l;
  private boolean m;
  private Cipher n = null;
  private String o;
  private File p = null;
  private File q;
  private String r;
  
  public c(h paramh, String paramString, boolean paramBoolean)
  {
    this(paramh, paramString, paramBoolean, null);
  }
  
  public c(h paramh, String paramString1, boolean paramBoolean, String paramString2)
  {
    this(paramh, paramString1, paramBoolean, paramString2, null);
  }
  
  public c(h paramh, String paramString1, boolean paramBoolean, String paramString2, String paramString3)
  {
    c = paramh;
    b = paramString1.getBytes();
    m = paramBoolean;
    o = paramString2;
    r = paramString3;
  }
  
  protected static int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    int i2;
    if (paramArrayOfByte2 == null)
    {
      if (paramInt + 1 > paramArrayOfByte1.length) {
        throw new EncryptException("String to long");
      }
      paramArrayOfByte1[paramInt] = -1;
      i2 = paramInt + 1;
      return i2;
    }
    if (paramArrayOfByte2.length + paramInt + 1 > paramArrayOfByte1.length) {
      throw new EncryptException("String to long");
    }
    paramArrayOfByte1[paramInt] = ((byte)paramArrayOfByte2.length);
    paramInt += 1;
    int i1 = 0;
    for (;;)
    {
      i2 = paramInt;
      if (i1 >= paramArrayOfByte2.length) {
        break;
      }
      paramArrayOfByte1[paramInt] = paramArrayOfByte2[i1];
      paramInt += 1;
      i1 += 1;
    }
  }
  
  private File a(String paramString)
  {
    String str;
    if (o != null) {
      str = o;
    }
    for (;;)
    {
      return new File(j.m(ap.bB(paramString) + "/" + str));
      if (m) {
        str = d.a(new Date()) + ".eslock";
      } else {
        str = ap.d(paramString) + ".eslock";
      }
    }
  }
  
  private void a(RandomAccessFile paramRandomAccessFile)
  {
    paramRandomAccessFile.setLength(d);
    paramRandomAccessFile.seek(0L);
    paramRandomAccessFile.write(i, 0, a);
    paramRandomAccessFile.seek(d - g);
    paramRandomAccessFile.write(j, 0, h);
    if (q.exists()) {
      q.delete();
    }
  }
  
  private void a(RandomAccessFile paramRandomAccessFile, String paramString)
  {
    int i1 = b(paramString);
    paramRandomAccessFile.setLength(d + i1);
    paramRandomAccessFile.seek(0L);
    l = b(i, b);
    if (l.length != i.length) {
      throw new EncryptException("Encrypt error!");
    }
    c();
    paramRandomAccessFile.write(l, 0, a);
    paramRandomAccessFile.seek(d - g);
    l = b(j, b);
    if (l.length != j.length) {
      throw new EncryptException("Encrypt error!");
    }
    paramRandomAccessFile.write(l, 0, h);
    if (paramRandomAccessFile.getFilePointer() != d) {
      throw new EncryptException("Invalid RandomAccessFile operation");
    }
    paramRandomAccessFile.write(k, 0, i1);
    paramRandomAccessFile.close();
    if (q.exists()) {
      q.delete();
    }
  }
  
  private int b(String paramString)
  {
    if (m) {}
    for (paramString = b(paramString.getBytes(), b);; paramString = null)
    {
      int i3;
      if (paramString == null)
      {
        i3 = 0;
        if (e) {
          break label257;
        }
      }
      label58:
      label252:
      label257:
      for (byte[] arrayOfByte1 = ByteBuffer.allocate(4).putInt(g).array();; arrayOfByte1 = null)
      {
        int i4;
        int i5;
        if (arrayOfByte1 == null)
        {
          i4 = 0;
          byte[] arrayOfByte2 = b(b);
          i3 = i3 + 1 + (i4 + 1) + (arrayOfByte2.length + 1) + 1 + 8 + 4;
          k = new byte[i3];
          i4 = a(k, arrayOfByte1, 0);
          i4 = a(k, paramString, i4);
          i5 = a(k, arrayOfByte2, i4);
          if (!f) {
            break label252;
          }
        }
        for (int i1 = (byte)1;; i1 = 0)
        {
          int i2 = i1;
          if (e) {
            i2 = (byte)(i1 | 0x2);
          }
          paramString = k;
          i4 = i5 + 1;
          paramString[i5] = i2;
          paramString = b(k, 0, i4);
          System.arraycopy(paramString, 0, k, i4, paramString.length);
          i5 = paramString.length;
          paramString = ByteBuffer.allocate(4).putInt(i3).array();
          System.arraycopy(paramString, 0, k, i5 + i4, paramString.length);
          return i3;
          i3 = paramString.length;
          break;
          i4 = arrayOfByte1.length;
          break label58;
        }
      }
    }
  }
  
  private void b(RandomAccessFile paramRandomAccessFile)
  {
    i = new byte[g];
    j = new byte[g];
    d = paramRandomAccessFile.length();
    paramRandomAccessFile.seek(0L);
    a = a(paramRandomAccessFile, i, g);
    paramRandomAccessFile.seek(d - g);
    h = a(paramRandomAccessFile, j, g);
    if (paramRandomAccessFile.getFilePointer() != d) {
      throw new IOException("RandomAccessFile error!");
    }
  }
  
  private byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      if (f) {
        return a(paramArrayOfByte1, paramArrayOfByte2);
      }
      paramArrayOfByte1 = n.doFinal(paramArrayOfByte1);
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
    //   0: new 223	java/io/BufferedOutputStream
    //   3: dup
    //   4: new 225	java/io/FileOutputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 135	com/estrongs/fs/util/c:q	Ljava/io/File;
    //   12: invokespecial 228	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   15: invokespecial 231	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_2
    //   19: aload_2
    //   20: astore_1
    //   21: aload_2
    //   22: aload_0
    //   23: getfield 120	com/estrongs/fs/util/c:i	[B
    //   26: iconst_0
    //   27: aload_0
    //   28: getfield 122	com/estrongs/fs/util/c:a	I
    //   31: invokevirtual 234	java/io/OutputStream:write	([BII)V
    //   34: aload_2
    //   35: astore_1
    //   36: aload_2
    //   37: aload_0
    //   38: getfield 131	com/estrongs/fs/util/c:j	[B
    //   41: iconst_0
    //   42: aload_0
    //   43: getfield 133	com/estrongs/fs/util/c:h	I
    //   46: invokevirtual 234	java/io/OutputStream:write	([BII)V
    //   49: aload_2
    //   50: ifnull +7 -> 57
    //   53: aload_2
    //   54: invokevirtual 235	java/io/OutputStream:close	()V
    //   57: return
    //   58: astore_3
    //   59: aconst_null
    //   60: astore_1
    //   61: new 60	com/estrongs/fs/util/EncryptException
    //   64: dup
    //   65: aload_3
    //   66: invokespecial 221	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/Throwable;)V
    //   69: athrow
    //   70: astore_3
    //   71: aload_1
    //   72: astore_2
    //   73: aload_3
    //   74: astore_1
    //   75: aload_2
    //   76: ifnull +7 -> 83
    //   79: aload_2
    //   80: invokevirtual 235	java/io/OutputStream:close	()V
    //   83: aload_1
    //   84: athrow
    //   85: astore_1
    //   86: return
    //   87: astore_2
    //   88: goto -5 -> 83
    //   91: astore_1
    //   92: aconst_null
    //   93: astore_2
    //   94: goto -19 -> 75
    //   97: astore_3
    //   98: aload_2
    //   99: astore_1
    //   100: goto -39 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	this	c
    //   20	64	1	localObject1	Object
    //   85	1	1	localIOException1	IOException
    //   91	1	1	localObject2	Object
    //   99	1	1	localObject3	Object
    //   18	62	2	localObject4	Object
    //   87	1	2	localIOException2	IOException
    //   93	6	2	localObject5	Object
    //   58	8	3	localException1	Exception
    //   70	4	3	localObject6	Object
    //   97	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	19	58	java/lang/Exception
    //   21	34	70	finally
    //   36	49	70	finally
    //   61	70	70	finally
    //   53	57	85	java/io/IOException
    //   79	83	87	java/io/IOException
    //   0	19	91	finally
    //   21	34	97	java/lang/Exception
    //   36	49	97	java/lang/Exception
  }
  
  private void c(byte[] paramArrayOfByte)
  {
    try
    {
      n = Cipher.getInstance("2.16.840.1.101.3.4.1.4/CFB/NoPadding");
      Object localObject = a(paramArrayOfByte);
      paramArrayOfByte = new IvParameterSpec(new byte[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 });
      localObject = new SecretKeySpec((byte[])localObject, "AES");
      n.init(1, (Key)localObject, paramArrayOfByte);
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException1)
    {
      for (;;)
      {
        try
        {
          n = Cipher.getInstance("AES/CFB/NoPadding");
        }
        catch (NoSuchAlgorithmException localNoSuchAlgorithmException2)
        {
          f = true;
        }
      }
    }
  }
  
  /* Error */
  public boolean a()
  {
    // Byte code:
    //   0: invokestatic 285	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   3: astore 14
    //   5: aload 14
    //   7: ifnull +31 -> 38
    //   10: aload 14
    //   12: bipush 9
    //   14: iconst_2
    //   15: anewarray 287	java/lang/Object
    //   18: dup
    //   19: iconst_0
    //   20: aload_0
    //   21: getfield 109	com/estrongs/fs/util/c:d	J
    //   24: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   27: aastore
    //   28: dup
    //   29: iconst_1
    //   30: lconst_0
    //   31: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   34: aastore
    //   35: invokevirtual 297	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   38: new 68	java/io/File
    //   41: dup
    //   42: aload_0
    //   43: getfield 42	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   46: invokeinterface 302 1 0
    //   51: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;)V
    //   54: astore 13
    //   56: aload_0
    //   57: getfield 42	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   60: invokestatic 307	com/estrongs/android/util/bg:a	(Lcom/estrongs/fs/h;)I
    //   63: invokestatic 310	com/estrongs/android/util/bg:f	(I)Z
    //   66: istore 7
    //   68: iload 7
    //   70: ifne +15 -> 85
    //   73: aload 13
    //   75: invokevirtual 311	java/io/File:length	()J
    //   78: ldc2_w 312
    //   81: lcmp
    //   82: ifle +35 -> 117
    //   85: iload 7
    //   87: ifeq +15 -> 102
    //   90: aload 13
    //   92: invokevirtual 311	java/io/File:length	()J
    //   95: ldc2_w 314
    //   98: lcmp
    //   99: ifle +18 -> 117
    //   102: aload_0
    //   103: getfield 42	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   106: invokeinterface 302 1 0
    //   111: invokestatic 318	com/estrongs/android/util/bg:i	(Ljava/lang/String;)Z
    //   114: ifeq +251 -> 365
    //   117: iconst_1
    //   118: istore 6
    //   120: aload_0
    //   121: iload 6
    //   123: putfield 169	com/estrongs/fs/util/c:e	Z
    //   126: aload_0
    //   127: aload_0
    //   128: getfield 51	com/estrongs/fs/util/c:b	[B
    //   131: invokespecial 320	com/estrongs/fs/util/c:c	([B)V
    //   134: aload_0
    //   135: getfield 169	com/estrongs/fs/util/c:e	Z
    //   138: ifeq +791 -> 929
    //   141: new 111	java/io/RandomAccessFile
    //   144: dup
    //   145: aload 13
    //   147: ldc_w 321
    //   150: invokespecial 324	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   153: astore 10
    //   155: aload_0
    //   156: aload_0
    //   157: aload_0
    //   158: getfield 42	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   161: invokeinterface 302 1 0
    //   166: invokespecial 326	com/estrongs/fs/util/c:a	(Ljava/lang/String;)Ljava/io/File;
    //   169: putfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   172: new 111	java/io/RandomAccessFile
    //   175: dup
    //   176: aload_0
    //   177: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   180: ldc_w 328
    //   183: invokespecial 324	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   186: astore 11
    //   188: aload 11
    //   190: astore 8
    //   192: aload 11
    //   194: astore 9
    //   196: aload 10
    //   198: lconst_0
    //   199: invokevirtual 118	java/io/RandomAccessFile:seek	(J)V
    //   202: lconst_0
    //   203: lstore_2
    //   204: aload 11
    //   206: astore 8
    //   208: aload 11
    //   210: astore 9
    //   212: sipush 16384
    //   215: newarray <illegal type>
    //   217: astore 12
    //   219: aload 11
    //   221: astore 8
    //   223: aload 11
    //   225: astore 9
    //   227: aload_0
    //   228: aload 10
    //   230: invokevirtual 201	java/io/RandomAccessFile:length	()J
    //   233: putfield 109	com/estrongs/fs/util/c:d	J
    //   236: aload 11
    //   238: astore 8
    //   240: aload 11
    //   242: astore 9
    //   244: aload 10
    //   246: aload 12
    //   248: iconst_0
    //   249: aload 12
    //   251: arraylength
    //   252: invokevirtual 332	java/io/RandomAccessFile:read	([BII)I
    //   255: istore_1
    //   256: iload_1
    //   257: iconst_m1
    //   258: if_icmpeq +394 -> 652
    //   261: aload 14
    //   263: ifnull +127 -> 390
    //   266: aload 11
    //   268: astore 8
    //   270: aload 11
    //   272: astore 9
    //   274: aload 14
    //   276: invokevirtual 335	com/estrongs/a/a:taskStopped	()Z
    //   279: ifeq +111 -> 390
    //   282: aload 11
    //   284: astore 8
    //   286: aload 11
    //   288: astore 9
    //   290: aload_0
    //   291: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   294: ifnull +37 -> 331
    //   297: aload 11
    //   299: astore 8
    //   301: aload 11
    //   303: astore 9
    //   305: aload_0
    //   306: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   309: invokevirtual 139	java/io/File:exists	()Z
    //   312: ifeq +19 -> 331
    //   315: aload 11
    //   317: astore 8
    //   319: aload 11
    //   321: astore 9
    //   323: aload_0
    //   324: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   327: invokevirtual 142	java/io/File:delete	()Z
    //   330: pop
    //   331: iconst_0
    //   332: istore 7
    //   334: aload 11
    //   336: ifnull +8 -> 344
    //   339: aload 11
    //   341: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   344: iload 7
    //   346: istore 6
    //   348: aload 10
    //   350: ifnull +12 -> 362
    //   353: aload 10
    //   355: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   358: iload 7
    //   360: istore 6
    //   362: iload 6
    //   364: ireturn
    //   365: iconst_0
    //   366: istore 6
    //   368: goto -248 -> 120
    //   371: astore 8
    //   373: aload 8
    //   375: invokevirtual 338	java/lang/Exception:printStackTrace	()V
    //   378: goto -34 -> 344
    //   381: astore 8
    //   383: aload 8
    //   385: invokevirtual 338	java/lang/Exception:printStackTrace	()V
    //   388: iconst_0
    //   389: ireturn
    //   390: lload_2
    //   391: iload_1
    //   392: i2l
    //   393: ladd
    //   394: lstore 4
    //   396: aload 11
    //   398: astore 8
    //   400: aload 11
    //   402: astore 9
    //   404: aload_0
    //   405: aload_0
    //   406: aload 12
    //   408: aload_0
    //   409: getfield 51	com/estrongs/fs/util/c:b	[B
    //   412: invokespecial 149	com/estrongs/fs/util/c:b	([B[B)[B
    //   415: putfield 151	com/estrongs/fs/util/c:l	[B
    //   418: aload 11
    //   420: astore 8
    //   422: aload 11
    //   424: astore 9
    //   426: aload_0
    //   427: getfield 151	com/estrongs/fs/util/c:l	[B
    //   430: arraylength
    //   431: aload 12
    //   433: arraylength
    //   434: if_icmpeq +96 -> 530
    //   437: aload 11
    //   439: astore 8
    //   441: aload 11
    //   443: astore 9
    //   445: new 60	com/estrongs/fs/util/EncryptException
    //   448: dup
    //   449: ldc -103
    //   451: invokespecial 65	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/String;)V
    //   454: athrow
    //   455: astore 11
    //   457: aload 10
    //   459: astore 9
    //   461: aload 11
    //   463: astore 10
    //   465: aload_0
    //   466: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   469: ifnull +21 -> 490
    //   472: aload_0
    //   473: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   476: invokevirtual 139	java/io/File:exists	()Z
    //   479: ifeq +11 -> 490
    //   482: aload_0
    //   483: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   486: invokevirtual 142	java/io/File:delete	()Z
    //   489: pop
    //   490: aload 10
    //   492: athrow
    //   493: astore 11
    //   495: aload 9
    //   497: astore 10
    //   499: aload 8
    //   501: astore 9
    //   503: aload 11
    //   505: astore 8
    //   507: aload 9
    //   509: ifnull +8 -> 517
    //   512: aload 9
    //   514: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   517: aload 10
    //   519: ifnull +8 -> 527
    //   522: aload 10
    //   524: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   527: aload 8
    //   529: athrow
    //   530: aload 11
    //   532: astore 8
    //   534: aload 11
    //   536: astore 9
    //   538: lload 4
    //   540: aload_0
    //   541: getfield 109	com/estrongs/fs/util/c:d	J
    //   544: lcmp
    //   545: ifge +75 -> 620
    //   548: aload 11
    //   550: astore 8
    //   552: aload 11
    //   554: astore 9
    //   556: aload 11
    //   558: aload_0
    //   559: getfield 151	com/estrongs/fs/util/c:l	[B
    //   562: iconst_0
    //   563: aload 12
    //   565: arraylength
    //   566: invokevirtual 126	java/io/RandomAccessFile:write	([BII)V
    //   569: lload 4
    //   571: lstore_2
    //   572: aload 14
    //   574: ifnull -338 -> 236
    //   577: aload 11
    //   579: astore 8
    //   581: aload 11
    //   583: astore 9
    //   585: aload 14
    //   587: bipush 9
    //   589: iconst_2
    //   590: anewarray 287	java/lang/Object
    //   593: dup
    //   594: iconst_0
    //   595: aload_0
    //   596: getfield 109	com/estrongs/fs/util/c:d	J
    //   599: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   602: aastore
    //   603: dup
    //   604: iconst_1
    //   605: lload 4
    //   607: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   610: aastore
    //   611: invokevirtual 297	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   614: lload 4
    //   616: lstore_2
    //   617: goto -381 -> 236
    //   620: aload 11
    //   622: astore 8
    //   624: aload 11
    //   626: astore 9
    //   628: aload 11
    //   630: aload_0
    //   631: getfield 151	com/estrongs/fs/util/c:l	[B
    //   634: iconst_0
    //   635: aload_0
    //   636: getfield 109	com/estrongs/fs/util/c:d	J
    //   639: lload 4
    //   641: iload_1
    //   642: i2l
    //   643: lsub
    //   644: lsub
    //   645: l2i
    //   646: invokevirtual 126	java/io/RandomAccessFile:write	([BII)V
    //   649: goto -80 -> 569
    //   652: aload 11
    //   654: astore 8
    //   656: aload 11
    //   658: astore 9
    //   660: lload_2
    //   661: aload_0
    //   662: getfield 109	com/estrongs/fs/util/c:d	J
    //   665: lcmp
    //   666: ifge +21 -> 687
    //   669: aload 11
    //   671: astore 8
    //   673: aload 11
    //   675: astore 9
    //   677: new 206	java/io/IOException
    //   680: dup
    //   681: ldc -95
    //   683: invokespecial 209	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   686: athrow
    //   687: aload 11
    //   689: astore 8
    //   691: aload 11
    //   693: astore 9
    //   695: aload 10
    //   697: invokevirtual 159	java/io/RandomAccessFile:getFilePointer	()J
    //   700: aload_0
    //   701: getfield 109	com/estrongs/fs/util/c:d	J
    //   704: lcmp
    //   705: ifeq +21 -> 726
    //   708: aload 11
    //   710: astore 8
    //   712: aload 11
    //   714: astore 9
    //   716: new 60	com/estrongs/fs/util/EncryptException
    //   719: dup
    //   720: ldc -95
    //   722: invokespecial 65	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/String;)V
    //   725: athrow
    //   726: aload 11
    //   728: astore 8
    //   730: aload 11
    //   732: astore 9
    //   734: aload_0
    //   735: aload 13
    //   737: invokevirtual 341	java/io/File:getName	()Ljava/lang/String;
    //   740: invokespecial 146	com/estrongs/fs/util/c:b	(Ljava/lang/String;)I
    //   743: istore_1
    //   744: aload 11
    //   746: astore 8
    //   748: aload 11
    //   750: astore 9
    //   752: aload 11
    //   754: aload_0
    //   755: getfield 163	com/estrongs/fs/util/c:k	[B
    //   758: iconst_0
    //   759: iload_1
    //   760: invokevirtual 126	java/io/RandomAccessFile:write	([BII)V
    //   763: aload 11
    //   765: astore 8
    //   767: aload 11
    //   769: astore 9
    //   771: aload 11
    //   773: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   776: aconst_null
    //   777: astore 11
    //   779: aconst_null
    //   780: astore 12
    //   782: aload 12
    //   784: astore 8
    //   786: aload 11
    //   788: astore 9
    //   790: aload 13
    //   792: invokevirtual 142	java/io/File:delete	()Z
    //   795: pop
    //   796: aload 12
    //   798: astore 8
    //   800: aload 11
    //   802: astore 9
    //   804: getstatic 346	com/estrongs/fs/util/a:a	Ljava/util/Map;
    //   807: aload 13
    //   809: invokevirtual 347	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   812: invokestatic 350	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   815: invokeinterface 356 2 0
    //   820: pop
    //   821: aload 14
    //   823: ifnull +40 -> 863
    //   826: aload 12
    //   828: astore 8
    //   830: aload 11
    //   832: astore 9
    //   834: aload 14
    //   836: iconst_2
    //   837: iconst_2
    //   838: anewarray 287	java/lang/Object
    //   841: dup
    //   842: iconst_0
    //   843: lconst_1
    //   844: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   847: aastore
    //   848: dup
    //   849: iconst_1
    //   850: aload_0
    //   851: getfield 42	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   854: invokeinterface 302 1 0
    //   859: aastore
    //   860: invokevirtual 297	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   863: iconst_1
    //   864: istore 6
    //   866: iconst_0
    //   867: ifeq +11 -> 878
    //   870: new 358	java/lang/NullPointerException
    //   873: dup
    //   874: invokespecial 359	java/lang/NullPointerException:<init>	()V
    //   877: athrow
    //   878: aload 10
    //   880: ifnull -518 -> 362
    //   883: aload 10
    //   885: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   888: iconst_1
    //   889: ireturn
    //   890: astore 8
    //   892: aload 8
    //   894: invokevirtual 338	java/lang/Exception:printStackTrace	()V
    //   897: iconst_1
    //   898: ireturn
    //   899: astore 8
    //   901: aload 8
    //   903: invokevirtual 338	java/lang/Exception:printStackTrace	()V
    //   906: goto -28 -> 878
    //   909: astore 9
    //   911: aload 9
    //   913: invokevirtual 338	java/lang/Exception:printStackTrace	()V
    //   916: goto -399 -> 517
    //   919: astore 9
    //   921: aload 9
    //   923: invokevirtual 338	java/lang/Exception:printStackTrace	()V
    //   926: goto -399 -> 527
    //   929: iload 7
    //   931: ifne +66 -> 997
    //   934: aload_0
    //   935: sipush 1024
    //   938: putfield 129	com/estrongs/fs/util/c:g	I
    //   941: new 111	java/io/RandomAccessFile
    //   944: dup
    //   945: aload 13
    //   947: ldc_w 321
    //   950: invokespecial 324	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   953: astore 8
    //   955: aload_0
    //   956: aload 8
    //   958: invokespecial 361	com/estrongs/fs/util/c:b	(Ljava/io/RandomAccessFile;)V
    //   961: aload 8
    //   963: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   966: aload_0
    //   967: aload_0
    //   968: aload_0
    //   969: getfield 42	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   972: invokeinterface 302 1 0
    //   977: invokespecial 326	com/estrongs/fs/util/c:a	(Ljava/lang/String;)Ljava/io/File;
    //   980: putfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   983: aload 13
    //   985: aload_0
    //   986: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   989: invokevirtual 365	java/io/File:renameTo	(Ljava/io/File;)Z
    //   992: ifne +20 -> 1012
    //   995: iconst_0
    //   996: ireturn
    //   997: aload_0
    //   998: ldc_w 366
    //   1001: putfield 129	com/estrongs/fs/util/c:g	I
    //   1004: goto -63 -> 941
    //   1007: astore 8
    //   1009: aload 8
    //   1011: athrow
    //   1012: new 111	java/io/RandomAccessFile
    //   1015: dup
    //   1016: aload_0
    //   1017: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   1020: ldc_w 328
    //   1023: invokespecial 324	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1026: astore 8
    //   1028: aload_0
    //   1029: new 68	java/io/File
    //   1032: dup
    //   1033: new 70	java/lang/StringBuilder
    //   1036: dup
    //   1037: invokespecial 71	java/lang/StringBuilder:<init>	()V
    //   1040: aload 13
    //   1042: invokevirtual 369	java/io/File:getParent	()Ljava/lang/String;
    //   1045: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1048: ldc_w 371
    //   1051: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1054: aload 13
    //   1056: invokevirtual 341	java/io/File:getName	()Ljava/lang/String;
    //   1059: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1062: ldc_w 373
    //   1065: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1068: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1071: invokestatic 91	com/estrongs/fs/util/j:m	(Ljava/lang/String;)Ljava/lang/String;
    //   1074: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;)V
    //   1077: putfield 135	com/estrongs/fs/util/c:q	Ljava/io/File;
    //   1080: aload_0
    //   1081: aload 8
    //   1083: aload 13
    //   1085: invokevirtual 341	java/io/File:getName	()Ljava/lang/String;
    //   1088: invokespecial 375	com/estrongs/fs/util/c:a	(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    //   1091: getstatic 346	com/estrongs/fs/util/a:a	Ljava/util/Map;
    //   1094: aload 13
    //   1096: invokevirtual 347	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1099: invokestatic 350	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   1102: invokeinterface 356 2 0
    //   1107: pop
    //   1108: aload 14
    //   1110: ifnull +63 -> 1173
    //   1113: aload 14
    //   1115: bipush 9
    //   1117: iconst_2
    //   1118: anewarray 287	java/lang/Object
    //   1121: dup
    //   1122: iconst_0
    //   1123: aload_0
    //   1124: getfield 109	com/estrongs/fs/util/c:d	J
    //   1127: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1130: aastore
    //   1131: dup
    //   1132: iconst_1
    //   1133: aload_0
    //   1134: getfield 109	com/estrongs/fs/util/c:d	J
    //   1137: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1140: aastore
    //   1141: invokevirtual 297	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1144: aload 14
    //   1146: iconst_2
    //   1147: iconst_2
    //   1148: anewarray 287	java/lang/Object
    //   1151: dup
    //   1152: iconst_0
    //   1153: lconst_1
    //   1154: invokestatic 293	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1157: aastore
    //   1158: dup
    //   1159: iconst_1
    //   1160: aload_0
    //   1161: getfield 42	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   1164: invokeinterface 302 1 0
    //   1169: aastore
    //   1170: invokevirtual 297	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1173: iconst_1
    //   1174: ireturn
    //   1175: astore 8
    //   1177: aload 8
    //   1179: athrow
    //   1180: astore 8
    //   1182: aload_0
    //   1183: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   1186: aload 13
    //   1188: invokevirtual 365	java/io/File:renameTo	(Ljava/io/File;)Z
    //   1191: ifne +34 -> 1225
    //   1194: new 60	com/estrongs/fs/util/EncryptException
    //   1197: dup
    //   1198: new 70	java/lang/StringBuilder
    //   1201: dup
    //   1202: ldc_w 377
    //   1205: invokespecial 378	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1208: aload_0
    //   1209: getfield 38	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   1212: invokevirtual 341	java/io/File:getName	()Ljava/lang/String;
    //   1215: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1218: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1221: invokespecial 65	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/String;)V
    //   1224: athrow
    //   1225: new 111	java/io/RandomAccessFile
    //   1228: dup
    //   1229: aload 13
    //   1231: ldc_w 328
    //   1234: invokespecial 324	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1237: astore 9
    //   1239: aload_0
    //   1240: aload 9
    //   1242: invokespecial 380	com/estrongs/fs/util/c:a	(Ljava/io/RandomAccessFile;)V
    //   1245: aload 9
    //   1247: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   1250: aload 8
    //   1252: athrow
    //   1253: astore 8
    //   1255: aconst_null
    //   1256: astore 10
    //   1258: aconst_null
    //   1259: astore 9
    //   1261: goto -754 -> 507
    //   1264: astore 8
    //   1266: aconst_null
    //   1267: astore 9
    //   1269: goto -762 -> 507
    //   1272: astore 10
    //   1274: aconst_null
    //   1275: astore 9
    //   1277: aconst_null
    //   1278: astore 8
    //   1280: goto -815 -> 465
    //   1283: astore 11
    //   1285: aconst_null
    //   1286: astore 8
    //   1288: aload 10
    //   1290: astore 9
    //   1292: aload 11
    //   1294: astore 10
    //   1296: goto -831 -> 465
    //   1299: astore 8
    //   1301: goto -794 -> 507
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1304	0	this	c
    //   255	505	1	i1	int
    //   203	458	2	l1	long
    //   394	246	4	l2	long
    //   118	747	6	bool1	boolean
    //   66	864	7	bool2	boolean
    //   190	128	8	localRandomAccessFile1	RandomAccessFile
    //   371	3	8	localException1	Exception
    //   381	3	8	localException2	Exception
    //   398	431	8	localObject1	Object
    //   890	3	8	localException3	Exception
    //   899	3	8	localException4	Exception
    //   953	9	8	localRandomAccessFile2	RandomAccessFile
    //   1007	3	8	localException5	Exception
    //   1026	56	8	localRandomAccessFile3	RandomAccessFile
    //   1175	3	8	localException6	Exception
    //   1180	71	8	localException7	Exception
    //   1253	1	8	localObject2	Object
    //   1264	1	8	localObject3	Object
    //   1278	9	8	localObject4	Object
    //   1299	1	8	localObject5	Object
    //   194	639	9	localObject6	Object
    //   909	3	9	localException8	Exception
    //   919	3	9	localException9	Exception
    //   1237	54	9	localObject7	Object
    //   153	1104	10	localObject8	Object
    //   1272	17	10	localException10	Exception
    //   1294	1	10	localObject9	Object
    //   186	256	11	localRandomAccessFile4	RandomAccessFile
    //   455	7	11	localException11	Exception
    //   493	279	11	localObject10	Object
    //   777	54	11	localObject11	Object
    //   1283	10	11	localException12	Exception
    //   217	610	12	arrayOfByte	byte[]
    //   54	1176	13	localFile	File
    //   3	1142	14	locala	com.estrongs.a.a
    // Exception table:
    //   from	to	target	type
    //   339	344	371	java/lang/Exception
    //   353	358	381	java/lang/Exception
    //   196	202	455	java/lang/Exception
    //   212	219	455	java/lang/Exception
    //   227	236	455	java/lang/Exception
    //   244	256	455	java/lang/Exception
    //   274	282	455	java/lang/Exception
    //   290	297	455	java/lang/Exception
    //   305	315	455	java/lang/Exception
    //   323	331	455	java/lang/Exception
    //   404	418	455	java/lang/Exception
    //   426	437	455	java/lang/Exception
    //   445	455	455	java/lang/Exception
    //   538	548	455	java/lang/Exception
    //   556	569	455	java/lang/Exception
    //   585	614	455	java/lang/Exception
    //   628	649	455	java/lang/Exception
    //   660	669	455	java/lang/Exception
    //   677	687	455	java/lang/Exception
    //   695	708	455	java/lang/Exception
    //   716	726	455	java/lang/Exception
    //   734	744	455	java/lang/Exception
    //   752	763	455	java/lang/Exception
    //   771	776	455	java/lang/Exception
    //   790	796	455	java/lang/Exception
    //   804	821	455	java/lang/Exception
    //   834	863	455	java/lang/Exception
    //   465	490	493	finally
    //   490	493	493	finally
    //   883	888	890	java/lang/Exception
    //   870	878	899	java/lang/Exception
    //   512	517	909	java/lang/Exception
    //   522	527	919	java/lang/Exception
    //   941	966	1007	java/lang/Exception
    //   1012	1028	1175	java/lang/Exception
    //   1028	1108	1180	java/lang/Exception
    //   1113	1173	1180	java/lang/Exception
    //   141	155	1253	finally
    //   155	188	1264	finally
    //   141	155	1272	java/lang/Exception
    //   155	188	1283	java/lang/Exception
    //   196	202	1299	finally
    //   212	219	1299	finally
    //   227	236	1299	finally
    //   244	256	1299	finally
    //   274	282	1299	finally
    //   290	297	1299	finally
    //   305	315	1299	finally
    //   323	331	1299	finally
    //   404	418	1299	finally
    //   426	437	1299	finally
    //   445	455	1299	finally
    //   538	548	1299	finally
    //   556	569	1299	finally
    //   585	614	1299	finally
    //   628	649	1299	finally
    //   660	669	1299	finally
    //   677	687	1299	finally
    //   695	708	1299	finally
    //   716	726	1299	finally
    //   734	744	1299	finally
    //   752	763	1299	finally
    //   771	776	1299	finally
    //   790	796	1299	finally
    //   804	821	1299	finally
    //   834	863	1299	finally
  }
  
  public String b()
  {
    if (p == null) {
      return null;
    }
    return p.getAbsolutePath();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */