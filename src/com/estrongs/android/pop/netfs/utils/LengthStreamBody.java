package com.estrongs.android.pop.netfs.utils;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.mime.content.AbstractContentBody;

public class LengthStreamBody
  extends AbstractContentBody
{
  private final String filename;
  private final InputStream in;
  private long left_data = 0L;
  private final long length;
  private long send_length = -1L;
  
  public LengthStreamBody(InputStream paramInputStream, String paramString, long paramLong)
  {
    this(paramInputStream, "application/octet-stream", paramString, paramLong);
  }
  
  public LengthStreamBody(InputStream paramInputStream, String paramString, long paramLong1, long paramLong2)
  {
    this(paramInputStream, "application/octet-stream", paramString, paramLong1);
  }
  
  public LengthStreamBody(InputStream paramInputStream, String paramString1, String paramString2, long paramLong)
  {
    super(paramString1);
    if (paramInputStream == null) {
      throw new IllegalArgumentException("Input stream may not be null");
    }
    in = paramInputStream;
    filename = paramString2;
    length = paramLong;
  }
  
  public String getCharset()
  {
    return null;
  }
  
  public long getContentLength()
  {
    if (send_length == -1L) {
      return length;
    }
    if (left_data > send_length) {
      return send_length;
    }
    return left_data;
  }
  
  public String getFilename()
  {
    return filename;
  }
  
  public InputStream getInputStream()
  {
    return in;
  }
  
  public String getTransferEncoding()
  {
    return "binary";
  }
  
  /* Error */
  public void writeTo(OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 23	com/estrongs/android/pop/netfs/utils/LengthStreamBody:send_length	J
    //   4: ldc2_w 29
    //   7: lcmp
    //   8: ifeq +9 -> 17
    //   11: aload_0
    //   12: aload_1
    //   13: invokevirtual 58	com/estrongs/android/pop/netfs/utils/LengthStreamBody:writeTo2	(Ljava/io/OutputStream;)V
    //   16: return
    //   17: aload_1
    //   18: ifnonnull +13 -> 31
    //   21: new 32	java/lang/IllegalArgumentException
    //   24: dup
    //   25: ldc 60
    //   27: invokespecial 35	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   30: athrow
    //   31: sipush 16384
    //   34: newarray <illegal type>
    //   36: astore 9
    //   38: lconst_0
    //   39: lstore 5
    //   41: iconst_0
    //   42: istore_3
    //   43: lload 5
    //   45: aload_0
    //   46: getfield 41	com/estrongs/android/pop/netfs/utils/LengthStreamBody:length	J
    //   49: lcmp
    //   50: ifge +26 -> 76
    //   53: aload_0
    //   54: getfield 37	com/estrongs/android/pop/netfs/utils/LengthStreamBody:in	Ljava/io/InputStream;
    //   57: aload 9
    //   59: iload_3
    //   60: sipush 16384
    //   63: iload_3
    //   64: isub
    //   65: invokevirtual 66	java/io/InputStream:read	([BII)I
    //   68: istore 4
    //   70: iload 4
    //   72: iconst_m1
    //   73: if_icmpne +49 -> 122
    //   76: iload_3
    //   77: ifeq +33 -> 110
    //   80: ldc 68
    //   82: new 70	java/lang/StringBuilder
    //   85: dup
    //   86: ldc 72
    //   88: invokespecial 73	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: iload_3
    //   92: invokevirtual 77	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   95: invokevirtual 80	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokestatic 86	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   101: pop
    //   102: aload_1
    //   103: aload 9
    //   105: iconst_0
    //   106: iload_3
    //   107: invokevirtual 92	java/io/OutputStream:write	([BII)V
    //   110: aload_1
    //   111: invokevirtual 96	java/io/OutputStream:flush	()V
    //   114: aload_0
    //   115: getfield 37	com/estrongs/android/pop/netfs/utils/LengthStreamBody:in	Ljava/io/InputStream;
    //   118: invokevirtual 99	java/io/InputStream:close	()V
    //   121: return
    //   122: iload 4
    //   124: iload_3
    //   125: iadd
    //   126: sipush 1024
    //   129: if_icmple +62 -> 191
    //   132: aload_1
    //   133: aload 9
    //   135: iconst_0
    //   136: iload_3
    //   137: iload 4
    //   139: iadd
    //   140: invokevirtual 92	java/io/OutputStream:write	([BII)V
    //   143: iconst_0
    //   144: istore_2
    //   145: lload 5
    //   147: iload 4
    //   149: i2l
    //   150: ladd
    //   151: lstore 7
    //   153: iload_2
    //   154: istore_3
    //   155: lload 7
    //   157: lstore 5
    //   159: iload 4
    //   161: iconst_1
    //   162: if_icmpne -119 -> 43
    //   165: ldc2_w 100
    //   168: invokestatic 107	java/lang/Thread:sleep	(J)V
    //   171: iload_2
    //   172: istore_3
    //   173: lload 7
    //   175: lstore 5
    //   177: goto -134 -> 43
    //   180: astore 10
    //   182: iload_2
    //   183: istore_3
    //   184: lload 7
    //   186: lstore 5
    //   188: goto -145 -> 43
    //   191: iload_3
    //   192: iload 4
    //   194: iadd
    //   195: istore_2
    //   196: goto -51 -> 145
    //   199: astore_1
    //   200: ldc 68
    //   202: ldc 109
    //   204: invokestatic 86	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   207: pop
    //   208: aload_1
    //   209: invokevirtual 112	java/lang/Exception:printStackTrace	()V
    //   212: aload_0
    //   213: getfield 37	com/estrongs/android/pop/netfs/utils/LengthStreamBody:in	Ljava/io/InputStream;
    //   216: invokevirtual 99	java/io/InputStream:close	()V
    //   219: return
    //   220: astore_1
    //   221: aload_0
    //   222: getfield 37	com/estrongs/android/pop/netfs/utils/LengthStreamBody:in	Ljava/io/InputStream;
    //   225: invokevirtual 99	java/io/InputStream:close	()V
    //   228: aload_1
    //   229: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	230	0	this	LengthStreamBody
    //   0	230	1	paramOutputStream	OutputStream
    //   144	52	2	i	int
    //   42	153	3	j	int
    //   68	127	4	k	int
    //   39	148	5	l1	long
    //   151	34	7	l2	long
    //   36	98	9	arrayOfByte	byte[]
    //   180	1	10	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   165	171	180	java/lang/Exception
    //   31	38	199	java/lang/Exception
    //   43	70	199	java/lang/Exception
    //   80	110	199	java/lang/Exception
    //   110	114	199	java/lang/Exception
    //   132	143	199	java/lang/Exception
    //   31	38	220	finally
    //   43	70	220	finally
    //   80	110	220	finally
    //   110	114	220	finally
    //   132	143	220	finally
    //   165	171	220	finally
    //   200	212	220	finally
  }
  
  @Deprecated
  public void writeTo(OutputStream paramOutputStream, int paramInt)
  {
    writeTo(paramOutputStream);
  }
  
  /* Error */
  public void writeTo2(OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +13 -> 14
    //   4: new 32	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 60
    //   10: invokespecial 35	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_0
    //   15: getfield 25	com/estrongs/android/pop/netfs/utils/LengthStreamBody:left_data	J
    //   18: aload_0
    //   19: getfield 23	com/estrongs/android/pop/netfs/utils/LengthStreamBody:send_length	J
    //   22: lcmp
    //   23: ifle +93 -> 116
    //   26: aload_0
    //   27: getfield 23	com/estrongs/android/pop/netfs/utils/LengthStreamBody:send_length	J
    //   30: lstore 4
    //   32: sipush 16384
    //   35: newarray <illegal type>
    //   37: astore 12
    //   39: iconst_0
    //   40: istore_2
    //   41: lload 4
    //   43: lstore 6
    //   45: lload 6
    //   47: lconst_0
    //   48: lcmp
    //   49: ifgt +76 -> 125
    //   52: lload 6
    //   54: lconst_0
    //   55: lcmp
    //   56: ifle +181 -> 237
    //   59: lload 6
    //   61: lstore 8
    //   63: new 55	java/lang/Exception
    //   66: dup
    //   67: invokespecial 119	java/lang/Exception:<init>	()V
    //   70: athrow
    //   71: astore_1
    //   72: lload 6
    //   74: lstore 8
    //   76: ldc 68
    //   78: ldc 109
    //   80: invokestatic 86	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   83: pop
    //   84: lload 6
    //   86: lstore 8
    //   88: aload_1
    //   89: invokevirtual 112	java/lang/Exception:printStackTrace	()V
    //   92: aload_0
    //   93: getfield 25	com/estrongs/android/pop/netfs/utils/LengthStreamBody:left_data	J
    //   96: lconst_0
    //   97: lcmp
    //   98: ifeq +10 -> 108
    //   101: lload 6
    //   103: lconst_0
    //   104: lcmp
    //   105: ifle +10 -> 115
    //   108: aload_0
    //   109: getfield 37	com/estrongs/android/pop/netfs/utils/LengthStreamBody:in	Ljava/io/InputStream;
    //   112: invokevirtual 99	java/io/InputStream:close	()V
    //   115: return
    //   116: aload_0
    //   117: getfield 25	com/estrongs/android/pop/netfs/utils/LengthStreamBody:left_data	J
    //   120: lstore 4
    //   122: goto -90 -> 32
    //   125: sipush 16384
    //   128: iload_2
    //   129: isub
    //   130: i2l
    //   131: lload 6
    //   133: lcmp
    //   134: ifle +80 -> 214
    //   137: lload 6
    //   139: lstore 10
    //   141: lload 6
    //   143: lstore 8
    //   145: aload_0
    //   146: getfield 37	com/estrongs/android/pop/netfs/utils/LengthStreamBody:in	Ljava/io/InputStream;
    //   149: aload 12
    //   151: iload_2
    //   152: lload 10
    //   154: l2i
    //   155: invokevirtual 66	java/io/InputStream:read	([BII)I
    //   158: istore_3
    //   159: iload_3
    //   160: iconst_m1
    //   161: if_icmpeq -109 -> 52
    //   164: iload_3
    //   165: iload_2
    //   166: iadd
    //   167: sipush 1024
    //   170: if_icmple +55 -> 225
    //   173: lload 6
    //   175: lstore 8
    //   177: aload_1
    //   178: aload 12
    //   180: iconst_0
    //   181: iload_2
    //   182: iload_3
    //   183: iadd
    //   184: invokevirtual 92	java/io/OutputStream:write	([BII)V
    //   187: iconst_0
    //   188: istore_2
    //   189: lload 6
    //   191: iload_3
    //   192: i2l
    //   193: lsub
    //   194: lstore 6
    //   196: iload_3
    //   197: iconst_1
    //   198: if_icmpne +144 -> 342
    //   201: lload 6
    //   203: lstore 8
    //   205: ldc2_w 100
    //   208: invokestatic 107	java/lang/Thread:sleep	(J)V
    //   211: goto -166 -> 45
    //   214: sipush 16384
    //   217: iload_2
    //   218: isub
    //   219: i2l
    //   220: lstore 10
    //   222: goto -81 -> 141
    //   225: iload_2
    //   226: iload_3
    //   227: iadd
    //   228: istore_2
    //   229: goto -40 -> 189
    //   232: astore 13
    //   234: goto -189 -> 45
    //   237: iload_2
    //   238: ifeq +15 -> 253
    //   241: lload 6
    //   243: lstore 8
    //   245: aload_1
    //   246: aload 12
    //   248: iconst_0
    //   249: iload_2
    //   250: invokevirtual 92	java/io/OutputStream:write	([BII)V
    //   253: lload 6
    //   255: lstore 8
    //   257: aload_1
    //   258: invokevirtual 96	java/io/OutputStream:flush	()V
    //   261: lload 6
    //   263: lstore 8
    //   265: aload_0
    //   266: aload_0
    //   267: getfield 25	com/estrongs/android/pop/netfs/utils/LengthStreamBody:left_data	J
    //   270: lload 4
    //   272: lsub
    //   273: putfield 25	com/estrongs/android/pop/netfs/utils/LengthStreamBody:left_data	J
    //   276: aload_0
    //   277: getfield 25	com/estrongs/android/pop/netfs/utils/LengthStreamBody:left_data	J
    //   280: lconst_0
    //   281: lcmp
    //   282: ifeq +10 -> 292
    //   285: lload 6
    //   287: lconst_0
    //   288: lcmp
    //   289: ifle -174 -> 115
    //   292: aload_0
    //   293: getfield 37	com/estrongs/android/pop/netfs/utils/LengthStreamBody:in	Ljava/io/InputStream;
    //   296: invokevirtual 99	java/io/InputStream:close	()V
    //   299: return
    //   300: astore_1
    //   301: aload_0
    //   302: getfield 25	com/estrongs/android/pop/netfs/utils/LengthStreamBody:left_data	J
    //   305: lconst_0
    //   306: lcmp
    //   307: ifeq +10 -> 317
    //   310: lload 4
    //   312: lconst_0
    //   313: lcmp
    //   314: ifle +10 -> 324
    //   317: aload_0
    //   318: getfield 37	com/estrongs/android/pop/netfs/utils/LengthStreamBody:in	Ljava/io/InputStream;
    //   321: invokevirtual 99	java/io/InputStream:close	()V
    //   324: aload_1
    //   325: athrow
    //   326: astore_1
    //   327: lload 8
    //   329: lstore 4
    //   331: goto -30 -> 301
    //   334: astore_1
    //   335: lload 4
    //   337: lstore 6
    //   339: goto -267 -> 72
    //   342: goto -297 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	345	0	this	LengthStreamBody
    //   0	345	1	paramOutputStream	OutputStream
    //   40	210	2	i	int
    //   158	70	3	j	int
    //   30	306	4	l1	long
    //   43	295	6	l2	long
    //   61	267	8	l3	long
    //   139	82	10	l4	long
    //   37	210	12	arrayOfByte	byte[]
    //   232	1	13	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   63	71	71	java/lang/Exception
    //   145	159	71	java/lang/Exception
    //   177	187	71	java/lang/Exception
    //   245	253	71	java/lang/Exception
    //   257	261	71	java/lang/Exception
    //   265	276	71	java/lang/Exception
    //   205	211	232	java/lang/Exception
    //   32	39	300	finally
    //   63	71	326	finally
    //   76	84	326	finally
    //   88	92	326	finally
    //   145	159	326	finally
    //   177	187	326	finally
    //   205	211	326	finally
    //   245	253	326	finally
    //   257	261	326	finally
    //   265	276	326	finally
    //   32	39	334	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.LengthStreamBody
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */