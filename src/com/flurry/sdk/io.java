package com.flurry.sdk;

import android.content.Context;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class io
{
  private static final String b = io.class.getName();
  private static io c = null;
  private String a;
  private jz<List<ip>> d;
  private List<ip> e;
  private boolean f;
  
  public static io a()
  {
    try
    {
      if (c == null)
      {
        c = new io();
        c.e();
      }
      io localio = c;
      return localio;
    }
    finally {}
  }
  
  private void e()
  {
    d = new jz(js.a().c().getFileStreamPath(f()), ".yflurrypulselogging.", 1, new io.1(this));
    f = ((Boolean)lk.a().a("UseHttps")).booleanValue();
    kg.a(4, b, "initSettings, UseHttps = " + f);
    e = ((List)d.a());
    if (e == null) {
      e = new ArrayList();
    }
  }
  
  private String f()
  {
    return ".yflurrypulselogging." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  private String g()
  {
    if (a != null) {
      return a;
    }
    if (f) {
      return "https://data.flurry.com/pcr.do";
    }
    return "https://data.flurry.com/pcr.do";
  }
  
  public void a(in paramin)
  {
    try
    {
      paramin = new ip(paramin.h());
      e.add(paramin);
      kg.a(4, b, "Saving persistent Pulse logging data.");
      d.a(e);
      return;
    }
    catch (IOException paramin)
    {
      for (;;)
      {
        kg.a(6, b, "Error when generating pulse log report in addReport part");
      }
    }
    finally {}
  }
  
  public void a(String paramString)
  {
    if ((paramString != null) && (!paramString.endsWith(".do"))) {
      kg.a(5, b, "overriding analytics agent report URL without an endpoint, are you sure?");
    }
    a = paramString;
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    for (;;)
    {
      try
      {
        if (!jl.a().c())
        {
          kg.a(5, b, "Reports were not sent! No Internet connection!");
          return;
        }
        if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
        {
          kg.a(3, b, "No report need be sent");
          continue;
        }
        str = g();
      }
      finally {}
      String str;
      kg.a(4, b, "PulseLoggingManager: start upload data " + Arrays.toString(paramArrayOfByte) + " to " + str);
      kn localkn = new kn();
      localkn.a(str);
      localkn.d(100000);
      localkn.a(kp.a.c);
      localkn.b(true);
      localkn.a("Content-Type", "application/octet-stream");
      localkn.a(new kx());
      localkn.a(paramArrayOfByte);
      localkn.a(new io.2(this));
      jq.a().a(this, localkn);
    }
  }
  
  /* Error */
  public byte[] b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 245	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 246	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore_3
    //   10: new 248	java/io/DataOutputStream
    //   13: dup
    //   14: aload_3
    //   15: invokespecial 251	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_2
    //   19: aload_0
    //   20: getfield 40	com/flurry/sdk/io:e	Ljava/util/List;
    //   23: ifnull +15 -> 38
    //   26: aload_0
    //   27: getfield 40	com/flurry/sdk/io:e	Ljava/util/List;
    //   30: invokeinterface 254 1 0
    //   35: ifeq +14 -> 49
    //   38: aload_3
    //   39: invokevirtual 257	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   42: astore_1
    //   43: aload_2
    //   44: invokestatic 260	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   47: aload_1
    //   48: areturn
    //   49: aload_2
    //   50: iconst_1
    //   51: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   54: aload_2
    //   55: iconst_1
    //   56: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   59: aload_2
    //   60: invokestatic 269	java/lang/System:currentTimeMillis	()J
    //   63: invokevirtual 273	java/io/DataOutputStream:writeLong	(J)V
    //   66: aload_2
    //   67: invokestatic 50	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   70: invokevirtual 121	com/flurry/sdk/js:d	()Ljava/lang/String;
    //   73: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   76: aload_2
    //   77: invokestatic 281	com/flurry/sdk/jo:a	()Lcom/flurry/sdk/jo;
    //   80: invokevirtual 283	com/flurry/sdk/jo:e	()Ljava/lang/String;
    //   83: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   86: aload_2
    //   87: invokestatic 288	com/flurry/sdk/jt:a	()I
    //   90: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   93: aload_2
    //   94: iconst_3
    //   95: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   98: aload_2
    //   99: invokestatic 281	com/flurry/sdk/jo:a	()Lcom/flurry/sdk/jo;
    //   102: invokevirtual 289	com/flurry/sdk/jo:d	()Ljava/lang/String;
    //   105: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   108: aload_2
    //   109: invokestatic 294	com/flurry/sdk/jf:a	()Lcom/flurry/sdk/jf;
    //   112: invokevirtual 296	com/flurry/sdk/jf:e	()Z
    //   115: invokevirtual 299	java/io/DataOutputStream:writeBoolean	(Z)V
    //   118: new 118	java/util/ArrayList
    //   121: dup
    //   122: invokespecial 119	java/util/ArrayList:<init>	()V
    //   125: astore_1
    //   126: invokestatic 294	com/flurry/sdk/jf:a	()Lcom/flurry/sdk/jf;
    //   129: invokevirtual 302	com/flurry/sdk/jf:h	()Ljava/util/Map;
    //   132: invokeinterface 308 1 0
    //   137: invokeinterface 314 1 0
    //   142: astore 4
    //   144: aload 4
    //   146: invokeinterface 319 1 0
    //   151: ifeq +143 -> 294
    //   154: aload 4
    //   156: invokeinterface 322 1 0
    //   161: checkcast 324	java/util/Map$Entry
    //   164: astore 5
    //   166: new 326	com/flurry/sdk/hu
    //   169: dup
    //   170: invokespecial 327	com/flurry/sdk/hu:<init>	()V
    //   173: astore 6
    //   175: aload 6
    //   177: aload 5
    //   179: invokeinterface 330 1 0
    //   184: checkcast 332	com/flurry/sdk/jn
    //   187: getfield 335	com/flurry/sdk/jn:d	I
    //   190: putfield 337	com/flurry/sdk/hu:a	I
    //   193: aload 5
    //   195: invokeinterface 330 1 0
    //   200: checkcast 332	com/flurry/sdk/jn
    //   203: getfield 339	com/flurry/sdk/jn:e	Z
    //   206: ifeq +67 -> 273
    //   209: aload 6
    //   211: new 167	java/lang/String
    //   214: dup
    //   215: aload 5
    //   217: invokeinterface 342 1 0
    //   222: checkcast 344	[B
    //   225: invokespecial 345	java/lang/String:<init>	([B)V
    //   228: putfield 346	com/flurry/sdk/hu:b	Ljava/lang/String;
    //   231: aload_1
    //   232: aload 6
    //   234: invokeinterface 155 2 0
    //   239: pop
    //   240: goto -96 -> 144
    //   243: astore_3
    //   244: aload_2
    //   245: astore_1
    //   246: aload_3
    //   247: astore_2
    //   248: bipush 6
    //   250: getstatic 27	com/flurry/sdk/io:b	Ljava/lang/String;
    //   253: ldc_w 348
    //   256: aload_2
    //   257: invokestatic 351	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   260: aload_2
    //   261: athrow
    //   262: astore_3
    //   263: aload_1
    //   264: astore_2
    //   265: aload_3
    //   266: astore_1
    //   267: aload_2
    //   268: invokestatic 260	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   271: aload_1
    //   272: athrow
    //   273: aload 6
    //   275: aload 5
    //   277: invokeinterface 342 1 0
    //   282: checkcast 344	[B
    //   285: invokestatic 353	com/flurry/sdk/lt:b	([B)Ljava/lang/String;
    //   288: putfield 346	com/flurry/sdk/hu:b	Ljava/lang/String;
    //   291: goto -60 -> 231
    //   294: aload_2
    //   295: aload_1
    //   296: invokeinterface 356 1 0
    //   301: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   304: aload_1
    //   305: invokeinterface 357 1 0
    //   310: astore_1
    //   311: aload_1
    //   312: invokeinterface 319 1 0
    //   317: ifeq +49 -> 366
    //   320: aload_1
    //   321: invokeinterface 322 1 0
    //   326: checkcast 326	com/flurry/sdk/hu
    //   329: astore 4
    //   331: aload_2
    //   332: aload 4
    //   334: getfield 337	com/flurry/sdk/hu:a	I
    //   337: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   340: aload 4
    //   342: getfield 346	com/flurry/sdk/hu:b	Ljava/lang/String;
    //   345: invokevirtual 360	java/lang/String:getBytes	()[B
    //   348: astore 4
    //   350: aload_2
    //   351: aload 4
    //   353: arraylength
    //   354: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   357: aload_2
    //   358: aload 4
    //   360: invokevirtual 363	java/io/DataOutputStream:write	([B)V
    //   363: goto -52 -> 311
    //   366: aload_2
    //   367: bipush 6
    //   369: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   372: aload_2
    //   373: getstatic 368	com/flurry/sdk/ih:b	Lcom/flurry/sdk/ih;
    //   376: invokevirtual 369	com/flurry/sdk/ih:a	()I
    //   379: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   382: aload_2
    //   383: getstatic 374	android/os/Build:MODEL	Ljava/lang/String;
    //   386: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   389: aload_2
    //   390: getstatic 376	com/flurry/sdk/ih:c	Lcom/flurry/sdk/ih;
    //   393: invokevirtual 369	com/flurry/sdk/ih:a	()I
    //   396: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   399: aload_2
    //   400: getstatic 379	android/os/Build:BOARD	Ljava/lang/String;
    //   403: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   406: aload_2
    //   407: getstatic 381	com/flurry/sdk/ih:d	Lcom/flurry/sdk/ih;
    //   410: invokevirtual 369	com/flurry/sdk/ih:a	()I
    //   413: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   416: aload_2
    //   417: getstatic 384	android/os/Build:ID	Ljava/lang/String;
    //   420: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   423: aload_2
    //   424: getstatic 386	com/flurry/sdk/ih:e	Lcom/flurry/sdk/ih;
    //   427: invokevirtual 369	com/flurry/sdk/ih:a	()I
    //   430: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   433: aload_2
    //   434: getstatic 389	android/os/Build:DEVICE	Ljava/lang/String;
    //   437: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   440: aload_2
    //   441: getstatic 391	com/flurry/sdk/ih:f	Lcom/flurry/sdk/ih;
    //   444: invokevirtual 369	com/flurry/sdk/ih:a	()I
    //   447: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   450: aload_2
    //   451: getstatic 394	android/os/Build:PRODUCT	Ljava/lang/String;
    //   454: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   457: aload_2
    //   458: getstatic 396	com/flurry/sdk/ih:g	Lcom/flurry/sdk/ih;
    //   461: invokevirtual 369	com/flurry/sdk/ih:a	()I
    //   464: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   467: aload_2
    //   468: getstatic 401	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   471: invokevirtual 276	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   474: aload_2
    //   475: aload_0
    //   476: getfield 40	com/flurry/sdk/io:e	Ljava/util/List;
    //   479: invokeinterface 356 1 0
    //   484: invokevirtual 263	java/io/DataOutputStream:writeShort	(I)V
    //   487: aload_0
    //   488: getfield 40	com/flurry/sdk/io:e	Ljava/util/List;
    //   491: invokeinterface 357 1 0
    //   496: astore_1
    //   497: aload_1
    //   498: invokeinterface 319 1 0
    //   503: ifeq +22 -> 525
    //   506: aload_2
    //   507: aload_1
    //   508: invokeinterface 322 1 0
    //   513: checkcast 142	com/flurry/sdk/ip
    //   516: invokevirtual 403	com/flurry/sdk/ip:a	()[B
    //   519: invokevirtual 363	java/io/DataOutputStream:write	([B)V
    //   522: goto -25 -> 497
    //   525: aload_3
    //   526: invokevirtual 257	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   529: astore_1
    //   530: new 405	java/util/zip/CRC32
    //   533: dup
    //   534: invokespecial 406	java/util/zip/CRC32:<init>	()V
    //   537: astore 4
    //   539: aload 4
    //   541: aload_1
    //   542: invokevirtual 409	java/util/zip/CRC32:update	([B)V
    //   545: aload_2
    //   546: aload 4
    //   548: invokevirtual 411	java/util/zip/CRC32:getValue	()J
    //   551: l2i
    //   552: invokevirtual 414	java/io/DataOutputStream:writeInt	(I)V
    //   555: aload_3
    //   556: invokevirtual 257	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   559: astore_1
    //   560: aload_2
    //   561: invokestatic 260	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   564: aload_1
    //   565: areturn
    //   566: astore_1
    //   567: aconst_null
    //   568: astore_2
    //   569: goto -302 -> 267
    //   572: astore_2
    //   573: goto -325 -> 248
    //   576: astore_1
    //   577: goto -310 -> 267
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	580	0	this	io
    //   1	564	1	localObject1	Object
    //   566	1	1	localObject2	Object
    //   576	1	1	localObject3	Object
    //   18	551	2	localObject4	Object
    //   572	1	2	localIOException1	IOException
    //   9	30	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   243	4	3	localIOException2	IOException
    //   262	294	3	localObject5	Object
    //   142	405	4	localObject6	Object
    //   164	112	5	localEntry	java.util.Map.Entry
    //   173	101	6	localhu	hu
    // Exception table:
    //   from	to	target	type
    //   19	38	243	java/io/IOException
    //   38	43	243	java/io/IOException
    //   49	144	243	java/io/IOException
    //   144	231	243	java/io/IOException
    //   231	240	243	java/io/IOException
    //   273	291	243	java/io/IOException
    //   294	311	243	java/io/IOException
    //   311	363	243	java/io/IOException
    //   366	497	243	java/io/IOException
    //   497	522	243	java/io/IOException
    //   525	560	243	java/io/IOException
    //   248	262	262	finally
    //   2	19	566	finally
    //   2	19	572	java/io/IOException
    //   19	38	576	finally
    //   38	43	576	finally
    //   49	144	576	finally
    //   144	231	576	finally
    //   231	240	576	finally
    //   273	291	576	finally
    //   294	311	576	finally
    //   311	363	576	finally
    //   366	497	576	finally
    //   497	522	576	finally
    //   525	560	576	finally
  }
  
  public void c()
  {
    try
    {
      a(b());
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        kg.a(6, b, "Report not send due to exception in generate data");
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.io
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */