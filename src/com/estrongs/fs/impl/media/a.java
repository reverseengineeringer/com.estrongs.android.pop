package com.estrongs.fs.impl.media;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

public class a
{
  private static Set<String> a = new HashSet();
  private static Set<String> b = new HashSet();
  private static Set<String> c = new HashSet();
  private static Set<String> d = new HashSet();
  private static Class e;
  private static Method f;
  private static Method g;
  private static Class h;
  private static Field i;
  private static Method j;
  private static Method k;
  private static Method l;
  
  private static Boolean a(Integer paramInteger)
  {
    if (j == null) {
      j = e.getMethod("isImageFileType", new Class[] { Integer.TYPE });
    }
    return (Boolean)j.invoke(null, new Object[] { paramInteger });
  }
  
  public static boolean a(String paramString)
  {
    int m = paramString.lastIndexOf(".");
    if (m < 0) {}
    for (;;)
    {
      return false;
      String str = paramString.substring(m + 1).toLowerCase();
      if (a.contains(str)) {
        return true;
      }
      if (d.contains(str)) {
        continue;
      }
      try
      {
        paramString = e(paramString);
        if (paramString == null) {
          continue;
        }
        Boolean localBoolean = a(paramString);
        if (localBoolean.booleanValue()) {
          a.add(str);
        }
        for (;;)
        {
          return localBoolean.booleanValue();
          if (b(paramString).booleanValue()) {
            b.add(str);
          } else if (c(paramString).booleanValue()) {
            c.add(str);
          } else {
            d.add(str);
          }
        }
        return false;
      }
      catch (Exception paramString) {}
    }
  }
  
  private static Boolean b(Integer paramInteger)
  {
    if (k == null) {
      k = e.getMethod("isAudioFileType", new Class[] { Integer.TYPE });
    }
    return (Boolean)k.invoke(null, new Object[] { paramInteger });
  }
  
  public static boolean b(String paramString)
  {
    int m = paramString.lastIndexOf(".");
    if (m < 0) {}
    for (;;)
    {
      return false;
      String str = paramString.substring(m + 1).toLowerCase();
      if (b.contains(str)) {
        return true;
      }
      if (d.contains(str)) {
        continue;
      }
      try
      {
        paramString = e(paramString);
        if (paramString == null) {
          continue;
        }
        Boolean localBoolean = b(paramString);
        if (localBoolean.booleanValue()) {
          b.add(str);
        }
        for (;;)
        {
          return localBoolean.booleanValue();
          if (c(paramString).booleanValue()) {
            c.add(str);
          } else if (a(paramString).booleanValue()) {
            a.add(str);
          } else {
            d.add(str);
          }
        }
        return false;
      }
      catch (Exception paramString) {}
    }
  }
  
  private static Boolean c(Integer paramInteger)
  {
    if (l == null) {
      l = e.getMethod("isVideoFileType", new Class[] { Integer.TYPE });
    }
    return (Boolean)l.invoke(null, new Object[] { paramInteger });
  }
  
  public static boolean c(String paramString)
  {
    int m = paramString.lastIndexOf(".");
    if (m < 0) {}
    for (;;)
    {
      return false;
      String str = paramString.substring(m + 1).toLowerCase();
      if (c.contains(str)) {
        return true;
      }
      if (d.contains(str)) {
        continue;
      }
      try
      {
        paramString = e(paramString);
        if (paramString == null) {
          continue;
        }
        Boolean localBoolean = c(paramString);
        if (localBoolean.booleanValue()) {
          c.add(str);
        }
        for (;;)
        {
          return localBoolean.booleanValue();
          if (b(paramString).booleanValue()) {
            b.add(str);
          } else if (a(paramString).booleanValue()) {
            a.add(str);
          } else {
            d.add(str);
          }
        }
        return false;
      }
      catch (Exception paramString) {}
    }
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  public static boolean d(String paramString)
  {
    // Byte code:
    //   0: new 119	android/media/MediaMetadataRetriever
    //   3: dup
    //   4: invokespecial 120	android/media/MediaMetadataRetriever:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: aload_0
    //   10: invokevirtual 124	android/media/MediaMetadataRetriever:setDataSource	(Ljava/lang/String;)V
    //   13: aload_2
    //   14: bipush 12
    //   16: invokevirtual 127	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   19: astore_0
    //   20: aload_0
    //   21: ifnonnull +9 -> 30
    //   24: aload_2
    //   25: invokevirtual 130	android/media/MediaMetadataRetriever:release	()V
    //   28: iconst_0
    //   29: ireturn
    //   30: aload_0
    //   31: invokestatic 132	com/estrongs/fs/impl/media/a:f	(Ljava/lang/String;)Ljava/lang/Integer;
    //   34: invokestatic 102	com/estrongs/fs/impl/media/a:b	(Ljava/lang/Integer;)Ljava/lang/Boolean;
    //   37: invokevirtual 97	java/lang/Boolean:booleanValue	()Z
    //   40: istore_1
    //   41: aload_2
    //   42: invokevirtual 130	android/media/MediaMetadataRetriever:release	()V
    //   45: iload_1
    //   46: ireturn
    //   47: astore_0
    //   48: iload_1
    //   49: ireturn
    //   50: astore_0
    //   51: aload_2
    //   52: invokevirtual 130	android/media/MediaMetadataRetriever:release	()V
    //   55: iconst_0
    //   56: ireturn
    //   57: astore_0
    //   58: iconst_0
    //   59: ireturn
    //   60: astore_0
    //   61: aload_2
    //   62: invokevirtual 130	android/media/MediaMetadataRetriever:release	()V
    //   65: aload_0
    //   66: athrow
    //   67: astore_0
    //   68: iconst_0
    //   69: ireturn
    //   70: astore_2
    //   71: goto -6 -> 65
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	paramString	String
    //   40	9	1	bool	boolean
    //   7	55	2	localMediaMetadataRetriever	android.media.MediaMetadataRetriever
    //   70	1	2	localRuntimeException	RuntimeException
    // Exception table:
    //   from	to	target	type
    //   41	45	47	java/lang/RuntimeException
    //   8	20	50	java/lang/Exception
    //   30	41	50	java/lang/Exception
    //   51	55	57	java/lang/RuntimeException
    //   8	20	60	finally
    //   30	41	60	finally
    //   24	28	67	java/lang/RuntimeException
    //   61	65	70	java/lang/RuntimeException
  }
  
  private static Integer e(String paramString)
  {
    if (e == null) {
      e = Class.forName("android.media.MediaFile");
    }
    if (f == null) {
      f = e.getMethod("getFileType", new Class[] { String.class });
    }
    paramString = f.invoke(null, new Object[] { paramString });
    if (paramString == null) {
      return null;
    }
    if (h == null) {
      h = Class.forName("android.media.MediaFile$MediaFileType");
    }
    if (i == null)
    {
      i = h.getDeclaredField("fileType");
      i.setAccessible(true);
    }
    return (Integer)i.get(paramString);
  }
  
  private static Integer f(String paramString)
  {
    if (e == null) {
      e = Class.forName("android.media.MediaFile");
    }
    if (g == null) {
      g = e.getMethod("getFileTypeForMimeType", new Class[] { String.class });
    }
    return (Integer)g.invoke(null, new Object[] { paramString });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.media.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */