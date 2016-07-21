package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLConnection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ab
{
  private static final String b = ab.class.getSimpleName();
  aa a;
  private long c;
  private long d;
  private ab.a e = ab.a.a;
  private ao<String> f = null;
  
  private ag a(ag paramag, al paramal)
  {
    ag localag;
    if (paramag == null) {
      localag = ag.a;
    }
    label150:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return localag;
                  localag = paramag;
                } while (paramal == null);
                if (al.g.equals(paramal)) {
                  return ag.f;
                }
                if (!al.f.equals(paramal)) {
                  break;
                }
                localag = paramag;
              } while (paramag.equals(ag.f));
              return ag.e;
              if ((!al.a.equals(paramal)) && (!al.e.equals(paramal))) {
                break;
              }
              localag = paramag;
            } while (paramag.equals(ag.f));
            localag = paramag;
          } while (paramag.equals(ag.e));
          return ag.c;
          if ((!al.b.equals(paramal)) && (!al.c.equals(paramal))) {
            break label150;
          }
          if (ag.a.equals(paramag)) {
            break;
          }
          localag = paramag;
        } while (!ag.d.equals(paramag));
        return ag.b;
        localag = paramag;
      } while (!al.d.equals(paramal));
      localag = paramag;
    } while (!ag.a.equals(paramag));
    return ag.d;
  }
  
  private void a(ac.a parama)
  {
    try
    {
      ac localac = new ac();
      a = parama;
      kc.a().a(localac);
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  private boolean a(String paramString, long paramLong)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    as localas = as.a;
    Object localObject = Uri.parse(paramString).getPath();
    String str;
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      str = URLConnection.guessContentTypeFromName((String)localObject);
      kg.a(3, b, "Precaching: assetLink: " + paramString + " urlPath: " + (String)localObject + " mimeType: " + str);
      localObject = localas;
      if (str != null)
      {
        if (!str.startsWith("video")) {
          break label146;
        }
        kg.a(3, b, "Precaching: asset is a video: " + paramString);
        localObject = as.b;
      }
    }
    for (;;)
    {
      return a.a(paramString, (as)localObject, paramLong);
      label146:
      if (str.startsWith("image"))
      {
        kg.a(3, b, "Precaching: asset is an image: " + paramString);
        localObject = as.c;
      }
      else if (str.startsWith("text"))
      {
        kg.a(3, b, "Precaching: asset is text: " + paramString);
        localObject = as.d;
      }
      else
      {
        kg.a(5, b, "Precaching: could not identify media type for asset: " + paramString);
        localObject = localas;
        continue;
        kg.a(5, b, "Precaching: could not identify urlPath for asset: " + paramString);
        localObject = localas;
      }
    }
  }
  
  private void c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    if (f.size() > 2)
    {
      String str = (String)f.get(0);
      if (!TextUtils.isEmpty(str)) {
        d(str);
      }
    }
    f.add(paramString);
    kg.a(3, b, "AdCacheNative: queue " + f);
  }
  
  private boolean c(s params, String paramString)
  {
    int j = 0;
    if (!b()) {}
    do
    {
      do
      {
        return false;
      } while (TextUtils.isEmpty(paramString));
      kg.a(3, b, "Precaching: Saving local asset for adObject:" + params.e());
    } while (!al.d.equals(a.b(paramString)));
    int i = j;
    if (!TextUtils.isEmpty(paramString)) {}
    try
    {
      String str = Uri.parse(paramString).getPath();
      i = j;
      if (!TextUtils.isEmpty(str))
      {
        str = URLConnection.guessContentTypeFromName(str);
        i = j;
        if (str != null)
        {
          boolean bool = str.startsWith("video");
          i = j;
          if (bool) {
            i = 1;
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        kg.a(3, b, "Error while getting mime type");
        i = j;
      }
    }
    if (((params instanceof x)) && (i != 0)) {
      return true;
    }
    return d(params, paramString);
  }
  
  private void d(au paramau)
  {
    if (!b()) {}
    for (;;)
    {
      return;
      if (paramau != null)
      {
        List localList = ad;
        int i = 0;
        while (i < localList.size())
        {
          Iterator localIterator = paramau.f(i).iterator();
          while (localIterator.hasNext()) {
            e((String)localIterator.next());
          }
          i += 1;
        }
      }
    }
  }
  
  private void d(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      kg.a(3, b, "AdCacheNative: Delete file " + paramString);
      paramString = new File(paramString);
      if ((paramString != null) && (paramString.exists()))
      {
        boolean bool = paramString.delete();
        kg.a(3, b, "AdCacheNative: File exists. Deleting it." + bool);
      }
    }
  }
  
  /* Error */
  private boolean d(s params, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_1
    //   4: ifnull +10 -> 14
    //   7: aload_2
    //   8: invokestatic 99	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   11: ifeq +9 -> 20
    //   14: iconst_0
    //   15: istore 4
    //   17: iload 4
    //   19: ireturn
    //   20: iconst_3
    //   21: getstatic 26	com/flurry/sdk/ab:b	Ljava/lang/String;
    //   24: new 121	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   31: ldc_w 273
    //   34: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_1
    //   38: invokeinterface 208 1 0
    //   43: invokevirtual 211	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   46: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: invokestatic 140	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   52: new 256	java/io/File
    //   55: dup
    //   56: ldc_w 275
    //   59: aload_1
    //   60: invokeinterface 208 1 0
    //   65: invokestatic 280	com/flurry/sdk/ff:a	(Ljava/lang/String;I)Ljava/io/File;
    //   68: aload_0
    //   69: aload_2
    //   70: invokespecial 282	com/flurry/sdk/ab:f	(Ljava/lang/String;)Ljava/lang/String;
    //   73: invokespecial 285	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   76: astore 8
    //   78: aload 8
    //   80: invokevirtual 261	java/io/File:exists	()Z
    //   83: istore_3
    //   84: iload_3
    //   85: ifeq +31 -> 116
    //   88: aconst_null
    //   89: astore_1
    //   90: aload 5
    //   92: invokestatic 290	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   95: aload_1
    //   96: invokestatic 290	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   99: iconst_1
    //   100: istore_3
    //   101: iload_3
    //   102: istore 4
    //   104: iload_3
    //   105: ifne -88 -> 17
    //   108: aload 8
    //   110: invokevirtual 264	java/io/File:delete	()Z
    //   113: pop
    //   114: iload_3
    //   115: ireturn
    //   116: aload 8
    //   118: invokestatic 295	com/flurry/sdk/ls:a	(Ljava/io/File;)Z
    //   121: ifne +100 -> 221
    //   124: new 271	java/io/IOException
    //   127: dup
    //   128: new 121	java/lang/StringBuilder
    //   131: dup
    //   132: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   135: ldc_w 297
    //   138: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload 8
    //   143: invokevirtual 300	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   146: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: invokespecial 301	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   155: athrow
    //   156: astore 6
    //   158: aconst_null
    //   159: astore 5
    //   161: aconst_null
    //   162: astore_1
    //   163: bipush 6
    //   165: getstatic 26	com/flurry/sdk/ab:b	Ljava/lang/String;
    //   168: new 121	java/lang/StringBuilder
    //   171: dup
    //   172: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   175: ldc_w 303
    //   178: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: aload_2
    //   182: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: ldc_w 305
    //   188: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: aload 6
    //   193: invokevirtual 308	java/io/IOException:getMessage	()Ljava/lang/String;
    //   196: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: aload 6
    //   204: invokestatic 311	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   207: aload_1
    //   208: invokestatic 290	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   211: aload 5
    //   213: invokestatic 290	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   216: iconst_0
    //   217: istore_3
    //   218: goto -117 -> 101
    //   221: new 313	java/io/FileOutputStream
    //   224: dup
    //   225: aload 8
    //   227: invokespecial 316	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   230: astore_1
    //   231: aload_0
    //   232: getfield 154	com/flurry/sdk/ab:a	Lcom/flurry/sdk/aa;
    //   235: aload_2
    //   236: invokevirtual 319	com/flurry/sdk/aa:c	(Ljava/lang/String;)Lcom/flurry/sdk/aq$b;
    //   239: astore 5
    //   241: aload 5
    //   243: ifnull +57 -> 300
    //   246: aload 5
    //   248: invokevirtual 324	com/flurry/sdk/aq$b:a	()Ljava/io/InputStream;
    //   251: aload_1
    //   252: invokestatic 327	com/flurry/sdk/lt:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    //   255: pop2
    //   256: iconst_3
    //   257: getstatic 26	com/flurry/sdk/ab:b	Ljava/lang/String;
    //   260: new 121	java/lang/StringBuilder
    //   263: dup
    //   264: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   267: ldc_w 329
    //   270: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: aload_2
    //   274: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: ldc_w 331
    //   280: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: aload 8
    //   285: invokevirtual 300	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   288: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: invokestatic 140	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   297: goto -207 -> 90
    //   300: iconst_3
    //   301: getstatic 26	com/flurry/sdk/ab:b	Ljava/lang/String;
    //   304: new 121	java/lang/StringBuilder
    //   307: dup
    //   308: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   311: ldc_w 333
    //   314: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: aload_2
    //   318: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   324: invokestatic 140	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   327: goto -237 -> 90
    //   330: astore 6
    //   332: aload 5
    //   334: astore_2
    //   335: aload_1
    //   336: astore 5
    //   338: aload_2
    //   339: astore_1
    //   340: aload 6
    //   342: astore_2
    //   343: aload_1
    //   344: invokestatic 290	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   347: aload 5
    //   349: invokestatic 290	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   352: aload_2
    //   353: athrow
    //   354: astore_2
    //   355: aconst_null
    //   356: astore 5
    //   358: aconst_null
    //   359: astore_1
    //   360: goto -17 -> 343
    //   363: astore_2
    //   364: aload_1
    //   365: astore 5
    //   367: aconst_null
    //   368: astore_1
    //   369: goto -26 -> 343
    //   372: astore_2
    //   373: goto -30 -> 343
    //   376: astore 6
    //   378: aload_1
    //   379: astore 5
    //   381: aconst_null
    //   382: astore_1
    //   383: goto -220 -> 163
    //   386: astore 6
    //   388: aload_1
    //   389: astore 7
    //   391: aload 5
    //   393: astore_1
    //   394: aload 7
    //   396: astore 5
    //   398: goto -235 -> 163
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	401	0	this	ab
    //   0	401	1	params	s
    //   0	401	2	paramString	String
    //   83	135	3	bool1	boolean
    //   15	88	4	bool2	boolean
    //   1	396	5	localObject1	Object
    //   156	47	6	localIOException1	IOException
    //   330	11	6	localObject2	Object
    //   376	1	6	localIOException2	IOException
    //   386	1	6	localIOException3	IOException
    //   389	6	7	locals	s
    //   76	208	8	localFile	File
    // Exception table:
    //   from	to	target	type
    //   78	84	156	java/io/IOException
    //   116	156	156	java/io/IOException
    //   221	231	156	java/io/IOException
    //   246	297	330	finally
    //   300	327	330	finally
    //   78	84	354	finally
    //   116	156	354	finally
    //   221	231	354	finally
    //   231	241	363	finally
    //   163	207	372	finally
    //   231	241	376	java/io/IOException
    //   246	297	386	java/io/IOException
    //   300	327	386	java/io/IOException
  }
  
  private void e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    a.b(paramString);
  }
  
  private String f(String paramString)
  {
    return ff.c(paramString);
  }
  
  private void j()
  {
    try
    {
      File localFile = ff.b("fileStreamCacheDownloaderTmp");
      kg.a(3, b, "Precaching: Cleaning temp asset directory: " + localFile);
      ls.b(localFile);
      return;
    }
    catch (Exception localException)
    {
      kg.a(6, b, "Precaching: Error cleaning temp asset directory: " + localException.getMessage(), localException);
    }
  }
  
  public ag a(au paramau)
  {
    ag localag;
    if (!b()) {
      localag = ag.f;
    }
    int i;
    do
    {
      return localag;
      if (paramau == null) {
        return ag.f;
      }
      if (paramau.a() == null) {
        return ag.d;
      }
      localag = ag.a;
      List localList = ad;
      i = 0;
      int j = 0;
      while (j < localList.size())
      {
        Iterator localIterator = paramau.f(j).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localag = a(localag, a.b(str));
          i = 1;
        }
        j += 1;
      }
    } while (i != 0);
    return ag.d;
  }
  
  public File a(int paramInt, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      paramString = new File(ff.a("fileStreamCacheDownloaderTmp", paramInt), f(paramString));
    } while (!paramString.exists());
    return paramString;
  }
  
  public File a(x paramx, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    int i;
    Object localObject;
    do
    {
      do
      {
        do
        {
          return null;
        } while (paramx == null);
        i = paramx.e();
        if (i <= 0)
        {
          kg.a(3, b, "AdCacheNative: Invalid ad Id: " + i);
          return null;
        }
        localObject = paramx.l();
      } while ((localObject != null) && (((au)localObject).a() != null) && (ah.a(jg).equals(ah.a)));
      localObject = new File(ff.a("fileStreamCacheDownloaderTmp", i), f(paramString));
      if (((File)localObject).exists())
      {
        f.add(((File)localObject).getAbsolutePath());
        kg.a(3, b, "AdCacheNative: queue " + f);
        return (File)localObject;
      }
      if (!d(paramx, paramString)) {
        break;
      }
    } while (!((File)localObject).exists());
    c(((File)localObject).getAbsolutePath());
    kg.a(3, b, "AdCacheNative: temp folder created.");
    return (File)localObject;
    kg.a(3, b, "AdCacheNative: Could not create temp folder for " + i);
    return null;
  }
  
  /* Error */
  public void a(long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 384	com/flurry/sdk/ab:a	()Z
    //   6: istore 5
    //   8: iload 5
    //   10: ifeq +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: iconst_3
    //   17: getstatic 26	com/flurry/sdk/ab:b	Ljava/lang/String;
    //   20: ldc_w 386
    //   23: invokestatic 140	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   26: aload_0
    //   27: lload_1
    //   28: putfield 388	com/flurry/sdk/ab:c	J
    //   31: aload_0
    //   32: lload_3
    //   33: putfield 390	com/flurry/sdk/ab:d	J
    //   36: aload_0
    //   37: invokespecial 392	com/flurry/sdk/ab:j	()V
    //   40: aload_0
    //   41: getstatic 394	com/flurry/sdk/ab$a:b	Lcom/flurry/sdk/ab$a;
    //   44: putfield 36	com/flurry/sdk/ab:e	Lcom/flurry/sdk/ab$a;
    //   47: aload_0
    //   48: getstatic 397	com/flurry/sdk/ac$a:a	Lcom/flurry/sdk/ac$a;
    //   51: invokespecial 399	com/flurry/sdk/ab:a	(Lcom/flurry/sdk/ac$a;)V
    //   54: aload_0
    //   55: new 178	com/flurry/sdk/ao
    //   58: dup
    //   59: iconst_2
    //   60: invokespecial 402	com/flurry/sdk/ao:<init>	(I)V
    //   63: putfield 38	com/flurry/sdk/ab:f	Lcom/flurry/sdk/ao;
    //   66: goto -53 -> 13
    //   69: astore 6
    //   71: aload_0
    //   72: monitorexit
    //   73: aload 6
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	ab
    //   0	76	1	paramLong1	long
    //   0	76	3	paramLong2	long
    //   6	3	5	bool	boolean
    //   69	5	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	8	69	finally
    //   16	66	69	finally
  }
  
  public void a(af paramaf)
  {
    if (!a()) {}
    while ((paramaf == null) || (al.b.equals(paramaf.b())) || (al.c.equals(paramaf.b()))) {
      return;
    }
    a.a(paramaf);
  }
  
  public void a(s params)
  {
    if (params == null) {
      return;
    }
    try
    {
      File localFile = ff.a("fileStreamCacheDownloaderTmp", params.e());
      kg.a(3, b, "Precaching: Removing local assets for adObject:" + params.e());
      ls.b(localFile);
      return;
    }
    catch (Exception localException)
    {
      kg.a(6, b, "Precaching: Error removing local assets for adObject:" + params.e() + " " + localException.getMessage(), localException);
    }
  }
  
  public void a(s params, String paramString)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        return;
      } while (paramString.isEmpty());
      kg.a(3, b, "Video Cache: Removing local assets for adObject: " + params.e() + " filename: " + paramString);
      params = new File(ff.a("fileStreamCacheDownloaderTmp", params.e()).getPath(), paramString.substring(paramString.lastIndexOf("/") + 1, paramString.length()));
    } while ((!params.isFile()) || (!params.exists()));
    params.delete();
    kg.a(3, b, "Video Cache: found asset: " + params.exists());
  }
  
  public void a(String paramString)
  {
    if (!b()) {
      return;
    }
    a.a(paramString);
  }
  
  public void a(List<au> paramList)
  {
    if (!b()) {
      break label7;
    }
    label7:
    while (paramList == null) {
      return;
    }
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      d((au)paramList.get(i));
      i -= 1;
    }
    paramList = paramList.iterator();
    i = 0;
    label55:
    if (paramList.hasNext()) {
      if (b((au)paramList.next()) <= 0) {
        break label94;
      }
    }
    label94:
    for (int j = 1;; j = 0)
    {
      i = j + i;
      if (i >= 2) {
        break;
      }
      break label55;
      break label7;
    }
  }
  
  public boolean a()
  {
    return !ab.a.a.equals(e);
  }
  
  public boolean a(Bitmap paramBitmap, String paramString)
  {
    boolean bool2;
    if ((paramBitmap == null) || (TextUtils.isEmpty(paramString))) {
      bool2 = false;
    }
    File localFile;
    Object localObject1;
    do
    {
      return bool2;
      kg.a(3, b, "fAssetCache: Creating cache file for " + paramString);
      localFile = new File(ff.a("fileAssetCacheFolder"), paramString);
      localObject1 = null;
      try
      {
        bool1 = localFile.exists();
        if (!bool1) {
          break;
        }
        paramBitmap = (Bitmap)localObject1;
      }
      catch (IOException paramBitmap)
      {
        for (;;)
        {
          boolean bool1;
          Object localObject2 = null;
          localObject1 = localObject2;
          try
          {
            kg.a(6, b, "Precaching: Error saving cache file for filename:" + paramString + " " + paramBitmap.getMessage(), paramBitmap);
            lt.a((Closeable)localObject2);
            bool1 = false;
          }
          finally
          {
            for (;;) {}
          }
        }
        localObject2 = new FileOutputStream(localFile);
        localObject1 = localObject2;
      }
      finally
      {
        try
        {
          paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, (OutputStream)localObject2);
          paramBitmap = (Bitmap)localObject2;
        }
        catch (IOException paramBitmap) {}
        paramBitmap = finally;
        localObject1 = null;
        lt.a((Closeable)localObject1);
      }
      lt.a(paramBitmap);
      bool1 = true;
      bool2 = bool1;
    } while (bool1);
    localFile.delete();
    return bool1;
    if (!ls.a(localFile)) {
      throw new IOException("Precaching: Error creating directory to save cache file:" + localFile.getAbsolutePath());
    }
    for (;;) {}
  }
  
  public boolean a(au paramau, String paramString)
  {
    if ((paramau == null) || (TextUtils.isEmpty(paramString))) {}
    for (;;)
    {
      return false;
      List localList = ad;
      int i = 0;
      while (i < localList.size())
      {
        Iterator localIterator = paramau.f(i).iterator();
        while (localIterator.hasNext()) {
          if (((String)localIterator.next()).equals(paramString)) {
            return true;
          }
        }
        i += 1;
      }
    }
  }
  
  public boolean a(s params, au paramau)
  {
    if (!b()) {}
    while ((params == null) || (paramau == null)) {
      return false;
    }
    kg.a(3, b, "Precaching: Saving local assets for adObject:" + params.e());
    List localList = ad;
    int i = 0;
    while (i < localList.size())
    {
      Iterator localIterator = paramau.f(i).iterator();
      while (localIterator.hasNext()) {
        if (!c(params, (String)localIterator.next())) {
          return false;
        }
      }
      i += 1;
    }
    return true;
  }
  
  public int b(au paramau)
  {
    if (!b()) {}
    while (paramau == null) {
      return 0;
    }
    List localList = ad;
    int j = 0;
    int i = 0;
    while (j < localList.size())
    {
      cj localcj = (cj)localList.get(j);
      Iterator localIterator = paramau.f(j).iterator();
      while (localIterator.hasNext()) {
        if (a((String)localIterator.next(), h)) {
          i += 1;
        }
      }
      j += 1;
    }
    return i;
  }
  
  public File b(s params, String paramString)
  {
    if ((params == null) || (TextUtils.isEmpty(paramString))) {
      return null;
    }
    return a(params.e(), paramString);
  }
  
  public File b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      paramString = new File(ff.a("fileAssetCacheFolder"), paramString);
    } while (!paramString.exists());
    return paramString;
  }
  
  public void b(x paramx, String paramString)
  {
    paramx = new File(ff.a("fileStreamCacheDownloaderTmp", paramx.e()), f(paramString));
    if (paramx != null) {
      f.remove(paramx.getAbsolutePath());
    }
    if ((paramx != null) && (paramx.exists())) {
      d(paramx.getAbsolutePath());
    }
  }
  
  public boolean b()
  {
    return (ab.a.c.equals(e)) || (ab.a.d.equals(e));
  }
  
  public void c(au paramau)
  {
    if (!b()) {}
    for (;;)
    {
      return;
      if (paramau != null)
      {
        List localList = ad;
        int i = 0;
        while (i < localList.size())
        {
          cj localcj = (cj)localList.get(i);
          Iterator localIterator = paramau.f(i).iterator();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            if (a(str, h)) {
              a(str);
            }
          }
          i += 1;
        }
      }
    }
  }
  
  public boolean c()
  {
    return ab.a.d.equals(e);
  }
  
  public List<af> d()
  {
    if (!a()) {
      return null;
    }
    return a.d();
  }
  
  /* Error */
  public void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 384	com/flurry/sdk/ab:a	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 202	com/flurry/sdk/ab:b	()Z
    //   18: ifne -7 -> 11
    //   21: iconst_3
    //   22: getstatic 26	com/flurry/sdk/ab:b	Ljava/lang/String;
    //   25: ldc_w 509
    //   28: invokestatic 140	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   31: aload_0
    //   32: new 156	com/flurry/sdk/aa
    //   35: dup
    //   36: ldc_w 511
    //   39: aload_0
    //   40: getfield 388	com/flurry/sdk/ab:c	J
    //   43: aload_0
    //   44: getfield 390	com/flurry/sdk/ab:d	J
    //   47: iconst_0
    //   48: invokespecial 514	com/flurry/sdk/aa:<init>	(Ljava/lang/String;JJZ)V
    //   51: putfield 154	com/flurry/sdk/ab:a	Lcom/flurry/sdk/aa;
    //   54: aload_0
    //   55: getfield 154	com/flurry/sdk/ab:a	Lcom/flurry/sdk/aa;
    //   58: invokevirtual 516	com/flurry/sdk/aa:e	()V
    //   61: aload_0
    //   62: getstatic 500	com/flurry/sdk/ab$a:c	Lcom/flurry/sdk/ab$a;
    //   65: putfield 36	com/flurry/sdk/ab:e	Lcom/flurry/sdk/ab$a;
    //   68: aload_0
    //   69: getstatic 518	com/flurry/sdk/ac$a:b	Lcom/flurry/sdk/ac$a;
    //   72: invokespecial 399	com/flurry/sdk/ab:a	(Lcom/flurry/sdk/ac$a;)V
    //   75: goto -64 -> 11
    //   78: astore_2
    //   79: aload_0
    //   80: monitorexit
    //   81: aload_2
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	ab
    //   6	2	1	bool	boolean
    //   78	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	78	finally
    //   14	75	78	finally
  }
  
  /* Error */
  public void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 202	com/flurry/sdk/ab:b	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: iconst_3
    //   15: getstatic 26	com/flurry/sdk/ab:b	Ljava/lang/String;
    //   18: ldc_w 520
    //   21: invokestatic 140	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   24: aload_0
    //   25: getfield 154	com/flurry/sdk/ab:a	Lcom/flurry/sdk/aa;
    //   28: invokevirtual 522	com/flurry/sdk/aa:f	()V
    //   31: aload_0
    //   32: getstatic 394	com/flurry/sdk/ab$a:b	Lcom/flurry/sdk/ab$a;
    //   35: putfield 36	com/flurry/sdk/ab:e	Lcom/flurry/sdk/ab$a;
    //   38: aload_0
    //   39: getstatic 524	com/flurry/sdk/ac$a:c	Lcom/flurry/sdk/ac$a;
    //   42: invokespecial 399	com/flurry/sdk/ab:a	(Lcom/flurry/sdk/ac$a;)V
    //   45: goto -34 -> 11
    //   48: astore_2
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	ab
    //   6	2	1	bool	boolean
    //   48	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	48	finally
    //   14	45	48	finally
  }
  
  /* Error */
  public void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 202	com/flurry/sdk/ab:b	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 526	com/flurry/sdk/ab:c	()Z
    //   18: ifeq -7 -> 11
    //   21: iconst_3
    //   22: getstatic 26	com/flurry/sdk/ab:b	Ljava/lang/String;
    //   25: ldc_w 528
    //   28: invokestatic 140	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   31: aload_0
    //   32: getfield 154	com/flurry/sdk/ab:a	Lcom/flurry/sdk/aa;
    //   35: invokevirtual 530	com/flurry/sdk/aa:g	()V
    //   38: aload_0
    //   39: getstatic 500	com/flurry/sdk/ab$a:c	Lcom/flurry/sdk/ab$a;
    //   42: putfield 36	com/flurry/sdk/ab:e	Lcom/flurry/sdk/ab$a;
    //   45: aload_0
    //   46: getstatic 532	com/flurry/sdk/ac$a:e	Lcom/flurry/sdk/ac$a;
    //   49: invokespecial 399	com/flurry/sdk/ab:a	(Lcom/flurry/sdk/ac$a;)V
    //   52: goto -41 -> 11
    //   55: astore_2
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_2
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	ab
    //   6	2	1	bool	boolean
    //   55	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	55	finally
    //   14	52	55	finally
  }
  
  public void h()
  {
    if (!b()) {
      return;
    }
    a.h();
  }
  
  public List<af> i()
  {
    if (!b()) {
      return Collections.emptyList();
    }
    return a.k();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */