package com.estrongs.android.pop.app.messagebox;

import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.estrongs.android.pop.FexApplication;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ai
{
  private static final String a = c.b;
  private static final HashMap<String, Bitmap> b = new HashMap();
  private static final HashSet<String> c = new HashSet();
  
  private static Bitmap a(String paramString1, String paramString2)
  {
    Bitmap localBitmap = f(paramString1);
    Object localObject = localBitmap;
    if (localBitmap == null)
    {
      String str = g(paramString1);
      paramString1 = new File(paramString2, str);
      localObject = localBitmap;
      if (paramString1.exists())
      {
        paramString1 = an.a(paramString1.getAbsolutePath());
        localObject = paramString1;
        if (paramString1 == null)
        {
          an.b(paramString2, str);
          localObject = paramString1;
        }
      }
    }
    return (Bitmap)localObject;
  }
  
  public static void a()
  {
    synchronized (b)
    {
      Iterator localIterator = b.values().iterator();
      while (localIterator.hasNext())
      {
        Bitmap localBitmap = (Bitmap)localIterator.next();
        if (localBitmap != null) {
          localBitmap.recycle();
        }
      }
    }
    b.clear();
  }
  
  public static void a(String paramString)
  {
    if (!ao.a()) {}
    Bitmap localBitmap;
    do
    {
      return;
      localBitmap = f(paramString);
    } while (localBitmap != null);
    String str = g(paramString);
    int i = 1;
    label115:
    label121:
    for (;;)
    {
      synchronized (c)
      {
        if (c.contains(paramString)) {
          i = 0;
        }
        if ((i == 0) || (!an.a(a, str))) {
          break label121;
        }
        localBitmap = an.a(a + str);
        if (localBitmap == null)
        {
          an.b(a, str);
          if (i == 0) {
            break label115;
          }
          d(paramString);
          return;
        }
      }
      i = 0;
      continue;
      b(paramString, localBitmap);
      return;
    }
  }
  
  public static Bitmap b(String paramString)
  {
    return a(paramString, a);
  }
  
  private static void b(String paramString, Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      synchronized (b)
      {
        b.put(paramString, paramBitmap);
        return;
      }
    }
  }
  
  private static void d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    synchronized (c)
    {
      c.add(paramString);
      if (Build.VERSION.SDK_INT >= 11)
      {
        FexApplication.a().a(new aj(paramString));
        return;
      }
    }
    FexApplication.a().a(new ak(paramString));
  }
  
  /* Error */
  private static Bitmap e(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +107 -> 108
    //   4: ldc -90
    //   6: aload_0
    //   7: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   10: ifne +98 -> 108
    //   13: new 173	java/net/URL
    //   16: dup
    //   17: aload_0
    //   18: invokespecial 174	java/net/URL:<init>	(Ljava/lang/String;)V
    //   21: invokevirtual 178	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   24: astore 6
    //   26: aload 6
    //   28: sipush 10000
    //   31: invokevirtual 184	java/net/URLConnection:setConnectTimeout	(I)V
    //   34: aload 6
    //   36: sipush 10000
    //   39: invokevirtual 187	java/net/URLConnection:setReadTimeout	(I)V
    //   42: aload 6
    //   44: invokevirtual 190	java/net/URLConnection:connect	()V
    //   47: aload 6
    //   49: invokevirtual 194	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   52: astore 5
    //   54: aload 5
    //   56: astore 4
    //   58: aload_0
    //   59: invokestatic 42	com/estrongs/android/pop/app/messagebox/ai:g	(Ljava/lang/String;)Ljava/lang/String;
    //   62: astore 7
    //   64: aload 5
    //   66: astore 4
    //   68: aload 6
    //   70: invokevirtual 198	java/net/URLConnection:getURL	()Ljava/net/URL;
    //   73: ifnull +56 -> 129
    //   76: aload 5
    //   78: astore 4
    //   80: aload 6
    //   82: invokevirtual 198	java/net/URLConnection:getURL	()Ljava/net/URL;
    //   85: invokevirtual 199	java/net/URL:toString	()Ljava/lang/String;
    //   88: ldc -55
    //   90: invokevirtual 205	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   93: istore_1
    //   94: iload_1
    //   95: ifeq +34 -> 129
    //   98: aload 5
    //   100: ifnull +8 -> 108
    //   103: aload 5
    //   105: invokevirtual 210	java/io/InputStream:close	()V
    //   108: aconst_null
    //   109: areturn
    //   110: astore_0
    //   111: aload_0
    //   112: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   115: aconst_null
    //   116: areturn
    //   117: astore_0
    //   118: ldc -41
    //   120: ldc -39
    //   122: aload_0
    //   123: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   126: pop
    //   127: aconst_null
    //   128: areturn
    //   129: aload 5
    //   131: astore 4
    //   133: aload 6
    //   135: invokevirtual 227	java/net/URLConnection:getLastModified	()J
    //   138: lstore_2
    //   139: aload 5
    //   141: ifnull +76 -> 217
    //   144: aload 5
    //   146: astore 4
    //   148: new 229	com/estrongs/android/pop/app/messagebox/am
    //   151: dup
    //   152: aload 5
    //   154: invokespecial 232	com/estrongs/android/pop/app/messagebox/am:<init>	(Ljava/io/InputStream;)V
    //   157: invokestatic 238	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   160: astore 6
    //   162: aload 6
    //   164: ifnull +53 -> 217
    //   167: aload 5
    //   169: astore 4
    //   171: getstatic 20	com/estrongs/android/pop/app/messagebox/ai:a	Ljava/lang/String;
    //   174: aload 7
    //   176: aload 6
    //   178: lload_2
    //   179: invokestatic 241	com/estrongs/android/pop/app/messagebox/an:a	(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)Z
    //   182: pop
    //   183: aload 5
    //   185: ifnull +8 -> 193
    //   188: aload 5
    //   190: invokevirtual 210	java/io/InputStream:close	()V
    //   193: aload 6
    //   195: areturn
    //   196: astore_0
    //   197: aload_0
    //   198: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   201: goto -8 -> 193
    //   204: astore_0
    //   205: ldc -41
    //   207: ldc -39
    //   209: aload_0
    //   210: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   213: pop
    //   214: goto -21 -> 193
    //   217: aload 5
    //   219: ifnull -111 -> 108
    //   222: aload 5
    //   224: invokevirtual 210	java/io/InputStream:close	()V
    //   227: aconst_null
    //   228: areturn
    //   229: astore_0
    //   230: aload_0
    //   231: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   234: aconst_null
    //   235: areturn
    //   236: astore_0
    //   237: ldc -41
    //   239: ldc -39
    //   241: aload_0
    //   242: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   245: pop
    //   246: aconst_null
    //   247: areturn
    //   248: astore 6
    //   250: aconst_null
    //   251: astore 5
    //   253: aload 5
    //   255: astore 4
    //   257: ldc -41
    //   259: new 102	java/lang/StringBuilder
    //   262: dup
    //   263: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   266: ldc -13
    //   268: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: aload_0
    //   272: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: aload 6
    //   280: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   283: pop
    //   284: aload 5
    //   286: ifnull -178 -> 108
    //   289: aload 5
    //   291: invokevirtual 210	java/io/InputStream:close	()V
    //   294: aconst_null
    //   295: areturn
    //   296: astore_0
    //   297: aload_0
    //   298: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   301: aconst_null
    //   302: areturn
    //   303: astore_0
    //   304: ldc -41
    //   306: ldc -39
    //   308: aload_0
    //   309: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   312: pop
    //   313: aconst_null
    //   314: areturn
    //   315: astore_0
    //   316: aconst_null
    //   317: astore 5
    //   319: aload 5
    //   321: astore 4
    //   323: ldc -41
    //   325: ldc -11
    //   327: aload_0
    //   328: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   331: pop
    //   332: aload 5
    //   334: ifnull -226 -> 108
    //   337: aload 5
    //   339: invokevirtual 210	java/io/InputStream:close	()V
    //   342: aconst_null
    //   343: areturn
    //   344: astore_0
    //   345: aload_0
    //   346: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   349: aconst_null
    //   350: areturn
    //   351: astore_0
    //   352: ldc -41
    //   354: ldc -39
    //   356: aload_0
    //   357: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   360: pop
    //   361: aconst_null
    //   362: areturn
    //   363: astore_0
    //   364: aconst_null
    //   365: astore 5
    //   367: aload 5
    //   369: astore 4
    //   371: ldc -41
    //   373: ldc -9
    //   375: aload_0
    //   376: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   379: pop
    //   380: aload 5
    //   382: ifnull -274 -> 108
    //   385: aload 5
    //   387: invokevirtual 210	java/io/InputStream:close	()V
    //   390: aconst_null
    //   391: areturn
    //   392: astore_0
    //   393: aload_0
    //   394: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   397: aconst_null
    //   398: areturn
    //   399: astore_0
    //   400: ldc -41
    //   402: ldc -39
    //   404: aload_0
    //   405: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   408: pop
    //   409: aconst_null
    //   410: areturn
    //   411: astore_0
    //   412: aconst_null
    //   413: astore 4
    //   415: aload 4
    //   417: ifnull +8 -> 425
    //   420: aload 4
    //   422: invokevirtual 210	java/io/InputStream:close	()V
    //   425: aload_0
    //   426: athrow
    //   427: astore 4
    //   429: aload 4
    //   431: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   434: goto -9 -> 425
    //   437: astore 4
    //   439: ldc -41
    //   441: ldc -39
    //   443: aload 4
    //   445: invokestatic 223	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   448: pop
    //   449: goto -24 -> 425
    //   452: astore_0
    //   453: goto -38 -> 415
    //   456: astore_0
    //   457: goto -90 -> 367
    //   460: astore_0
    //   461: goto -142 -> 319
    //   464: astore 6
    //   466: goto -213 -> 253
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	469	0	paramString	String
    //   93	2	1	bool	boolean
    //   138	41	2	l	long
    //   56	365	4	localInputStream1	java.io.InputStream
    //   427	3	4	localIOException	java.io.IOException
    //   437	7	4	localNumberFormatException	NumberFormatException
    //   52	334	5	localInputStream2	java.io.InputStream
    //   24	170	6	localObject	Object
    //   248	31	6	localMalformedURLException1	java.net.MalformedURLException
    //   464	1	6	localMalformedURLException2	java.net.MalformedURLException
    //   62	113	7	str	String
    // Exception table:
    //   from	to	target	type
    //   103	108	110	java/io/IOException
    //   103	108	117	java/lang/NumberFormatException
    //   188	193	196	java/io/IOException
    //   188	193	204	java/lang/NumberFormatException
    //   222	227	229	java/io/IOException
    //   222	227	236	java/lang/NumberFormatException
    //   13	54	248	java/net/MalformedURLException
    //   289	294	296	java/io/IOException
    //   289	294	303	java/lang/NumberFormatException
    //   13	54	315	java/io/IOException
    //   337	342	344	java/io/IOException
    //   337	342	351	java/lang/NumberFormatException
    //   13	54	363	java/lang/SecurityException
    //   385	390	392	java/io/IOException
    //   385	390	399	java/lang/NumberFormatException
    //   13	54	411	finally
    //   420	425	427	java/io/IOException
    //   420	425	437	java/lang/NumberFormatException
    //   58	64	452	finally
    //   68	76	452	finally
    //   80	94	452	finally
    //   133	139	452	finally
    //   148	162	452	finally
    //   171	183	452	finally
    //   257	284	452	finally
    //   323	332	452	finally
    //   371	380	452	finally
    //   58	64	456	java/lang/SecurityException
    //   68	76	456	java/lang/SecurityException
    //   80	94	456	java/lang/SecurityException
    //   133	139	456	java/lang/SecurityException
    //   148	162	456	java/lang/SecurityException
    //   171	183	456	java/lang/SecurityException
    //   58	64	460	java/io/IOException
    //   68	76	460	java/io/IOException
    //   80	94	460	java/io/IOException
    //   133	139	460	java/io/IOException
    //   148	162	460	java/io/IOException
    //   171	183	460	java/io/IOException
    //   58	64	464	java/net/MalformedURLException
    //   68	76	464	java/net/MalformedURLException
    //   80	94	464	java/net/MalformedURLException
    //   133	139	464	java/net/MalformedURLException
    //   148	162	464	java/net/MalformedURLException
    //   171	183	464	java/net/MalformedURLException
  }
  
  private static Bitmap f(String paramString)
  {
    synchronized (b)
    {
      Bitmap localBitmap = (Bitmap)b.get(paramString);
      if (localBitmap != null)
      {
        b.remove(paramString);
        b.put(paramString, localBitmap);
        return localBitmap;
      }
      return null;
    }
  }
  
  private static String g(String paramString)
  {
    return Pattern.compile("[^a-zA-Z0-9]").matcher(paramString).replaceAll("").trim();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */