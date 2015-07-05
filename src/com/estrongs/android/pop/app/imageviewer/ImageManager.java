package com.estrongs.android.pop.app.imageviewer;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import com.estrongs.android.pop.app.imageviewer.gallery.f;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.m;
import java.io.File;
import java.io.IOException;

public class ImageManager
{
  public static final String a = b.b() + "/DCIM/Camera";
  public static final String b = a(a);
  private static final Uri c = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
  private static final Uri d = MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI;
  private static final Uri e = Uri.parse("content://media/external/video/media");
  
  /* Error */
  public static Uri a(ContentResolver paramContentResolver, String paramString1, long paramLong, android.location.Location paramLocation, String paramString2, String paramString3, android.graphics.Bitmap paramBitmap, byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    // Byte code:
    //   0: new 37	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   7: aload 5
    //   9: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   12: ldc 69
    //   14: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: aload 6
    //   19: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: astore 11
    //   27: new 71	java/io/File
    //   30: dup
    //   31: aload 5
    //   33: invokespecial 74	java/io/File:<init>	(Ljava/lang/String;)V
    //   36: astore 10
    //   38: aload 10
    //   40: invokevirtual 78	java/io/File:exists	()Z
    //   43: ifne +9 -> 52
    //   46: aload 10
    //   48: invokevirtual 81	java/io/File:mkdirs	()Z
    //   51: pop
    //   52: new 83	java/io/FileOutputStream
    //   55: dup
    //   56: new 71	java/io/File
    //   59: dup
    //   60: aload 5
    //   62: aload 6
    //   64: invokespecial 86	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: invokespecial 89	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   70: astore 10
    //   72: aload 7
    //   74: ifnull +146 -> 220
    //   77: aload 10
    //   79: astore 5
    //   81: aload 7
    //   83: getstatic 95	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   86: bipush 75
    //   88: aload 10
    //   90: invokevirtual 101	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   93: pop
    //   94: aload 9
    //   96: iconst_0
    //   97: iconst_0
    //   98: iastore
    //   99: aload 10
    //   101: invokestatic 106	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   104: new 108	android/content/ContentValues
    //   107: dup
    //   108: bipush 7
    //   110: invokespecial 111	android/content/ContentValues:<init>	(I)V
    //   113: astore 5
    //   115: aload 5
    //   117: ldc 113
    //   119: aload_1
    //   120: invokevirtual 116	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   123: aload 5
    //   125: ldc 118
    //   127: aload 6
    //   129: invokevirtual 116	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   132: aload 5
    //   134: ldc 120
    //   136: lload_2
    //   137: invokestatic 126	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   140: invokevirtual 129	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   143: aload 5
    //   145: ldc -125
    //   147: ldc -123
    //   149: invokevirtual 116	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   152: aload 5
    //   154: ldc -121
    //   156: aload 9
    //   158: iconst_0
    //   159: iaload
    //   160: invokestatic 140	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   163: invokevirtual 143	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   166: aload 5
    //   168: ldc -111
    //   170: aload 11
    //   172: invokevirtual 116	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   175: aload 4
    //   177: ifnull +33 -> 210
    //   180: aload 5
    //   182: ldc -109
    //   184: aload 4
    //   186: invokevirtual 153	android/location/Location:getLatitude	()D
    //   189: invokestatic 158	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   192: invokevirtual 161	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Double;)V
    //   195: aload 5
    //   197: ldc -93
    //   199: aload 4
    //   201: invokevirtual 166	android/location/Location:getLongitude	()D
    //   204: invokestatic 158	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   207: invokevirtual 161	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Double;)V
    //   210: aload_0
    //   211: getstatic 20	com/estrongs/android/pop/app/imageviewer/ImageManager:c	Landroid/net/Uri;
    //   214: aload 5
    //   216: invokevirtual 172	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   219: areturn
    //   220: aload 10
    //   222: astore 5
    //   224: aload 10
    //   226: aload 8
    //   228: invokevirtual 178	java/io/OutputStream:write	([B)V
    //   231: aload 10
    //   233: astore 5
    //   235: aload 9
    //   237: iconst_0
    //   238: aload 11
    //   240: invokestatic 181	com/estrongs/android/pop/app/imageviewer/ImageManager:c	(Ljava/lang/String;)I
    //   243: iastore
    //   244: goto -145 -> 99
    //   247: astore_0
    //   248: aload 10
    //   250: astore 5
    //   252: ldc -73
    //   254: aload_0
    //   255: invokestatic 189	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   258: pop
    //   259: aload 10
    //   261: invokestatic 106	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   264: aconst_null
    //   265: areturn
    //   266: astore_0
    //   267: aconst_null
    //   268: astore 10
    //   270: aload 10
    //   272: astore 5
    //   274: ldc -73
    //   276: aload_0
    //   277: invokestatic 189	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   280: pop
    //   281: aload 10
    //   283: invokestatic 106	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   286: aconst_null
    //   287: areturn
    //   288: astore_0
    //   289: aconst_null
    //   290: astore 5
    //   292: aload 5
    //   294: invokestatic 106	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   297: aload_0
    //   298: athrow
    //   299: astore_0
    //   300: goto -8 -> 292
    //   303: astore_0
    //   304: goto -34 -> 270
    //   307: astore_0
    //   308: aconst_null
    //   309: astore 10
    //   311: goto -63 -> 248
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	314	0	paramContentResolver	ContentResolver
    //   0	314	1	paramString1	String
    //   0	314	2	paramLong	long
    //   0	314	4	paramLocation	android.location.Location
    //   0	314	5	paramString2	String
    //   0	314	6	paramString3	String
    //   0	314	7	paramBitmap	android.graphics.Bitmap
    //   0	314	8	paramArrayOfByte	byte[]
    //   0	314	9	paramArrayOfInt	int[]
    //   36	274	10	localObject	Object
    //   25	214	11	str	String
    // Exception table:
    //   from	to	target	type
    //   81	94	247	java/io/FileNotFoundException
    //   224	231	247	java/io/FileNotFoundException
    //   235	244	247	java/io/FileNotFoundException
    //   27	52	266	java/io/IOException
    //   52	72	266	java/io/IOException
    //   27	52	288	finally
    //   52	72	288	finally
    //   81	94	299	finally
    //   224	231	299	finally
    //   235	244	299	finally
    //   252	259	299	finally
    //   274	281	299	finally
    //   81	94	303	java/io/IOException
    //   224	231	303	java/io/IOException
    //   235	244	303	java/io/IOException
    //   27	52	307	java/io/FileNotFoundException
    //   52	72	307	java/io/FileNotFoundException
  }
  
  public static f a(ContentResolver paramContentResolver, Uri paramUri, int paramInt)
  {
    if (paramUri != null) {}
    for (String str = paramUri.toString(); str.startsWith("content://"); str = "") {
      return new com.estrongs.android.pop.app.imageviewer.gallery.a(paramContentResolver, paramUri, paramInt);
    }
    if (d(str)) {
      return new com.estrongs.android.pop.app.imageviewer.gallery.i(paramContentResolver, paramUri);
    }
    return new z();
  }
  
  public static f a(com.estrongs.fs.d paramd, String paramString1, String paramString2, com.estrongs.fs.i parami, com.estrongs.fs.util.a.a parama, m paramm)
  {
    return new com.estrongs.android.pop.app.imageviewer.gallery.d(paramd, paramString1, paramString2, parami, parama, paramm);
  }
  
  public static String a(String paramString)
  {
    return String.valueOf(paramString.toLowerCase().hashCode());
  }
  
  public static boolean a()
  {
    return a(true);
  }
  
  public static boolean a(e parame)
  {
    return b(parame.k());
  }
  
  public static boolean a(boolean paramBoolean)
  {
    boolean bool = true;
    String str = Environment.getExternalStorageState();
    if ("mounted".equals(str)) {
      if (paramBoolean) {
        bool = b();
      }
    }
    while ((!paramBoolean) && ("mounted_ro".equals(str))) {
      return bool;
    }
    return false;
  }
  
  private static boolean b()
  {
    Object localObject = b.b() + "/DCIM";
    File localFile = new File((String)localObject);
    if ((!localFile.isDirectory()) && (!localFile.mkdirs())) {}
    for (;;)
    {
      return false;
      localObject = new File((String)localObject, ".probe");
      try
      {
        if (((File)localObject).exists()) {
          ((File)localObject).delete();
        }
        if (((File)localObject).createNewFile())
        {
          ((File)localObject).delete();
          return true;
        }
      }
      catch (IOException localIOException) {}
    }
    return false;
  }
  
  public static boolean b(String paramString)
  {
    return paramString.startsWith("image/");
  }
  
  public static int c(String paramString)
  {
    return 0;
  }
  
  static boolean d(String paramString)
  {
    return (!paramString.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString())) && (!paramString.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString()));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ImageManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */