package com.estrongs.fs.util;

import com.estrongs.android.util.am;
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
  
  public c(h paramh, String paramString, boolean paramBoolean)
  {
    this(paramh, paramString, paramBoolean, null);
  }
  
  public c(h paramh, String paramString1, boolean paramBoolean, String paramString2)
  {
    c = paramh;
    b = paramString1.getBytes();
    m = paramBoolean;
    o = paramString2;
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
      return new File(j.m(am.bk(paramString) + "/" + str));
      if (m) {
        str = d.a(new Date()) + ".eslock";
      } else {
        str = am.d(paramString) + ".eslock";
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
    //   0: new 217	java/io/BufferedOutputStream
    //   3: dup
    //   4: new 219	java/io/FileOutputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 129	com/estrongs/fs/util/c:q	Ljava/io/File;
    //   12: invokespecial 222	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   15: invokespecial 225	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_2
    //   19: aload_2
    //   20: astore_1
    //   21: aload_2
    //   22: aload_0
    //   23: getfield 114	com/estrongs/fs/util/c:i	[B
    //   26: iconst_0
    //   27: aload_0
    //   28: getfield 116	com/estrongs/fs/util/c:a	I
    //   31: invokevirtual 228	java/io/OutputStream:write	([BII)V
    //   34: aload_2
    //   35: astore_1
    //   36: aload_2
    //   37: aload_0
    //   38: getfield 125	com/estrongs/fs/util/c:j	[B
    //   41: iconst_0
    //   42: aload_0
    //   43: getfield 127	com/estrongs/fs/util/c:h	I
    //   46: invokevirtual 228	java/io/OutputStream:write	([BII)V
    //   49: aload_2
    //   50: ifnull +7 -> 57
    //   53: aload_2
    //   54: invokevirtual 229	java/io/OutputStream:close	()V
    //   57: return
    //   58: astore_3
    //   59: aconst_null
    //   60: astore_1
    //   61: new 54	com/estrongs/fs/util/EncryptException
    //   64: dup
    //   65: aload_3
    //   66: invokespecial 215	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/Throwable;)V
    //   69: athrow
    //   70: astore_3
    //   71: aload_1
    //   72: astore_2
    //   73: aload_3
    //   74: astore_1
    //   75: aload_2
    //   76: ifnull +7 -> 83
    //   79: aload_2
    //   80: invokevirtual 229	java/io/OutputStream:close	()V
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
    //   0: invokestatic 279	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   3: astore 14
    //   5: aload 14
    //   7: ifnull +31 -> 38
    //   10: aload 14
    //   12: bipush 9
    //   14: iconst_2
    //   15: anewarray 281	java/lang/Object
    //   18: dup
    //   19: iconst_0
    //   20: aload_0
    //   21: getfield 103	com/estrongs/fs/util/c:d	J
    //   24: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   27: aastore
    //   28: dup
    //   29: iconst_1
    //   30: lconst_0
    //   31: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   34: aastore
    //   35: invokevirtual 291	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   38: new 62	java/io/File
    //   41: dup
    //   42: aload_0
    //   43: getfield 38	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   46: invokeinterface 296 1 0
    //   51: invokespecial 86	java/io/File:<init>	(Ljava/lang/String;)V
    //   54: astore 13
    //   56: aload_0
    //   57: getfield 38	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   60: invokestatic 301	com/estrongs/android/util/bc:a	(Lcom/estrongs/fs/h;)I
    //   63: invokestatic 304	com/estrongs/android/util/bc:f	(I)Z
    //   66: istore_3
    //   67: iload_3
    //   68: ifne +15 -> 83
    //   71: aload 13
    //   73: invokevirtual 305	java/io/File:length	()J
    //   76: ldc2_w 306
    //   79: lcmp
    //   80: ifle +34 -> 114
    //   83: iload_3
    //   84: ifeq +15 -> 99
    //   87: aload 13
    //   89: invokevirtual 305	java/io/File:length	()J
    //   92: ldc2_w 308
    //   95: lcmp
    //   96: ifle +18 -> 114
    //   99: aload_0
    //   100: getfield 38	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   103: invokeinterface 296 1 0
    //   108: invokestatic 312	com/estrongs/android/util/bc:i	(Ljava/lang/String;)Z
    //   111: ifeq +244 -> 355
    //   114: iconst_1
    //   115: istore_2
    //   116: aload_0
    //   117: iload_2
    //   118: putfield 163	com/estrongs/fs/util/c:e	Z
    //   121: aload_0
    //   122: aload_0
    //   123: getfield 47	com/estrongs/fs/util/c:b	[B
    //   126: invokespecial 314	com/estrongs/fs/util/c:c	([B)V
    //   129: aload_0
    //   130: getfield 163	com/estrongs/fs/util/c:e	Z
    //   133: ifeq +788 -> 921
    //   136: new 105	java/io/RandomAccessFile
    //   139: dup
    //   140: aload 13
    //   142: ldc_w 316
    //   145: invokespecial 319	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   148: astore 10
    //   150: aload_0
    //   151: aload_0
    //   152: aload_0
    //   153: getfield 38	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   156: invokeinterface 296 1 0
    //   161: invokespecial 321	com/estrongs/fs/util/c:a	(Ljava/lang/String;)Ljava/io/File;
    //   164: putfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   167: new 105	java/io/RandomAccessFile
    //   170: dup
    //   171: aload_0
    //   172: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   175: ldc_w 323
    //   178: invokespecial 319	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   181: astore 11
    //   183: aload 11
    //   185: astore 8
    //   187: aload 11
    //   189: astore 9
    //   191: aload 10
    //   193: lconst_0
    //   194: invokevirtual 112	java/io/RandomAccessFile:seek	(J)V
    //   197: lconst_0
    //   198: lstore 4
    //   200: aload 11
    //   202: astore 8
    //   204: aload 11
    //   206: astore 9
    //   208: sipush 16384
    //   211: newarray <illegal type>
    //   213: astore 12
    //   215: aload 11
    //   217: astore 8
    //   219: aload 11
    //   221: astore 9
    //   223: aload_0
    //   224: aload 10
    //   226: invokevirtual 195	java/io/RandomAccessFile:length	()J
    //   229: putfield 103	com/estrongs/fs/util/c:d	J
    //   232: aload 11
    //   234: astore 8
    //   236: aload 11
    //   238: astore 9
    //   240: aload 10
    //   242: aload 12
    //   244: iconst_0
    //   245: aload 12
    //   247: arraylength
    //   248: invokevirtual 327	java/io/RandomAccessFile:read	([BII)I
    //   251: istore_1
    //   252: iload_1
    //   253: iconst_m1
    //   254: if_icmpeq +390 -> 644
    //   257: aload 14
    //   259: ifnull +120 -> 379
    //   262: aload 11
    //   264: astore 8
    //   266: aload 11
    //   268: astore 9
    //   270: aload 14
    //   272: invokevirtual 330	com/estrongs/a/a:taskStopped	()Z
    //   275: ifeq +104 -> 379
    //   278: aload 11
    //   280: astore 8
    //   282: aload 11
    //   284: astore 9
    //   286: aload_0
    //   287: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   290: ifnull +37 -> 327
    //   293: aload 11
    //   295: astore 8
    //   297: aload 11
    //   299: astore 9
    //   301: aload_0
    //   302: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   305: invokevirtual 133	java/io/File:exists	()Z
    //   308: ifeq +19 -> 327
    //   311: aload 11
    //   313: astore 8
    //   315: aload 11
    //   317: astore 9
    //   319: aload_0
    //   320: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   323: invokevirtual 136	java/io/File:delete	()Z
    //   326: pop
    //   327: iconst_0
    //   328: istore_3
    //   329: aload 11
    //   331: ifnull +8 -> 339
    //   334: aload 11
    //   336: invokevirtual 160	java/io/RandomAccessFile:close	()V
    //   339: iload_3
    //   340: istore_2
    //   341: aload 10
    //   343: ifnull +10 -> 353
    //   346: aload 10
    //   348: invokevirtual 160	java/io/RandomAccessFile:close	()V
    //   351: iload_3
    //   352: istore_2
    //   353: iload_2
    //   354: ireturn
    //   355: iconst_0
    //   356: istore_2
    //   357: goto -241 -> 116
    //   360: astore 8
    //   362: aload 8
    //   364: invokevirtual 333	java/lang/Exception:printStackTrace	()V
    //   367: goto -28 -> 339
    //   370: astore 8
    //   372: aload 8
    //   374: invokevirtual 333	java/lang/Exception:printStackTrace	()V
    //   377: iconst_0
    //   378: ireturn
    //   379: lload 4
    //   381: iload_1
    //   382: i2l
    //   383: ladd
    //   384: lstore 6
    //   386: aload 11
    //   388: astore 8
    //   390: aload 11
    //   392: astore 9
    //   394: aload_0
    //   395: aload_0
    //   396: aload 12
    //   398: aload_0
    //   399: getfield 47	com/estrongs/fs/util/c:b	[B
    //   402: invokespecial 143	com/estrongs/fs/util/c:b	([B[B)[B
    //   405: putfield 145	com/estrongs/fs/util/c:l	[B
    //   408: aload 11
    //   410: astore 8
    //   412: aload 11
    //   414: astore 9
    //   416: aload_0
    //   417: getfield 145	com/estrongs/fs/util/c:l	[B
    //   420: arraylength
    //   421: aload 12
    //   423: arraylength
    //   424: if_icmpeq +96 -> 520
    //   427: aload 11
    //   429: astore 8
    //   431: aload 11
    //   433: astore 9
    //   435: new 54	com/estrongs/fs/util/EncryptException
    //   438: dup
    //   439: ldc -109
    //   441: invokespecial 59	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/String;)V
    //   444: athrow
    //   445: astore 11
    //   447: aload 10
    //   449: astore 9
    //   451: aload 11
    //   453: astore 10
    //   455: aload_0
    //   456: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   459: ifnull +21 -> 480
    //   462: aload_0
    //   463: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   466: invokevirtual 133	java/io/File:exists	()Z
    //   469: ifeq +11 -> 480
    //   472: aload_0
    //   473: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   476: invokevirtual 136	java/io/File:delete	()Z
    //   479: pop
    //   480: aload 10
    //   482: athrow
    //   483: astore 11
    //   485: aload 9
    //   487: astore 10
    //   489: aload 8
    //   491: astore 9
    //   493: aload 11
    //   495: astore 8
    //   497: aload 9
    //   499: ifnull +8 -> 507
    //   502: aload 9
    //   504: invokevirtual 160	java/io/RandomAccessFile:close	()V
    //   507: aload 10
    //   509: ifnull +8 -> 517
    //   512: aload 10
    //   514: invokevirtual 160	java/io/RandomAccessFile:close	()V
    //   517: aload 8
    //   519: athrow
    //   520: aload 11
    //   522: astore 8
    //   524: aload 11
    //   526: astore 9
    //   528: lload 6
    //   530: aload_0
    //   531: getfield 103	com/estrongs/fs/util/c:d	J
    //   534: lcmp
    //   535: ifge +77 -> 612
    //   538: aload 11
    //   540: astore 8
    //   542: aload 11
    //   544: astore 9
    //   546: aload 11
    //   548: aload_0
    //   549: getfield 145	com/estrongs/fs/util/c:l	[B
    //   552: iconst_0
    //   553: aload 12
    //   555: arraylength
    //   556: invokevirtual 120	java/io/RandomAccessFile:write	([BII)V
    //   559: lload 6
    //   561: lstore 4
    //   563: aload 14
    //   565: ifnull -333 -> 232
    //   568: aload 11
    //   570: astore 8
    //   572: aload 11
    //   574: astore 9
    //   576: aload 14
    //   578: bipush 9
    //   580: iconst_2
    //   581: anewarray 281	java/lang/Object
    //   584: dup
    //   585: iconst_0
    //   586: aload_0
    //   587: getfield 103	com/estrongs/fs/util/c:d	J
    //   590: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   593: aastore
    //   594: dup
    //   595: iconst_1
    //   596: lload 6
    //   598: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   601: aastore
    //   602: invokevirtual 291	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   605: lload 6
    //   607: lstore 4
    //   609: goto -377 -> 232
    //   612: aload 11
    //   614: astore 8
    //   616: aload 11
    //   618: astore 9
    //   620: aload 11
    //   622: aload_0
    //   623: getfield 145	com/estrongs/fs/util/c:l	[B
    //   626: iconst_0
    //   627: aload_0
    //   628: getfield 103	com/estrongs/fs/util/c:d	J
    //   631: lload 6
    //   633: iload_1
    //   634: i2l
    //   635: lsub
    //   636: lsub
    //   637: l2i
    //   638: invokevirtual 120	java/io/RandomAccessFile:write	([BII)V
    //   641: goto -82 -> 559
    //   644: aload 11
    //   646: astore 8
    //   648: aload 11
    //   650: astore 9
    //   652: lload 4
    //   654: aload_0
    //   655: getfield 103	com/estrongs/fs/util/c:d	J
    //   658: lcmp
    //   659: ifge +21 -> 680
    //   662: aload 11
    //   664: astore 8
    //   666: aload 11
    //   668: astore 9
    //   670: new 200	java/io/IOException
    //   673: dup
    //   674: ldc -101
    //   676: invokespecial 203	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   679: athrow
    //   680: aload 11
    //   682: astore 8
    //   684: aload 11
    //   686: astore 9
    //   688: aload 10
    //   690: invokevirtual 153	java/io/RandomAccessFile:getFilePointer	()J
    //   693: aload_0
    //   694: getfield 103	com/estrongs/fs/util/c:d	J
    //   697: lcmp
    //   698: ifeq +21 -> 719
    //   701: aload 11
    //   703: astore 8
    //   705: aload 11
    //   707: astore 9
    //   709: new 54	com/estrongs/fs/util/EncryptException
    //   712: dup
    //   713: ldc -101
    //   715: invokespecial 59	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/String;)V
    //   718: athrow
    //   719: aload 11
    //   721: astore 8
    //   723: aload 11
    //   725: astore 9
    //   727: aload_0
    //   728: aload 13
    //   730: invokevirtual 336	java/io/File:getName	()Ljava/lang/String;
    //   733: invokespecial 140	com/estrongs/fs/util/c:b	(Ljava/lang/String;)I
    //   736: istore_1
    //   737: aload 11
    //   739: astore 8
    //   741: aload 11
    //   743: astore 9
    //   745: aload 11
    //   747: aload_0
    //   748: getfield 157	com/estrongs/fs/util/c:k	[B
    //   751: iconst_0
    //   752: iload_1
    //   753: invokevirtual 120	java/io/RandomAccessFile:write	([BII)V
    //   756: aload 11
    //   758: astore 8
    //   760: aload 11
    //   762: astore 9
    //   764: aload 11
    //   766: invokevirtual 160	java/io/RandomAccessFile:close	()V
    //   769: aconst_null
    //   770: astore 11
    //   772: aconst_null
    //   773: astore 12
    //   775: aload 12
    //   777: astore 8
    //   779: aload 11
    //   781: astore 9
    //   783: aload 13
    //   785: invokevirtual 136	java/io/File:delete	()Z
    //   788: pop
    //   789: aload 12
    //   791: astore 8
    //   793: aload 11
    //   795: astore 9
    //   797: getstatic 341	com/estrongs/fs/util/a:a	Ljava/util/Map;
    //   800: aload 13
    //   802: invokevirtual 342	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   805: invokestatic 345	com/estrongs/android/util/am:bE	(Ljava/lang/String;)Ljava/lang/String;
    //   808: invokeinterface 351 2 0
    //   813: pop
    //   814: aload 14
    //   816: ifnull +40 -> 856
    //   819: aload 12
    //   821: astore 8
    //   823: aload 11
    //   825: astore 9
    //   827: aload 14
    //   829: iconst_2
    //   830: iconst_2
    //   831: anewarray 281	java/lang/Object
    //   834: dup
    //   835: iconst_0
    //   836: lconst_1
    //   837: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   840: aastore
    //   841: dup
    //   842: iconst_1
    //   843: aload_0
    //   844: getfield 38	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   847: invokeinterface 296 1 0
    //   852: aastore
    //   853: invokevirtual 291	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   856: iconst_1
    //   857: istore_2
    //   858: iconst_0
    //   859: ifeq +11 -> 870
    //   862: new 353	java/lang/NullPointerException
    //   865: dup
    //   866: invokespecial 354	java/lang/NullPointerException:<init>	()V
    //   869: athrow
    //   870: aload 10
    //   872: ifnull -519 -> 353
    //   875: aload 10
    //   877: invokevirtual 160	java/io/RandomAccessFile:close	()V
    //   880: iconst_1
    //   881: ireturn
    //   882: astore 8
    //   884: aload 8
    //   886: invokevirtual 333	java/lang/Exception:printStackTrace	()V
    //   889: iconst_1
    //   890: ireturn
    //   891: astore 8
    //   893: aload 8
    //   895: invokevirtual 333	java/lang/Exception:printStackTrace	()V
    //   898: goto -28 -> 870
    //   901: astore 9
    //   903: aload 9
    //   905: invokevirtual 333	java/lang/Exception:printStackTrace	()V
    //   908: goto -401 -> 507
    //   911: astore 9
    //   913: aload 9
    //   915: invokevirtual 333	java/lang/Exception:printStackTrace	()V
    //   918: goto -401 -> 517
    //   921: iload_3
    //   922: ifne +66 -> 988
    //   925: aload_0
    //   926: sipush 1024
    //   929: putfield 123	com/estrongs/fs/util/c:g	I
    //   932: new 105	java/io/RandomAccessFile
    //   935: dup
    //   936: aload 13
    //   938: ldc_w 316
    //   941: invokespecial 319	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   944: astore 8
    //   946: aload_0
    //   947: aload 8
    //   949: invokespecial 356	com/estrongs/fs/util/c:b	(Ljava/io/RandomAccessFile;)V
    //   952: aload 8
    //   954: invokevirtual 160	java/io/RandomAccessFile:close	()V
    //   957: aload_0
    //   958: aload_0
    //   959: aload_0
    //   960: getfield 38	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   963: invokeinterface 296 1 0
    //   968: invokespecial 321	com/estrongs/fs/util/c:a	(Ljava/lang/String;)Ljava/io/File;
    //   971: putfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   974: aload 13
    //   976: aload_0
    //   977: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   980: invokevirtual 360	java/io/File:renameTo	(Ljava/io/File;)Z
    //   983: ifne +20 -> 1003
    //   986: iconst_0
    //   987: ireturn
    //   988: aload_0
    //   989: ldc_w 361
    //   992: putfield 123	com/estrongs/fs/util/c:g	I
    //   995: goto -63 -> 932
    //   998: astore 8
    //   1000: aload 8
    //   1002: athrow
    //   1003: new 105	java/io/RandomAccessFile
    //   1006: dup
    //   1007: aload_0
    //   1008: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   1011: ldc_w 323
    //   1014: invokespecial 319	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1017: astore 8
    //   1019: aload_0
    //   1020: new 62	java/io/File
    //   1023: dup
    //   1024: new 64	java/lang/StringBuilder
    //   1027: dup
    //   1028: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   1031: aload 13
    //   1033: invokevirtual 364	java/io/File:getParent	()Ljava/lang/String;
    //   1036: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1039: ldc_w 366
    //   1042: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1045: aload 13
    //   1047: invokevirtual 336	java/io/File:getName	()Ljava/lang/String;
    //   1050: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1053: ldc_w 368
    //   1056: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1059: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1062: invokestatic 85	com/estrongs/fs/util/j:m	(Ljava/lang/String;)Ljava/lang/String;
    //   1065: invokespecial 86	java/io/File:<init>	(Ljava/lang/String;)V
    //   1068: putfield 129	com/estrongs/fs/util/c:q	Ljava/io/File;
    //   1071: aload_0
    //   1072: aload 8
    //   1074: aload 13
    //   1076: invokevirtual 336	java/io/File:getName	()Ljava/lang/String;
    //   1079: invokespecial 370	com/estrongs/fs/util/c:a	(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    //   1082: getstatic 341	com/estrongs/fs/util/a:a	Ljava/util/Map;
    //   1085: aload 13
    //   1087: invokevirtual 342	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1090: invokestatic 345	com/estrongs/android/util/am:bE	(Ljava/lang/String;)Ljava/lang/String;
    //   1093: invokeinterface 351 2 0
    //   1098: pop
    //   1099: aload 14
    //   1101: ifnull +63 -> 1164
    //   1104: aload 14
    //   1106: bipush 9
    //   1108: iconst_2
    //   1109: anewarray 281	java/lang/Object
    //   1112: dup
    //   1113: iconst_0
    //   1114: aload_0
    //   1115: getfield 103	com/estrongs/fs/util/c:d	J
    //   1118: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1121: aastore
    //   1122: dup
    //   1123: iconst_1
    //   1124: aload_0
    //   1125: getfield 103	com/estrongs/fs/util/c:d	J
    //   1128: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1131: aastore
    //   1132: invokevirtual 291	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1135: aload 14
    //   1137: iconst_2
    //   1138: iconst_2
    //   1139: anewarray 281	java/lang/Object
    //   1142: dup
    //   1143: iconst_0
    //   1144: lconst_1
    //   1145: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1148: aastore
    //   1149: dup
    //   1150: iconst_1
    //   1151: aload_0
    //   1152: getfield 38	com/estrongs/fs/util/c:c	Lcom/estrongs/fs/h;
    //   1155: invokeinterface 296 1 0
    //   1160: aastore
    //   1161: invokevirtual 291	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1164: iconst_1
    //   1165: ireturn
    //   1166: astore 8
    //   1168: aload 8
    //   1170: athrow
    //   1171: astore 8
    //   1173: aload_0
    //   1174: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   1177: aload 13
    //   1179: invokevirtual 360	java/io/File:renameTo	(Ljava/io/File;)Z
    //   1182: ifne +34 -> 1216
    //   1185: new 54	com/estrongs/fs/util/EncryptException
    //   1188: dup
    //   1189: new 64	java/lang/StringBuilder
    //   1192: dup
    //   1193: ldc_w 372
    //   1196: invokespecial 373	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1199: aload_0
    //   1200: getfield 34	com/estrongs/fs/util/c:p	Ljava/io/File;
    //   1203: invokevirtual 336	java/io/File:getName	()Ljava/lang/String;
    //   1206: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1209: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1212: invokespecial 59	com/estrongs/fs/util/EncryptException:<init>	(Ljava/lang/String;)V
    //   1215: athrow
    //   1216: new 105	java/io/RandomAccessFile
    //   1219: dup
    //   1220: aload 13
    //   1222: ldc_w 323
    //   1225: invokespecial 319	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   1228: astore 9
    //   1230: aload_0
    //   1231: aload 9
    //   1233: invokespecial 375	com/estrongs/fs/util/c:a	(Ljava/io/RandomAccessFile;)V
    //   1236: aload 9
    //   1238: invokevirtual 160	java/io/RandomAccessFile:close	()V
    //   1241: aload 8
    //   1243: athrow
    //   1244: astore 8
    //   1246: aconst_null
    //   1247: astore 10
    //   1249: aconst_null
    //   1250: astore 9
    //   1252: goto -755 -> 497
    //   1255: astore 8
    //   1257: aconst_null
    //   1258: astore 9
    //   1260: goto -763 -> 497
    //   1263: astore 10
    //   1265: aconst_null
    //   1266: astore 9
    //   1268: aconst_null
    //   1269: astore 8
    //   1271: goto -816 -> 455
    //   1274: astore 11
    //   1276: aconst_null
    //   1277: astore 8
    //   1279: aload 10
    //   1281: astore 9
    //   1283: aload 11
    //   1285: astore 10
    //   1287: goto -832 -> 455
    //   1290: astore 8
    //   1292: goto -795 -> 497
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1295	0	this	c
    //   251	502	1	i1	int
    //   115	743	2	bool1	boolean
    //   66	856	3	bool2	boolean
    //   198	455	4	l1	long
    //   384	248	6	l2	long
    //   185	129	8	localRandomAccessFile1	RandomAccessFile
    //   360	3	8	localException1	Exception
    //   370	3	8	localException2	Exception
    //   388	434	8	localObject1	Object
    //   882	3	8	localException3	Exception
    //   891	3	8	localException4	Exception
    //   944	9	8	localRandomAccessFile2	RandomAccessFile
    //   998	3	8	localException5	Exception
    //   1017	56	8	localRandomAccessFile3	RandomAccessFile
    //   1166	3	8	localException6	Exception
    //   1171	71	8	localException7	Exception
    //   1244	1	8	localObject2	Object
    //   1255	1	8	localObject3	Object
    //   1269	9	8	localObject4	Object
    //   1290	1	8	localObject5	Object
    //   189	637	9	localObject6	Object
    //   901	3	9	localException8	Exception
    //   911	3	9	localException9	Exception
    //   1228	54	9	localObject7	Object
    //   148	1100	10	localObject8	Object
    //   1263	17	10	localException10	Exception
    //   1285	1	10	localObject9	Object
    //   181	251	11	localRandomAccessFile4	RandomAccessFile
    //   445	7	11	localException11	Exception
    //   483	282	11	localObject10	Object
    //   770	54	11	localObject11	Object
    //   1274	10	11	localException12	Exception
    //   213	607	12	arrayOfByte	byte[]
    //   54	1167	13	localFile	File
    //   3	1133	14	locala	com.estrongs.a.a
    // Exception table:
    //   from	to	target	type
    //   334	339	360	java/lang/Exception
    //   346	351	370	java/lang/Exception
    //   191	197	445	java/lang/Exception
    //   208	215	445	java/lang/Exception
    //   223	232	445	java/lang/Exception
    //   240	252	445	java/lang/Exception
    //   270	278	445	java/lang/Exception
    //   286	293	445	java/lang/Exception
    //   301	311	445	java/lang/Exception
    //   319	327	445	java/lang/Exception
    //   394	408	445	java/lang/Exception
    //   416	427	445	java/lang/Exception
    //   435	445	445	java/lang/Exception
    //   528	538	445	java/lang/Exception
    //   546	559	445	java/lang/Exception
    //   576	605	445	java/lang/Exception
    //   620	641	445	java/lang/Exception
    //   652	662	445	java/lang/Exception
    //   670	680	445	java/lang/Exception
    //   688	701	445	java/lang/Exception
    //   709	719	445	java/lang/Exception
    //   727	737	445	java/lang/Exception
    //   745	756	445	java/lang/Exception
    //   764	769	445	java/lang/Exception
    //   783	789	445	java/lang/Exception
    //   797	814	445	java/lang/Exception
    //   827	856	445	java/lang/Exception
    //   455	480	483	finally
    //   480	483	483	finally
    //   875	880	882	java/lang/Exception
    //   862	870	891	java/lang/Exception
    //   502	507	901	java/lang/Exception
    //   512	517	911	java/lang/Exception
    //   932	957	998	java/lang/Exception
    //   1003	1019	1166	java/lang/Exception
    //   1019	1099	1171	java/lang/Exception
    //   1104	1164	1171	java/lang/Exception
    //   136	150	1244	finally
    //   150	183	1255	finally
    //   136	150	1263	java/lang/Exception
    //   150	183	1274	java/lang/Exception
    //   191	197	1290	finally
    //   208	215	1290	finally
    //   223	232	1290	finally
    //   240	252	1290	finally
    //   270	278	1290	finally
    //   286	293	1290	finally
    //   301	311	1290	finally
    //   319	327	1290	finally
    //   394	408	1290	finally
    //   416	427	1290	finally
    //   435	445	1290	finally
    //   528	538	1290	finally
    //   546	559	1290	finally
    //   576	605	1290	finally
    //   620	641	1290	finally
    //   652	662	1290	finally
    //   670	680	1290	finally
    //   688	701	1290	finally
    //   709	719	1290	finally
    //   727	737	1290	finally
    //   745	756	1290	finally
    //   764	769	1290	finally
    //   783	789	1290	finally
    //   797	814	1290	finally
    //   827	856	1290	finally
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