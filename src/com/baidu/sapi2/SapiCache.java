package com.baidu.sapi2;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import com.baidu.android.common.security.MD5Util;
import com.baidu.cloudsdk.common.http.AsyncHttpClient;
import com.baidu.cloudsdk.common.http.RequestParams;
import com.baidu.sapi2.shell.SapiAccountService;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.enums.Domain;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class SapiCache
{
  private static final Map<String, SoftReference<String>> a = new ConcurrentHashMap();
  private static final List<String> b = new ArrayList();
  private static final List<String> c = new ArrayList();
  private static Context d;
  
  static String a(Context paramContext, String paramString)
  {
    return b(paramContext, c(paramString));
  }
  
  static void a()
  {
    Object localObject = c.a(d).k().i();
    if (((b.a)localObject).a())
    {
      Iterator localIterator = ((b.a)localObject).b().iterator();
      while (localIterator.hasNext())
      {
        b.a.a locala = (b.a.a)localIterator.next();
        b.add(a);
      }
      c.addAll(b);
      localObject = ((b.a)localObject).b().iterator();
      while (((Iterator)localObject).hasNext()) {
        a((b.a.a)((Iterator)localObject).next(), new SapiCache.c());
      }
    }
  }
  
  static void a(Context paramContext, b.a.a parama)
  {
    String str = b.a.a.a(a);
    if (new File(paramContext.getFilesDir(), str).exists()) {
      try
      {
        str = e(paramContext, str);
        a(a, str);
        return;
      }
      catch (Throwable localThrowable)
      {
        d(paramContext, a);
        return;
      }
    }
    d(paramContext, a);
  }
  
  /* Error */
  static void a(Context paramContext, String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: aload_1
    //   4: iconst_0
    //   5: invokevirtual 128	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   8: astore_0
    //   9: aload_0
    //   10: astore_3
    //   11: aload_0
    //   12: aload_2
    //   13: invokevirtual 134	java/io/OutputStream:write	([B)V
    //   16: aload_0
    //   17: ifnull +7 -> 24
    //   20: aload_0
    //   21: invokevirtual 137	java/io/OutputStream:close	()V
    //   24: return
    //   25: astore_0
    //   26: aload_3
    //   27: ifnull -3 -> 24
    //   30: aload_3
    //   31: invokevirtual 137	java/io/OutputStream:close	()V
    //   34: return
    //   35: astore_0
    //   36: return
    //   37: astore_0
    //   38: aconst_null
    //   39: astore_1
    //   40: aload_1
    //   41: ifnull +7 -> 48
    //   44: aload_1
    //   45: invokevirtual 137	java/io/OutputStream:close	()V
    //   48: aload_0
    //   49: athrow
    //   50: astore_0
    //   51: return
    //   52: astore_1
    //   53: goto -5 -> 48
    //   56: astore_2
    //   57: aload_0
    //   58: astore_1
    //   59: aload_2
    //   60: astore_0
    //   61: goto -21 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	paramContext	Context
    //   0	64	1	paramString	String
    //   0	64	2	paramArrayOfByte	byte[]
    //   1	30	3	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	9	25	java/lang/Throwable
    //   11	16	25	java/lang/Throwable
    //   30	34	35	java/lang/Throwable
    //   2	9	37	finally
    //   20	24	50	java/lang/Throwable
    //   44	48	52	java/lang/Throwable
    //   11	16	56	finally
  }
  
  static void a(b.a.a parama, SapiCache.a parama1)
  {
    if (parama1 == null) {
      throw new IllegalArgumentException(SapiCache.a.class.getName() + "can't be null");
    }
    String str = b.a.a.c(a);
    try
    {
      if (("mounted".equals(Environment.getExternalStorageState())) && (new File(Environment.getExternalStorageDirectory(), str).exists()))
      {
        str = d(str);
        if (MD5Util.toMd5(str.getBytes(), false).equals(c.c))
        {
          parama1.a(parama, str);
          return;
        }
        parama1.a(parama);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      parama1.a(parama);
      return;
    }
    parama1.a(parama);
  }
  
  static void a(String paramString)
  {
    a.remove(paramString);
  }
  
  static void a(String paramString1, String paramString2)
  {
    a.put(paramString1, new SoftReference(paramString2));
  }
  
  /* Error */
  static void a(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aload 4
    //   7: astore_2
    //   8: ldc -91
    //   10: invokestatic 170	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   13: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   16: ifeq +147 -> 163
    //   19: aload 4
    //   21: astore_2
    //   22: new 103	java/io/File
    //   25: dup
    //   26: invokestatic 178	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   29: aload_0
    //   30: invokespecial 112	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   33: astore_0
    //   34: aload 4
    //   36: astore_2
    //   37: aload_0
    //   38: invokevirtual 222	java/io/File:getParentFile	()Ljava/io/File;
    //   41: invokevirtual 115	java/io/File:exists	()Z
    //   44: ifne +14 -> 58
    //   47: aload 4
    //   49: astore_2
    //   50: aload_0
    //   51: invokevirtual 222	java/io/File:getParentFile	()Ljava/io/File;
    //   54: invokevirtual 225	java/io/File:mkdirs	()Z
    //   57: pop
    //   58: aload 4
    //   60: astore_2
    //   61: aload_0
    //   62: invokevirtual 115	java/io/File:exists	()Z
    //   65: ifne +11 -> 76
    //   68: aload 4
    //   70: astore_2
    //   71: aload_0
    //   72: invokevirtual 228	java/io/File:createNewFile	()Z
    //   75: pop
    //   76: aload 4
    //   78: astore_2
    //   79: new 230	java/io/FileOutputStream
    //   82: dup
    //   83: aload_0
    //   84: invokespecial 233	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   87: astore_0
    //   88: aload_0
    //   89: aload_1
    //   90: invokevirtual 134	java/io/OutputStream:write	([B)V
    //   93: aload_0
    //   94: ifnull +7 -> 101
    //   97: aload_0
    //   98: invokevirtual 137	java/io/OutputStream:close	()V
    //   101: return
    //   102: astore_0
    //   103: aload_0
    //   104: invokestatic 238	com/baidu/sapi2/utils/L:e	(Ljava/lang/Throwable;)V
    //   107: return
    //   108: astore_1
    //   109: aload_3
    //   110: astore_0
    //   111: aload_0
    //   112: astore_2
    //   113: aload_1
    //   114: invokestatic 238	com/baidu/sapi2/utils/L:e	(Ljava/lang/Throwable;)V
    //   117: aload_0
    //   118: ifnull -17 -> 101
    //   121: aload_0
    //   122: invokevirtual 137	java/io/OutputStream:close	()V
    //   125: return
    //   126: astore_0
    //   127: aload_0
    //   128: invokestatic 238	com/baidu/sapi2/utils/L:e	(Ljava/lang/Throwable;)V
    //   131: return
    //   132: astore_0
    //   133: aload_2
    //   134: ifnull +7 -> 141
    //   137: aload_2
    //   138: invokevirtual 137	java/io/OutputStream:close	()V
    //   141: aload_0
    //   142: athrow
    //   143: astore_1
    //   144: aload_1
    //   145: invokestatic 238	com/baidu/sapi2/utils/L:e	(Ljava/lang/Throwable;)V
    //   148: goto -7 -> 141
    //   151: astore_1
    //   152: aload_0
    //   153: astore_2
    //   154: aload_1
    //   155: astore_0
    //   156: goto -23 -> 133
    //   159: astore_1
    //   160: goto -49 -> 111
    //   163: aconst_null
    //   164: astore_0
    //   165: goto -72 -> 93
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	paramString	String
    //   0	168	1	paramArrayOfByte	byte[]
    //   7	147	2	localObject1	Object
    //   4	106	3	localObject2	Object
    //   1	76	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   97	101	102	java/lang/Throwable
    //   8	19	108	java/lang/Throwable
    //   22	34	108	java/lang/Throwable
    //   37	47	108	java/lang/Throwable
    //   50	58	108	java/lang/Throwable
    //   61	68	108	java/lang/Throwable
    //   71	76	108	java/lang/Throwable
    //   79	88	108	java/lang/Throwable
    //   121	125	126	java/lang/Throwable
    //   8	19	132	finally
    //   22	34	132	finally
    //   37	47	132	finally
    //   50	58	132	finally
    //   61	68	132	finally
    //   71	76	132	finally
    //   79	88	132	finally
    //   113	117	132	finally
    //   137	141	143	java/lang/Throwable
    //   88	93	151	finally
    //   88	93	159	java/lang/Throwable
  }
  
  static boolean a(b.a.a parama1, b.a.a parama2)
  {
    return (c.b > 0L) && ((parama2 == null) || (c.b != c.b));
  }
  
  static String b(Context paramContext, String paramString)
  {
    
    if (c.a(paramContext).k().i().a())
    {
      Object localObject = b(paramString);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        return (String)localObject;
      }
      localObject = c(paramContext, paramString);
      if (localObject != null)
      {
        a((b.a.a)localObject, new SapiCache.d(paramContext));
        return b(paramString);
      }
      return d(paramContext, paramString);
    }
    return null;
  }
  
  static String b(String paramString)
  {
    if ((a.containsKey(paramString)) && (a.get(paramString) != null))
    {
      paramString = (String)((SoftReference)a.get(paramString)).get();
      if (!TextUtils.isEmpty(paramString)) {
        return paramString;
      }
    }
    return null;
  }
  
  static void b()
  {
    if (!SapiUtils.hasActiveNetwork(d)) {
      return;
    }
    RequestParams localRequestParams = c();
    localRequestParams.put("cdnversion", String.valueOf((int)(System.currentTimeMillis() / 90000.0D)));
    try
    {
      new AsyncHttpClient().get(d, d(), localRequestParams, new SapiCache.b());
      return;
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
  }
  
  static RequestParams c()
  {
    try
    {
      RequestParams localRequestParams = new RequestParams();
      localRequestParams.put("tpl", getInstancegetSapiConfigurationtpl);
      localRequestParams.put("sdk_version", "6.9.2");
      localRequestParams.put("app_version", SapiUtils.getVersionName(d));
      return localRequestParams;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static b.a.a c(Context paramContext, String paramString)
  {
    paramContext = c.a(paramContext).k().i().b().iterator();
    while (paramContext.hasNext())
    {
      b.a.a locala = (b.a.a)paramContext.next();
      if (a.equals(paramString)) {
        return locala;
      }
    }
    return null;
  }
  
  static String c(String paramString)
  {
    Object localObject = Uri.parse(paramString);
    StringBuilder localStringBuilder = new StringBuilder().append(((Uri)localObject).getHost());
    if (((Uri)localObject).getPort() == -1) {}
    for (paramString = "";; paramString = ":" + ((Uri)localObject).getPort())
    {
      localObject = paramString + ((Uri)localObject).getPath();
      paramString = (String)localObject;
      if (!((String)localObject).endsWith(".html")) {
        paramString = (String)localObject + ".html";
      }
      return paramString;
    }
  }
  
  static String d()
  {
    return getInstancegetSapiConfigurationenvironment.getConfigUrl() + "/static/appsapi/conf/config.txt";
  }
  
  static String d(Context paramContext, String paramString)
  {
    String str = b.a.a.b(paramString);
    try
    {
      a(paramString, f(paramContext, str));
      paramContext = b(paramContext, paramString);
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  static String d(String paramString)
  {
    paramString = new FileInputStream(new File(Environment.getExternalStorageDirectory(), paramString));
    try
    {
      Object localObject1 = new byte[paramString.available()];
      paramString.read((byte[])localObject1);
      localObject1 = new String((byte[])localObject1);
      return (String)localObject1;
    }
    finally
    {
      paramString.close();
    }
  }
  
  static String e(Context paramContext, String paramString)
  {
    paramContext = paramContext.openFileInput(paramString);
    try
    {
      paramString = new byte[paramContext.available()];
      paramContext.read(paramString);
      paramString = new String(paramString);
      return paramString;
    }
    finally
    {
      paramContext.close();
    }
  }
  
  static void e()
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = b.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      String str = (String)((Iterator)localObject2).next();
      if (!c.contains(str))
      {
        ((List)localObject1).add(str);
        a(str);
      }
    }
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      if (b.contains(localObject2)) {
        b.remove(localObject2);
      }
    }
  }
  
  static String f(Context paramContext, String paramString)
  {
    paramContext = paramContext.getAssets().open(paramString);
    try
    {
      paramString = new byte[paramContext.available()];
      paramContext.read(paramString);
      paramString = new String(paramString);
      return paramString;
    }
    finally
    {
      paramContext.close();
    }
  }
  
  public static void init(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context can't be null");
    }
    d = paramContext.getApplicationContext();
    a();
    b();
    SapiAccountManager.getInstance().getAccountService().o();
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */