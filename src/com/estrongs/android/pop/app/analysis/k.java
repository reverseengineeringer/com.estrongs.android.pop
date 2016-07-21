package com.estrongs.android.pop.app.analysis;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.estrongs.android.a.b.f;
import com.estrongs.android.a.b.g;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class k
{
  public static int a(n paramn)
  {
    if (paramn == null) {
      return 2130838043;
    }
    switch (e)
    {
    default: 
      return 2130838043;
    case 1: 
      return 2130838039;
    case 2: 
      return 2130838040;
    case 3: 
      return 2130838041;
    }
    return 2130838042;
  }
  
  public static m a(Context paramContext, f paramf)
  {
    try
    {
      Object localObject = paramf.m();
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        return null;
      }
      paramContext.getPackageManager().getApplicationInfo((String)localObject, 1152);
      paramContext = (ActivityManager)paramContext.getSystemService("activity");
      List localList1 = paramContext.getRunningServices(Integer.MAX_VALUE);
      List localList2 = paramContext.getRunningAppProcesses();
      int[] arrayOfInt = com.estrongs.android.a.l.a(localList1, localList2, (String)localObject);
      int i = arrayOfInt.length;
      long l = com.estrongs.android.a.l.a(paramContext, localList1, localList2, (String)localObject, arrayOfInt);
      paramContext = new m();
      a = 0L;
      b = i;
      c = l;
      paramf = paramf.a();
      if (paramf != null)
      {
        paramf = paramf.iterator();
        while (paramf.hasNext())
        {
          localObject = (g)paramf.next();
          if ((localObject != null) && (((g)localObject).exists()))
          {
            a += ((g)localObject).length();
            continue;
            return paramContext;
          }
        }
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      paramContext = null;
    }
    for (;;) {}
  }
  
  public static n a(JSONObject paramJSONObject, String paramString)
  {
    n localn = new n();
    if (paramJSONObject == null) {
      return localn;
    }
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject(paramString);
      a = paramJSONObject.getString("key");
      d = paramJSONObject.getString("cus_des");
      c = paramJSONObject.getString("des");
      b = paramJSONObject.getString("level");
      e = paramJSONObject.getInt("type");
      f = a(localn);
      return localn;
    }
    catch (Exception paramJSONObject)
    {
      f = 2130838043;
    }
    return localn;
  }
  
  /* Error */
  public static JSONObject a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: getstatic 160	com/estrongs/android/pop/esclasses/i:a	Ljava/lang/String;
    //   5: ifnonnull +117 -> 122
    //   8: invokestatic 166	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   11: invokevirtual 169	java/util/Locale:getCountry	()Ljava/lang/String;
    //   14: astore_0
    //   15: new 171	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 172	java/lang/StringBuilder:<init>	()V
    //   22: ldc -82
    //   24: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: aload_0
    //   28: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: ldc -76
    //   33: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: getstatic 160	com/estrongs/android/pop/esclasses/i:a	Ljava/lang/String;
    //   39: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 188	com/estrongs/android/util/l:a	(Ljava/lang/String;)V
    //   48: new 171	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 172	java/lang/StringBuilder:<init>	()V
    //   55: ldc -66
    //   57: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokestatic 194	com/estrongs/android/pop/utils/cl:a	()Z
    //   63: invokevirtual 197	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   66: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokestatic 188	com/estrongs/android/util/l:a	(Ljava/lang/String;)V
    //   72: aload_0
    //   73: ldc -57
    //   75: invokevirtual 205	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   78: ifeq +51 -> 129
    //   81: ldc -49
    //   83: astore_0
    //   84: invokestatic 212	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   87: invokevirtual 216	com/estrongs/android/pop/FexApplication:getResources	()Landroid/content/res/Resources;
    //   90: invokevirtual 222	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   93: aload_0
    //   94: invokevirtual 228	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   97: astore_0
    //   98: new 119	org/json/JSONObject
    //   101: dup
    //   102: aload_0
    //   103: ldc -26
    //   105: invokestatic 235	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    //   108: invokespecial 237	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   111: astore_1
    //   112: aload_0
    //   113: ifnull +7 -> 120
    //   116: aload_0
    //   117: invokestatic 240	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   120: aload_1
    //   121: areturn
    //   122: getstatic 160	com/estrongs/android/pop/esclasses/i:a	Ljava/lang/String;
    //   125: astore_0
    //   126: goto -111 -> 15
    //   129: aload_0
    //   130: ldc -14
    //   132: invokevirtual 205	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   135: ifeq +9 -> 144
    //   138: ldc -12
    //   140: astore_0
    //   141: goto -57 -> 84
    //   144: ldc -10
    //   146: astore_0
    //   147: goto -63 -> 84
    //   150: astore_0
    //   151: aconst_null
    //   152: astore_0
    //   153: aload_0
    //   154: ifnull +7 -> 161
    //   157: aload_0
    //   158: invokestatic 240	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   161: aconst_null
    //   162: areturn
    //   163: astore_0
    //   164: aload_1
    //   165: ifnull +7 -> 172
    //   168: aload_1
    //   169: invokestatic 240	com/estrongs/fs/util/m:a	(Ljava/io/InputStream;)V
    //   172: aload_0
    //   173: athrow
    //   174: astore_2
    //   175: aload_0
    //   176: astore_1
    //   177: aload_2
    //   178: astore_0
    //   179: goto -15 -> 164
    //   182: astore_1
    //   183: goto -30 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   14	133	0	localObject1	Object
    //   150	1	0	localException1	Exception
    //   152	6	0	localInputStream	java.io.InputStream
    //   163	13	0	localObject2	Object
    //   178	1	0	localObject3	Object
    //   1	176	1	localObject4	Object
    //   182	1	1	localException2	Exception
    //   174	4	2	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   72	81	150	java/lang/Exception
    //   84	98	150	java/lang/Exception
    //   129	138	150	java/lang/Exception
    //   72	81	163	finally
    //   84	98	163	finally
    //   129	138	163	finally
    //   98	112	174	finally
    //   98	112	182	java/lang/Exception
  }
  
  @SuppressLint({"InlinedApi"})
  public static void a(Context paramContext, f paramf, o paramo, boolean paramBoolean)
  {
    paramContext = new l(paramBoolean, paramf, paramContext, paramo);
    if (paramo != null) {
      paramo.a();
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      paramContext.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
      return;
    }
    paramContext.execute(new Void[0]);
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo(paramString, 1);
      return true;
    }
    catch (Exception paramContext)
    {
      com.estrongs.android.util.l.c(paramContext.toString());
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */