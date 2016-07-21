package com.estrongs.android.util;

import android.content.Context;
import android.content.res.Resources;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.HashMap;

public class g
{
  public static HashMap<String, Object> a = new HashMap();
  public static HashMap<String, String> b = new HashMap();
  public static String c = null;
  
  public static Class<?> a(Object paramObject, String paramString)
  {
    if (paramObject == null) {
      return Class.forName(paramString);
    }
    try
    {
      paramObject = ((ClassLoader)paramObject).loadClass(paramString);
      return (Class<?>)paramObject;
    }
    catch (Exception paramObject) {}
    return null;
  }
  
  /* Error */
  public static Object a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: getstatic 20	com/estrongs/android/util/g:a	Ljava/util/HashMap;
    //   3: astore_3
    //   4: aload_3
    //   5: monitorenter
    //   6: aload_1
    //   7: ifnonnull +7 -> 14
    //   10: aload_3
    //   11: monitorexit
    //   12: aconst_null
    //   13: areturn
    //   14: getstatic 20	com/estrongs/android/util/g:a	Ljava/util/HashMap;
    //   17: aload_1
    //   18: invokevirtual 47	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   21: astore 4
    //   23: aload 4
    //   25: ifnull +13 -> 38
    //   28: aload_3
    //   29: monitorexit
    //   30: aload 4
    //   32: areturn
    //   33: astore_0
    //   34: aload_3
    //   35: monitorexit
    //   36: aload_0
    //   37: athrow
    //   38: getstatic 22	com/estrongs/android/util/g:b	Ljava/util/HashMap;
    //   41: aload_1
    //   42: invokevirtual 47	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   45: checkcast 49	java/lang/String
    //   48: astore 4
    //   50: aload 4
    //   52: ifnonnull +7 -> 59
    //   55: aload_3
    //   56: monitorexit
    //   57: aconst_null
    //   58: areturn
    //   59: new 51	java/io/File
    //   62: dup
    //   63: aload 4
    //   65: invokespecial 54	java/io/File:<init>	(Ljava/lang/String;)V
    //   68: invokevirtual 58	java/io/File:exists	()Z
    //   71: ifne +15 -> 86
    //   74: aload_0
    //   75: aload_1
    //   76: invokestatic 61	com/estrongs/android/util/g:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   79: ifne +7 -> 86
    //   82: aload_3
    //   83: monitorexit
    //   84: aconst_null
    //   85: areturn
    //   86: aload_2
    //   87: ifnull +57 -> 144
    //   90: new 63	dalvik/system/DexClassLoader
    //   93: dup
    //   94: new 65	java/lang/StringBuilder
    //   97: dup
    //   98: invokespecial 66	java/lang/StringBuilder:<init>	()V
    //   101: aload 4
    //   103: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: ldc 72
    //   108: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: aload_2
    //   112: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: getstatic 24	com/estrongs/android/util/g:c	Ljava/lang/String;
    //   121: aconst_null
    //   122: ldc 2
    //   124: invokevirtual 80	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   127: invokespecial 83	dalvik/system/DexClassLoader:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   130: astore_0
    //   131: getstatic 20	com/estrongs/android/util/g:a	Ljava/util/HashMap;
    //   134: aload_1
    //   135: aload_0
    //   136: invokevirtual 87	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   139: pop
    //   140: aload_3
    //   141: monitorexit
    //   142: aload_0
    //   143: areturn
    //   144: new 63	dalvik/system/DexClassLoader
    //   147: dup
    //   148: aload 4
    //   150: getstatic 24	com/estrongs/android/util/g:c	Ljava/lang/String;
    //   153: aconst_null
    //   154: ldc 2
    //   156: invokevirtual 80	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   159: invokespecial 83	dalvik/system/DexClassLoader:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   162: astore_0
    //   163: goto -32 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	paramContext	Context
    //   0	166	1	paramString1	String
    //   0	166	2	paramString2	String
    //   3	138	3	localHashMap	HashMap
    //   21	128	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   10	12	33	finally
    //   14	23	33	finally
    //   28	30	33	finally
    //   34	36	33	finally
    //   38	50	33	finally
    //   55	57	33	finally
    //   59	84	33	finally
    //   90	131	33	finally
    //   131	142	33	finally
    //   144	163	33	finally
  }
  
  public static Object a(Object paramObject, String paramString1, String paramString2, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramObject = a(paramObject, paramString1).getMethod(paramString2, paramArrayOfClass).invoke(null, paramArrayOfObject);
      return paramObject;
    }
    catch (ClassNotFoundException paramObject)
    {
      l.e("ESClassLoader", "Can't find class:" + paramString1);
      throw ((Throwable)paramObject);
    }
    catch (NoSuchMethodException paramObject)
    {
      l.e("ESClassLoader", "Can't find method:" + paramString2);
      throw ((Throwable)paramObject);
    }
    catch (SecurityException paramObject)
    {
      l.e("ESClassLoader", "Can't get method:" + paramString2 + " for security issue");
      throw ((Throwable)paramObject);
    }
    catch (Exception paramObject)
    {
      l.e("ESClassLoader", "call method:" + paramString2 + " failed");
      throw ((Throwable)paramObject);
    }
  }
  
  public static Object a(Object paramObject, String paramString1, String paramString2, Object[] paramArrayOfObject)
  {
    if (paramArrayOfObject != null)
    {
      Class[] arrayOfClass = new Class[paramArrayOfObject.length];
      int i = 0;
      while (i < paramArrayOfObject.length)
      {
        arrayOfClass[i] = paramArrayOfObject[i].getClass();
        i += 1;
      }
      return a(paramObject, paramString1, paramString2, arrayOfClass, paramArrayOfObject);
    }
    return a(paramObject, paramString1, paramString2, null, null);
  }
  
  public static Object a(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    try
    {
      paramObject = a(paramObject, paramString);
      if (paramArrayOfObject != null)
      {
        Class[] arrayOfClass = new Class[paramArrayOfObject.length];
        int i = 0;
        while (i < paramArrayOfObject.length)
        {
          arrayOfClass[i] = paramArrayOfObject[i].getClass();
          i += 1;
        }
        return ((Class)paramObject).getConstructor(arrayOfClass).newInstance(paramArrayOfObject);
      }
      paramObject = ((Class)paramObject).newInstance();
      return paramObject;
    }
    catch (Exception paramObject)
    {
      ((Exception)paramObject).printStackTrace();
      l.e("ESClassLoader", "create object failed for class:" + paramString);
    }
    return null;
  }
  
  public static Object a(String paramString1, String paramString2)
  {
    return a(null, paramString1, paramString2);
  }
  
  public static Object a(String paramString1, String paramString2, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramString1 = a(b(paramString1), paramString2);
      if (paramArrayOfObject != null) {
        return paramString1.getConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
      }
      paramString1 = paramString1.newInstance();
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      l.e("ESClassLoader", "create object failed for class:" + paramString2);
    }
    return null;
  }
  
  public static String a()
  {
    return c;
  }
  
  public static void a(String paramString)
  {
    c = paramString;
    if (paramString == null) {
      return;
    }
    new StringBuilder().append(ap.bB(c)).append("lib/").toString();
    b.put("dropbox", c + "/es_dropbox.jar");
    b.put("vdisk", c + "/es_vdisk.jar");
    b.put("sugarsync", c + "/es_sugarsync.jar");
    b.put("kuaipan", c + "/es_kuaipan.jar");
    b.put("box", c + "/es_boxnet.jar");
    b.put("onedrive", c + "/es_skydrv.jar");
    b.put("gdrive", c + "/es_gdrive.jar");
    b.put("s3", c + "/es_s3.jar");
    b.put("megacloud", c + "/es_megacloud.jar");
    b.put("mediafire", c + "/es_mediafire.jar");
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      return false;
    }
    try
    {
      if (paramString.equals("dropbox")) {
        a(paramContext, c + "/es_dropbox.jar", 2131099656, -1);
      } else if (paramString.equals("sugarsync")) {
        a(paramContext, c + "/es_sugarsync.jar", 2131099663, -1);
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return false;
    }
    if (paramString.equals("box")) {
      a(paramContext, c + "/es_boxnet.jar", 2131099655, -1);
    } else if (paramString.equals("kuaipan")) {
      a(paramContext, c + "/es_kuaipan.jar", 2131099658, -1);
    } else if (paramString.equals("vdisk")) {
      a(paramContext, c + "/es_vdisk.jar", 2131099664, -1);
    } else if (paramString.equals("onedrive")) {
      a(paramContext, c + "/es_skydrv.jar", 2131099662, -1);
    } else if (paramString.equals("gdrive")) {
      a(paramContext, c + "/es_gdrive.jar", 2131099657, -1);
    } else if (paramString.equals("s3")) {
      a(paramContext, c + "/es_s3.jar", 2131099661, -1);
    } else if (paramString.equals("megacloud")) {
      a(paramContext, c + "/es_megacloud.jar", 2131099660, -1);
    } else if (paramString.equals("mediafire")) {
      a(paramContext, c + "/es_bitcasa.jar", 2131099659, -1);
    }
    return true;
  }
  
  private static boolean a(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      paramContext = paramContext.getResources().openRawResource(paramInt1);
      if (!bk.a(paramContext, paramString, paramInt2)) {
        return false;
      }
      paramContext.close();
      return true;
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  public static Object b(String paramString)
  {
    return a(paramString, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */