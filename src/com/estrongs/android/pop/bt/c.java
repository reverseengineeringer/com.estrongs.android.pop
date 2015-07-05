package com.estrongs.android.pop.bt;

import android.util.Log;
import b.b.f;
import com.estrongs.android.pop.ad;
import java.io.IOException;
import java.util.Timer;

class c
  extends f
{
  private Timer b = new Timer();
  private boolean c = false;
  private boolean d = false;
  private b.a.a.a e;
  private String f;
  private String g;
  private int h;
  
  private c(a parama) {}
  
  private void c() {}
  
  public int a(b.b.c paramc1, b.b.c paramc2)
  {
    Log.d("OBEXFtpServer", "OBEX onConnect");
    if (paramc1 == null) {
      return 160;
    }
    try
    {
      paramc1 = (byte[])paramc1.a(70);
      if (paramc1 == null) {}
      boolean bool;
      do
      {
        paramc2.a(203, new Long(h));
        paramc2.a(74, a.d());
        c = true;
        b.cancel();
        return 160;
        bool = a.a(a, paramc1);
      } while (bool);
      return 192;
    }
    catch (IOException paramc1) {}
    return 192;
  }
  
  public int a(b.b.c paramc1, b.b.c paramc2, boolean paramBoolean1, boolean paramBoolean2)
  {
    Log.d("OBEXFtpServer", "OBEX onSetPath");
    if (!c) {
      return 164;
    }
    if (paramBoolean1) {
      g = f;
    }
    try
    {
      if (((Long)paramc1.a(203)).longValue() != h) {
        return 211;
      }
      paramc1 = (String)paramc1.a(1);
      if ((paramc1 == null) || (paramc1.length() == 0))
      {
        if ((!paramBoolean1) && (!paramBoolean2))
        {
          f = a.b(a);
        }
        else
        {
          if ((!paramBoolean1) || (paramBoolean2)) {
            break label256;
          }
          if (a.b(a).equals(f)) {
            return 196;
          }
          f = a.b(a, f);
        }
      }
      else if (paramc1.equals("/"))
      {
        f = a.b(a);
      }
      else
      {
        paramc1 = f + paramc1 + "/";
        paramBoolean1 = a.c(a, paramc1);
        if ((!paramBoolean2) && (!paramBoolean1)) {
          return 196;
        }
        f = paramc1;
        if ((paramBoolean2) && (!paramBoolean1)) {
          a.d(a, paramc1);
        }
      }
      return 160;
    }
    catch (IOException paramc1)
    {
      return 192;
    }
    label256:
    return 192;
  }
  
  /* Error */
  public int a(b.b.d paramd)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: ldc 43
    //   4: ldc 126
    //   6: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   9: pop
    //   10: aload_0
    //   11: getfield 32	com/estrongs/android/pop/bt/c:c	Z
    //   14: ifne +7 -> 21
    //   17: sipush 164
    //   20: ireturn
    //   21: aload_1
    //   22: invokeinterface 131 1 0
    //   27: astore 7
    //   29: aload 7
    //   31: sipush 203
    //   34: invokeinterface 55 2 0
    //   39: checkcast 59	java/lang/Long
    //   42: invokevirtual 89	java/lang/Long:longValue	()J
    //   45: lstore 4
    //   47: aload_0
    //   48: getfield 61	com/estrongs/android/pop/bt/c:h	I
    //   51: istore_3
    //   52: lload 4
    //   54: iload_3
    //   55: i2l
    //   56: lcmp
    //   57: ifeq +27 -> 84
    //   60: ldc 43
    //   62: ldc -123
    //   64: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   67: pop
    //   68: aload_0
    //   69: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   72: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   75: invokeinterface 140 1 0
    //   80: sipush 211
    //   83: ireturn
    //   84: aload 7
    //   86: iconst_1
    //   87: invokeinterface 55 2 0
    //   92: checkcast 91	java/lang/String
    //   95: astore 6
    //   97: aload 6
    //   99: ifnull +343 -> 442
    //   102: ldc 43
    //   104: new 109	java/lang/StringBuilder
    //   107: dup
    //   108: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   111: ldc -114
    //   113: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: aload 6
    //   118: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   127: pop
    //   128: aload_0
    //   129: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   132: new 109	java/lang/StringBuilder
    //   135: dup
    //   136: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   139: ldc -112
    //   141: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: aload 6
    //   146: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: invokestatic 147	com/estrongs/android/pop/bt/a:a	(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V
    //   155: aload 7
    //   157: sipush 195
    //   160: invokeinterface 55 2 0
    //   165: checkcast 59	java/lang/Long
    //   168: astore 7
    //   170: aload 7
    //   172: ifnull +59 -> 231
    //   175: ldc 43
    //   177: new 109	java/lang/StringBuilder
    //   180: dup
    //   181: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   184: ldc -107
    //   186: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: aload 7
    //   191: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   200: pop
    //   201: aload_0
    //   202: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   205: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   208: iconst_0
    //   209: invokeinterface 155 2 0
    //   214: aload_0
    //   215: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   218: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   221: aload 7
    //   223: invokevirtual 158	java/lang/Long:intValue	()I
    //   226: invokeinterface 160 2 0
    //   231: new 162	java/io/File
    //   234: dup
    //   235: aload_0
    //   236: getfield 83	com/estrongs/android/pop/bt/c:f	Ljava/lang/String;
    //   239: aload 6
    //   241: invokespecial 165	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   244: astore 8
    //   246: aload 8
    //   248: invokevirtual 169	java/io/File:exists	()Z
    //   251: ifne +9 -> 260
    //   254: aload 8
    //   256: invokevirtual 172	java/io/File:createNewFile	()Z
    //   259: pop
    //   260: new 174	java/io/BufferedOutputStream
    //   263: dup
    //   264: new 176	java/io/FileOutputStream
    //   267: dup
    //   268: aload 8
    //   270: invokespecial 179	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   273: ldc -76
    //   275: invokespecial 183	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   278: astore 9
    //   280: new 185	java/io/BufferedInputStream
    //   283: dup
    //   284: aload_1
    //   285: invokeinterface 188 1 0
    //   290: ldc -76
    //   292: invokespecial 191	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   295: astore 10
    //   297: ldc -76
    //   299: newarray <illegal type>
    //   301: astore 11
    //   303: aload_0
    //   304: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   307: invokestatic 194	com/estrongs/android/pop/bt/a:d	(Lcom/estrongs/android/pop/bt/a;)Z
    //   310: ifne +27 -> 337
    //   313: aload 10
    //   315: aload 11
    //   317: iconst_0
    //   318: ldc -76
    //   320: invokevirtual 198	java/io/BufferedInputStream:read	([BII)I
    //   323: istore_3
    //   324: iload_3
    //   325: iconst_m1
    //   326: if_icmpne +151 -> 477
    //   329: ldc 43
    //   331: ldc -56
    //   333: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   336: pop
    //   337: aload 9
    //   339: invokevirtual 203	java/io/BufferedOutputStream:flush	()V
    //   342: aload 9
    //   344: invokevirtual 206	java/io/BufferedOutputStream:close	()V
    //   347: aload_1
    //   348: invokeinterface 208 1 0
    //   353: ldc 43
    //   355: new 109	java/lang/StringBuilder
    //   358: dup
    //   359: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   362: ldc -46
    //   364: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: aload 8
    //   369: invokevirtual 213	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   372: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   378: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   381: pop
    //   382: aload_0
    //   383: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   386: new 109	java/lang/StringBuilder
    //   389: dup
    //   390: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   393: ldc -41
    //   395: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   398: aload 6
    //   400: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   406: invokestatic 147	com/estrongs/android/pop/bt/a:a	(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V
    //   409: aload_0
    //   410: iconst_1
    //   411: putfield 34	com/estrongs/android/pop/bt/c:d	Z
    //   414: aload_0
    //   415: invokespecial 217	com/estrongs/android/pop/bt/c:c	()V
    //   418: ldc 43
    //   420: ldc -123
    //   422: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   425: pop
    //   426: aload_0
    //   427: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   430: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   433: invokeinterface 140 1 0
    //   438: sipush 160
    //   441: ireturn
    //   442: new 109	java/lang/StringBuilder
    //   445: dup
    //   446: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   449: ldc -37
    //   451: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: invokestatic 224	android/os/SystemClock:uptimeMillis	()J
    //   457: invokevirtual 227	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   460: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   463: astore 6
    //   465: aload_0
    //   466: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   469: ldc -27
    //   471: invokestatic 147	com/estrongs/android/pop/bt/a:a	(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V
    //   474: goto -319 -> 155
    //   477: aload 9
    //   479: aload 11
    //   481: iconst_0
    //   482: iload_3
    //   483: invokevirtual 233	java/io/BufferedOutputStream:write	([BII)V
    //   486: iload_2
    //   487: iload_3
    //   488: iadd
    //   489: istore_3
    //   490: iload_3
    //   491: istore_2
    //   492: aload 7
    //   494: ifnull -191 -> 303
    //   497: iload_3
    //   498: istore_2
    //   499: iload_3
    //   500: bipush 100
    //   502: irem
    //   503: ifne -200 -> 303
    //   506: aload_0
    //   507: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   510: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   513: iload_3
    //   514: invokeinterface 155 2 0
    //   519: iload_3
    //   520: istore_2
    //   521: goto -218 -> 303
    //   524: astore_1
    //   525: ldc 43
    //   527: ldc -21
    //   529: aload_1
    //   530: invokestatic 238	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   533: pop
    //   534: ldc 43
    //   536: ldc -123
    //   538: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   541: pop
    //   542: aload_0
    //   543: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   546: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   549: invokeinterface 140 1 0
    //   554: sipush 211
    //   557: ireturn
    //   558: astore_1
    //   559: ldc 43
    //   561: ldc -123
    //   563: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   566: pop
    //   567: aload_0
    //   568: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   571: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   574: invokeinterface 140 1 0
    //   579: aload_1
    //   580: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	581	0	this	c
    //   0	581	1	paramd	b.b.d
    //   1	520	2	i	int
    //   51	469	3	j	int
    //   45	8	4	l	long
    //   95	369	6	str	String
    //   27	466	7	localObject	Object
    //   244	124	8	localFile	java.io.File
    //   278	200	9	localBufferedOutputStream	java.io.BufferedOutputStream
    //   295	19	10	localBufferedInputStream	java.io.BufferedInputStream
    //   301	179	11	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   21	52	524	java/io/IOException
    //   84	97	524	java/io/IOException
    //   102	155	524	java/io/IOException
    //   155	170	524	java/io/IOException
    //   175	231	524	java/io/IOException
    //   231	260	524	java/io/IOException
    //   260	303	524	java/io/IOException
    //   303	324	524	java/io/IOException
    //   329	337	524	java/io/IOException
    //   337	418	524	java/io/IOException
    //   442	474	524	java/io/IOException
    //   477	486	524	java/io/IOException
    //   506	519	524	java/io/IOException
    //   21	52	558	finally
    //   84	97	558	finally
    //   102	155	558	finally
    //   155	170	558	finally
    //   175	231	558	finally
    //   231	260	558	finally
    //   260	303	558	finally
    //   303	324	558	finally
    //   329	337	558	finally
    //   337	418	558	finally
    //   442	474	558	finally
    //   477	486	558	finally
    //   506	519	558	finally
    //   525	534	558	finally
  }
  
  public void a()
  {
    Log.d("OBEXFtpServer", "OBEX notConnectedClose");
    if (!c) {
      Log.d("OBEXFtpServer", "OBEX connection timeout");
    }
    try
    {
      e.e();
      if (!d) {
        a.a(a, "Disconnected");
      }
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public void a(b.a.a.a parama, int paramInt)
  {
    Log.d("OBEXFtpServer", "Received OBEX connection");
    a.a(a, "Client connected");
    e = parama;
    h = paramInt;
    if (!c) {
      b.schedule(new d(this), 60000L);
    }
    f = ad.a(a.a(a)).y();
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    Log.d("OBEXFtpServer", "OBEX AuthFailure " + new String(paramArrayOfByte));
  }
  
  /* Error */
  public int b(b.b.d paramd)
  {
    // Byte code:
    //   0: ldc 43
    //   2: ldc_w 283
    //   5: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   8: pop
    //   9: aload_0
    //   10: getfield 32	com/estrongs/android/pop/bt/c:c	Z
    //   13: ifne +7 -> 20
    //   16: sipush 164
    //   19: ireturn
    //   20: aload_1
    //   21: invokeinterface 131 1 0
    //   26: astore 6
    //   28: aload 6
    //   30: ifnonnull +16 -> 46
    //   33: ldc 43
    //   35: ldc_w 285
    //   38: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   41: pop
    //   42: sipush 192
    //   45: ireturn
    //   46: aload 6
    //   48: bipush 66
    //   50: invokeinterface 55 2 0
    //   55: checkcast 91	java/lang/String
    //   58: astore 7
    //   60: aload 6
    //   62: iconst_1
    //   63: invokeinterface 55 2 0
    //   68: checkcast 91	java/lang/String
    //   71: astore 5
    //   73: aload 6
    //   75: sipush 203
    //   78: invokeinterface 55 2 0
    //   83: checkcast 59	java/lang/Long
    //   86: invokevirtual 89	java/lang/Long:longValue	()J
    //   89: lstore_3
    //   90: aload_0
    //   91: getfield 61	com/estrongs/android/pop/bt/c:h	I
    //   94: istore_2
    //   95: lload_3
    //   96: iload_2
    //   97: i2l
    //   98: lcmp
    //   99: ifeq +16 -> 115
    //   102: ldc 43
    //   104: ldc_w 285
    //   107: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   110: pop
    //   111: sipush 211
    //   114: ireturn
    //   115: aload 7
    //   117: ifnull +157 -> 274
    //   120: aload 7
    //   122: ldc_w 287
    //   125: invokevirtual 102	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   128: ifeq +146 -> 274
    //   131: aload_0
    //   132: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   135: invokestatic 290	com/estrongs/android/pop/bt/a:e	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/bluetooth/parser/a;
    //   138: aload_0
    //   139: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   142: aload_0
    //   143: getfield 83	com/estrongs/android/pop/bt/c:f	Ljava/lang/String;
    //   146: aload 5
    //   148: invokestatic 293	com/estrongs/android/pop/bt/a:a	(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    //   151: invokevirtual 298	com/estrongs/bluetooth/parser/a:a	(Ljava/util/ArrayList;)Ljava/lang/String;
    //   154: invokevirtual 301	java/lang/String:getBytes	()[B
    //   157: astore 6
    //   159: aload_0
    //   160: invokevirtual 303	com/estrongs/android/pop/bt/c:b	()Lb/b/c;
    //   163: astore 7
    //   165: aload 7
    //   167: sipush 203
    //   170: new 59	java/lang/Long
    //   173: dup
    //   174: aload_0
    //   175: getfield 61	com/estrongs/android/pop/bt/c:h	I
    //   178: i2l
    //   179: invokespecial 64	java/lang/Long:<init>	(J)V
    //   182: invokeinterface 67 3 0
    //   187: aload 7
    //   189: sipush 195
    //   192: new 59	java/lang/Long
    //   195: dup
    //   196: aload 6
    //   198: arraylength
    //   199: i2l
    //   200: invokespecial 64	java/lang/Long:<init>	(J)V
    //   203: invokeinterface 67 3 0
    //   208: aload 7
    //   210: iconst_1
    //   211: aload 5
    //   213: invokeinterface 67 3 0
    //   218: aload_1
    //   219: aload 7
    //   221: invokeinterface 306 2 0
    //   226: aload_1
    //   227: invokeinterface 309 1 0
    //   232: astore 5
    //   234: aload 5
    //   236: aload 6
    //   238: iconst_0
    //   239: aload 6
    //   241: arraylength
    //   242: invokevirtual 312	java/io/OutputStream:write	([BII)V
    //   245: aload 5
    //   247: invokevirtual 313	java/io/OutputStream:flush	()V
    //   250: aload 5
    //   252: invokevirtual 314	java/io/OutputStream:close	()V
    //   255: aload_1
    //   256: invokeinterface 208 1 0
    //   261: ldc 43
    //   263: ldc_w 285
    //   266: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   269: pop
    //   270: sipush 160
    //   273: ireturn
    //   274: aload 5
    //   276: ifnonnull +50 -> 326
    //   279: aload_1
    //   280: invokeinterface 131 1 0
    //   285: astore 5
    //   287: aload 5
    //   289: bipush 73
    //   291: iconst_0
    //   292: newarray <illegal type>
    //   294: invokeinterface 67 3 0
    //   299: aload_1
    //   300: aload 5
    //   302: invokeinterface 306 2 0
    //   307: aload_1
    //   308: invokeinterface 208 1 0
    //   313: ldc 43
    //   315: ldc_w 285
    //   318: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   321: pop
    //   322: sipush 160
    //   325: ireturn
    //   326: new 185	java/io/BufferedInputStream
    //   329: dup
    //   330: new 316	java/io/FileInputStream
    //   333: dup
    //   334: new 162	java/io/File
    //   337: dup
    //   338: aload_0
    //   339: getfield 83	com/estrongs/android/pop/bt/c:f	Ljava/lang/String;
    //   342: aload 5
    //   344: invokespecial 165	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   347: invokespecial 317	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   350: ldc -76
    //   352: invokespecial 191	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   355: astore 5
    //   357: new 174	java/io/BufferedOutputStream
    //   360: dup
    //   361: aload_1
    //   362: invokeinterface 320 1 0
    //   367: ldc -76
    //   369: invokespecial 183	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   372: astore 6
    //   374: ldc -76
    //   376: newarray <illegal type>
    //   378: astore 7
    //   380: aload 5
    //   382: aload 7
    //   384: iconst_0
    //   385: ldc -76
    //   387: invokevirtual 198	java/io/BufferedInputStream:read	([BII)I
    //   390: istore_2
    //   391: iload_2
    //   392: iconst_m1
    //   393: if_icmpeq +39 -> 432
    //   396: aload 6
    //   398: aload 7
    //   400: iconst_0
    //   401: iload_2
    //   402: invokevirtual 233	java/io/BufferedOutputStream:write	([BII)V
    //   405: goto -25 -> 380
    //   408: astore_1
    //   409: ldc 43
    //   411: ldc_w 322
    //   414: aload_1
    //   415: invokestatic 238	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   418: pop
    //   419: ldc 43
    //   421: ldc_w 285
    //   424: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   427: pop
    //   428: sipush 211
    //   431: ireturn
    //   432: aload 6
    //   434: invokevirtual 203	java/io/BufferedOutputStream:flush	()V
    //   437: aload 5
    //   439: invokevirtual 323	java/io/BufferedInputStream:close	()V
    //   442: aload 6
    //   444: invokevirtual 206	java/io/BufferedOutputStream:close	()V
    //   447: aload_1
    //   448: invokeinterface 208 1 0
    //   453: ldc 43
    //   455: ldc_w 285
    //   458: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   461: pop
    //   462: sipush 160
    //   465: ireturn
    //   466: astore_1
    //   467: ldc 43
    //   469: ldc_w 285
    //   472: invokestatic 50	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   475: pop
    //   476: aload_1
    //   477: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	478	0	this	c
    //   0	478	1	paramd	b.b.d
    //   94	308	2	i	int
    //   89	7	3	l	long
    //   71	367	5	localObject1	Object
    //   26	417	6	localObject2	Object
    //   58	341	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   20	28	408	java/io/IOException
    //   46	95	408	java/io/IOException
    //   120	261	408	java/io/IOException
    //   279	313	408	java/io/IOException
    //   326	380	408	java/io/IOException
    //   380	391	408	java/io/IOException
    //   396	405	408	java/io/IOException
    //   432	453	408	java/io/IOException
    //   20	28	466	finally
    //   46	95	466	finally
    //   120	261	466	finally
    //   279	313	466	finally
    //   326	380	466	finally
    //   380	391	466	finally
    //   396	405	466	finally
    //   409	419	466	finally
    //   432	453	466	finally
  }
  
  public void b(b.b.c paramc1, b.b.c paramc2)
  {
    Log.d("OBEXFtpServer", "OBEX onDisconnect");
    if (!d) {
      a.a(a, "Disconnected");
    }
    c = false;
  }
  
  public int c(b.b.c paramc1, b.b.c paramc2)
  {
    Log.d("OBEXFtpServer", "OBEX onDelete");
    if (!c) {
      return 164;
    }
    try
    {
      if (((Long)paramc1.a(203)).longValue() != h) {
        return 211;
      }
      String str = (String)paramc1.a(1);
      if ((str != null) && (!str.equals("/")))
      {
        str = f + str + "/";
        if (!a.c(a, str)) {
          return 196;
        }
        boolean bool = a.e(a, str);
        if (bool) {
          return 160;
        }
        return 195;
      }
    }
    catch (IOException localIOException)
    {
      return super.c(paramc1, paramc2);
    }
    return 192;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */