package com.estrongs.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.estrongs.io.archive.d;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.BadPaddingException;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class ax
{
  private static final String a = com.estrongs.android.pop.a.i + "/settings/";
  private static String b = null;
  private static final bb[] c = { new bb("fex_version", 0), new bb("apkMtime", 0) };
  private static final bb[] d = { new bb("recomm_last_check_time", 1), new bb("apkMtime", 0), new bb("PCS_remind_upgrade_time", 0), new bb("last_statistics", 0), new bb("last_pcs_access", 0), new bb("upgrade_last_check_time", 1), new bb("last_request_push_data_time", 0), new bb("last_pcs_verify", 0), new bb("pcs_uinfo_timestamp", 0), new bb("card_update_time", 0), new bb("recomm_last_click_dusb_time", 0), new bb("last_remote_setting_update_time", 0), new bb("home_log_corner_mark_1", 0), new bb("home_log_corner_mark_2", 0), new bb("home_log_corner_mark_3", 0), new bb("home_log_corner_mark_4", 0), new bb("home_log_corner_mark_5", 0), new bb("home_log_corner_mark_6", 0), new bb("home_log_corner_mark_7", 0), new bb("home_log_corner_mark_8", 0), new bb("home_log_corner_mark_9", 0), new bb("log_clear_time", 0) };
  private static final String[] e = { null, "preference", "serverlistdb", "serverlistdb3", "serverlistdb4", "serverlistdb5", "serverlistdb6", "serverlistdb7", "serverlistdb8" };
  private static final String[] f = { "Boxnet.cfg", "Skydrv.cfg", "Gdrive.cfg", "Kuaipan.cfg", "Ubuntu.cfg", "S3.cfg", "Dropbox.cfg", "SugarSync.cfg", "Pcs.cfg", "Flickr.cfg", "Instagram.cfg", "Facebook.cfg" };
  
  public ax()
  {
    new File(a).mkdirs();
  }
  
  /* Error */
  private int a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: new 17	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 20	java/lang/StringBuilder:<init>	()V
    //   7: astore_3
    //   8: aload_2
    //   9: ldc -94
    //   11: invokevirtual 166	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   14: ifeq +127 -> 141
    //   17: aload_3
    //   18: aload_2
    //   19: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: ldc -88
    //   24: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc -86
    //   29: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: astore_2
    //   36: new 144	java/io/File
    //   39: dup
    //   40: aload_2
    //   41: invokespecial 147	java/io/File:<init>	(Ljava/lang/String;)V
    //   44: astore_3
    //   45: aload_3
    //   46: invokevirtual 173	java/io/File:exists	()Z
    //   49: ifeq +115 -> 164
    //   52: new 175	com/estrongs/android/ui/dialog/cv
    //   55: dup
    //   56: aload_1
    //   57: invokespecial 178	com/estrongs/android/ui/dialog/cv:<init>	(Landroid/content/Context;)V
    //   60: astore 4
    //   62: aload 4
    //   64: aload_1
    //   65: ldc -77
    //   67: invokevirtual 185	android/content/Context:getText	(I)Ljava/lang/CharSequence;
    //   70: invokevirtual 188	com/estrongs/android/ui/dialog/cv:a	(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;
    //   73: aload_1
    //   74: ldc -67
    //   76: invokevirtual 193	android/content/Context:getString	(I)Ljava/lang/String;
    //   79: iconst_1
    //   80: anewarray 4	java/lang/Object
    //   83: dup
    //   84: iconst_0
    //   85: ldc -61
    //   87: aastore
    //   88: invokestatic 199	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   91: invokevirtual 201	com/estrongs/android/ui/dialog/cv:b	(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;
    //   94: ldc -54
    //   96: new 204	com/estrongs/android/util/az
    //   99: dup
    //   100: aload_0
    //   101: aload_2
    //   102: aload_3
    //   103: aload_1
    //   104: invokespecial 207	com/estrongs/android/util/az:<init>	(Lcom/estrongs/android/util/ax;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
    //   107: invokevirtual 210	com/estrongs/android/ui/dialog/cv:b	(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    //   110: ldc -45
    //   112: new 213	com/estrongs/android/util/ay
    //   115: dup
    //   116: aload_0
    //   117: invokespecial 216	com/estrongs/android/util/ay:<init>	(Lcom/estrongs/android/util/ax;)V
    //   120: invokevirtual 218	com/estrongs/android/ui/dialog/cv:c	(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;
    //   123: pop
    //   124: aload 4
    //   126: invokevirtual 221	com/estrongs/android/ui/dialog/cv:b	()Lcom/estrongs/android/ui/dialog/ci;
    //   129: astore_1
    //   130: aload_1
    //   131: iconst_0
    //   132: invokevirtual 227	com/estrongs/android/ui/dialog/ci:setCanceledOnTouchOutside	(Z)V
    //   135: aload_1
    //   136: invokevirtual 230	com/estrongs/android/ui/dialog/ci:show	()V
    //   139: iconst_1
    //   140: ireturn
    //   141: new 17	java/lang/StringBuilder
    //   144: dup
    //   145: invokespecial 20	java/lang/StringBuilder:<init>	()V
    //   148: aload_2
    //   149: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: ldc -94
    //   154: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: astore_2
    //   161: goto -144 -> 17
    //   164: new 232	java/util/HashMap
    //   167: dup
    //   168: iconst_2
    //   169: invokespecial 235	java/util/HashMap:<init>	(I)V
    //   172: astore_3
    //   173: aload_3
    //   174: ldc -19
    //   176: iconst_1
    //   177: invokestatic 240	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   180: invokevirtual 244	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   183: pop
    //   184: new 246	com/estrongs/io/a/a/b
    //   187: dup
    //   188: aconst_null
    //   189: invokespecial 249	com/estrongs/io/a/a/b:<init>	(Lcom/estrongs/io/archive/e;)V
    //   192: astore 4
    //   194: aload 4
    //   196: iconst_1
    //   197: invokevirtual 251	com/estrongs/io/a/a/b:c	(Z)V
    //   200: new 253	com/estrongs/io/archive/j
    //   203: dup
    //   204: aload_2
    //   205: aload 4
    //   207: aload_3
    //   208: invokespecial 256	com/estrongs/io/archive/j:<init>	(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V
    //   211: astore_3
    //   212: new 258	java/util/ArrayList
    //   215: dup
    //   216: invokespecial 259	java/util/ArrayList:<init>	()V
    //   219: astore 4
    //   221: aload 4
    //   223: getstatic 37	com/estrongs/android/util/ax:a	Ljava/lang/String;
    //   226: invokevirtual 263	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   229: pop
    //   230: aload_3
    //   231: aload 4
    //   233: invokevirtual 266	com/estrongs/io/archive/j:a	(Ljava/util/List;)V
    //   236: aload_0
    //   237: invokespecial 268	com/estrongs/android/util/ax:b	()V
    //   240: new 144	java/io/File
    //   243: dup
    //   244: getstatic 37	com/estrongs/android/util/ax:a	Ljava/lang/String;
    //   247: invokespecial 147	java/io/File:<init>	(Ljava/lang/String;)V
    //   250: invokevirtual 271	java/io/File:delete	()Z
    //   253: pop
    //   254: aload_1
    //   255: invokestatic 276	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   258: aload_2
    //   259: invokevirtual 279	com/estrongs/android/pop/ad:J	(Ljava/lang/String;)V
    //   262: iconst_0
    //   263: ireturn
    //   264: astore_1
    //   265: aload_1
    //   266: invokevirtual 282	java/io/IOException:printStackTrace	()V
    //   269: iconst_m1
    //   270: ireturn
    //   271: astore_1
    //   272: aload_1
    //   273: invokevirtual 283	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   276: iconst_m1
    //   277: ireturn
    //   278: astore_1
    //   279: iconst_m1
    //   280: ireturn
    //   281: astore_3
    //   282: goto -28 -> 254
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	285	0	this	ax
    //   0	285	1	paramContext	Context
    //   0	285	2	paramString	String
    //   7	224	3	localObject1	Object
    //   281	1	3	localException	Exception
    //   60	172	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   164	236	264	java/io/IOException
    //   236	254	264	java/io/IOException
    //   254	262	264	java/io/IOException
    //   164	236	271	com/estrongs/fs/FileSystemException
    //   236	254	271	com/estrongs/fs/FileSystemException
    //   254	262	271	com/estrongs/fs/FileSystemException
    //   164	236	278	java/lang/NullPointerException
    //   236	254	278	java/lang/NullPointerException
    //   254	262	278	java/lang/NullPointerException
    //   236	254	281	java/lang/Exception
  }
  
  public static void a(String paramString)
  {
    if (paramString.endsWith("/"))
    {
      b = paramString;
      return;
    }
    b = paramString + "/";
  }
  
  private boolean a(int paramInt, String paramString, bb[] paramArrayOfbb)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramArrayOfbb.length)
      {
        if ((paramInt == b) && (paramString.equals(a))) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private String b(Context paramContext, String paramString)
  {
    byte[] arrayOfByte = new byte[524288];
    for (;;)
    {
      int i;
      try
      {
        paramContext = com.estrongs.fs.impl.local.i.a(paramContext, paramString, true);
        if (paramContext != null) {
          break label68;
        }
        return null;
      }
      catch (Exception paramContext)
      {
        int j;
        return null;
      }
      j = paramContext.read(arrayOfByte, i, 524288 - i);
      if (j > 0)
      {
        i = j + i;
      }
      else
      {
        paramContext.close();
        paramContext = new String(arrayOfByte, 0, i);
        return paramContext;
        label68:
        i = 0;
      }
    }
  }
  
  private void b()
  {
    int k = 0;
    int i = 0;
    for (;;)
    {
      int j = k;
      try
      {
        if (i < e.length)
        {
          if (e[i] == null) {}
          for (String str = a + "default";; str = a + e[i])
          {
            new File(str).delete();
            i += 1;
            break;
          }
        }
        while (j < f.length)
        {
          new File(a + f[j]).delete();
          j += 1;
        }
        return;
      }
      catch (Exception localException) {}
    }
  }
  
  private boolean b(String paramString)
  {
    Object localObject3 = null;
    ba localba = null;
    boolean bool2 = true;
    localObject2 = localba;
    localObject1 = localObject3;
    try
    {
      Object localObject4 = new File(a);
      localObject2 = localba;
      localObject1 = localObject3;
      if (((File)localObject4).exists())
      {
        localObject2 = localba;
        localObject1 = localObject3;
        b();
        localObject2 = localba;
        localObject1 = localObject3;
        ((File)localObject4).delete();
      }
      localObject2 = localba;
      localObject1 = localObject3;
      localObject4 = new HashMap();
      localObject2 = localba;
      localObject1 = localObject3;
      ((HashMap)localObject4).put("charset_name", "UTF-8");
      localObject2 = localba;
      localObject1 = localObject3;
      ((HashMap)localObject4).put("reload", "true");
      localObject2 = localba;
      localObject1 = localObject3;
      paramString = d.b(paramString, (Map)localObject4);
      localObject2 = paramString;
      localObject1 = paramString;
      localba = new ba(this, null, ap.bB(a));
      localObject2 = paramString;
      localObject1 = paramString;
      localba.c(true);
      localObject2 = paramString;
      localObject1 = paramString;
      paramString.a(localba);
      bool1 = bool2;
      if (paramString != null)
      {
        paramString.g();
        bool1 = bool2;
      }
    }
    catch (Exception paramString)
    {
      localObject1 = localObject2;
      paramString.printStackTrace();
      boolean bool1 = false;
      return false;
    }
    finally
    {
      if (localObject1 == null) {
        break label237;
      }
      ((com.estrongs.io.archive.i)localObject1).g();
    }
    return bool1;
  }
  
  public int a(Context paramContext, String paramString1, String paramString2)
  {
    Object localObject1;
    int i;
    Object localObject2;
    Object localObject3;
    for (;;)
    {
      try
      {
        localObject1 = new File(paramString1);
        if ((!((File)localObject1).exists()) && (!((File)localObject1).mkdirs())) {
          return -1;
        }
        localObject1 = new File(a);
        if (!((File)localObject1).exists())
        {
          ((File)localObject1).mkdirs();
          if ((paramString2 != null) && (paramString2.length() > 0))
          {
            paramString2 = new i(paramString2);
            break;
            if (i >= e.length) {
              break label435;
            }
            if (e[i] != null) {
              break label236;
            }
            localObject2 = PreferenceManager.getDefaultSharedPreferences(paramContext);
            localObject1 = a + "default";
            localObject3 = new JSONObject();
            localObject2 = ((SharedPreferences)localObject2).getAll();
            if (((Map)localObject2).isEmpty()) {
              break label426;
            }
            ((JSONObject)localObject3).putAll((Map)localObject2);
            localObject3 = ((JSONObject)localObject3).toJSONString();
            localObject2 = localObject3;
            if (paramString2 != null) {
              localObject2 = paramString2.b((String)localObject3);
            }
            localObject1 = com.estrongs.fs.impl.local.i.f((String)localObject1);
            ((OutputStream)localObject1).write(((String)localObject2).getBytes());
            ((OutputStream)localObject1).close();
            break label426;
          }
        }
        else
        {
          b();
          continue;
        }
        paramString2 = new i("!@#$dd");
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        return -1;
      }
      break;
      label236:
      localObject2 = paramContext.getSharedPreferences(e[i], 0);
      localObject1 = a + e[i];
    }
    for (;;)
    {
      if (i < f.length)
      {
        localObject1 = b(paramContext, b + f[i]);
        if (localObject1 == null) {}
        for (;;)
        {
          i += 1;
          break;
          try
          {
            localObject3 = com.estrongs.fs.impl.local.i.f(a + f[i]);
            localObject2 = localObject1;
            if (paramString2 != null) {
              localObject2 = paramString2.b((String)localObject1);
            }
            ((OutputStream)localObject3).write(((String)localObject2).getBytes());
            ((OutputStream)localObject3).close();
          }
          catch (Exception localException) {}
        }
      }
      if (paramString1 == null) {
        return -1;
      }
      i = a(paramContext, paramString1);
      return i;
      i = 0;
      break;
      label426:
      i += 1;
      break;
      label435:
      i = 0;
    }
  }
  
  public int b(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString1 != null) {}
    int i;
    for (;;)
    {
      Object localObject1;
      Object localObject2;
      label217:
      Object localObject3;
      Object localObject4;
      try
      {
        if (!b(paramString1)) {
          return -2;
        }
        if ((paramString2 != null) && (paramString2.length() > 0))
        {
          paramString2 = new i(paramString2);
          break label838;
          if (i >= e.length) {
            break label483;
          }
          if (e[i] == null)
          {
            localObject1 = PreferenceManager.getDefaultSharedPreferences(paramContext);
            paramString1 = a + "default";
            localObject2 = ((SharedPreferences)localObject1).edit();
            localObject1 = b(paramContext, paramString1);
            if (localObject1 != null) {
              continue;
            }
            break label844;
          }
        }
        else
        {
          paramString2 = new i("!@#$dd");
          break label838;
        }
        localObject1 = paramContext.getSharedPreferences(e[i], 0);
        paramString1 = a + e[i];
        continue;
        paramString1 = (String)localObject1;
        if (paramString2 != null) {
          paramString1 = paramString2.c((String)localObject1);
        }
        paramString1 = (Map)new JSONParser().parse(paramString1);
        if (!paramString1.isEmpty())
        {
          localObject1 = paramString1.keySet().iterator();
          if (((Iterator)localObject1).hasNext())
          {
            localObject3 = (String)((Iterator)localObject1).next();
            if (a(i, (String)localObject3, c)) {
              continue;
            }
            localObject4 = paramString1.get(localObject3);
          }
        }
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        if (!(paramContext instanceof BadPaddingException)) {}
      }
      try
      {
        if ((localObject4 instanceof Integer))
        {
          if (a(i, (String)localObject3, d)) {
            ((SharedPreferences.Editor)localObject2).putLong((String)localObject3, new Long(((Integer)localObject4).intValue()).longValue());
          } else {
            ((SharedPreferences.Editor)localObject2).putInt((String)localObject3, ((Integer)localObject4).intValue());
          }
        }
        else if ((localObject4 instanceof String)) {
          ((SharedPreferences.Editor)localObject2).putString((String)localObject3, localObject4.toString());
        } else if ((localObject4 instanceof Long))
        {
          if (a(i, (String)localObject3, d)) {
            ((SharedPreferences.Editor)localObject2).putLong((String)localObject3, ((Long)localObject4).longValue());
          } else {
            ((SharedPreferences.Editor)localObject2).putInt((String)localObject3, ((Long)localObject4).intValue());
          }
        }
        else if ((localObject4 instanceof Boolean)) {
          ((SharedPreferences.Editor)localObject2).putBoolean((String)localObject3, ((Boolean)localObject4).booleanValue());
        }
      }
      catch (Exception localException) {}
    }
    ((SharedPreferences.Editor)localObject2).commit();
    break label844;
    return -3;
    label483:
    int k = 0;
    label486:
    int j;
    if (k < f.length)
    {
      j = 1;
      localObject1 = b(paramContext, a + f[k]);
      if (localObject1 == null) {
        break label858;
      }
      paramString1 = (String)localObject1;
      if (paramString2 != null) {
        paramString1 = paramString2.c((String)localObject1);
      }
      localObject1 = b(paramContext, b + f[k]);
      if (localObject1 == null) {
        break label831;
      }
      localObject2 = paramString1.split("\r\n");
      localObject4 = ((String)localObject1).split("\r\n");
      localObject3 = new boolean[localObject2.length];
      i = 0;
      label618:
      if (i < localObject2.length)
      {
        localObject3[i] = 1;
        j = 0;
        label635:
        if (j >= localObject4.length) {
          break label867;
        }
        if (!localObject4[j].equals(localObject2[i])) {
          break label876;
        }
        localObject3[i] = 0;
        break label867;
      }
      localObject4 = new StringBuilder();
      i = 0;
      j = 0;
    }
    for (;;)
    {
      if (j < localObject2.length)
      {
        if (localObject3[j] != 0)
        {
          ((StringBuilder)localObject4).append(localObject2[j]);
          ((StringBuilder)localObject4).append("\r\n");
          i = 1;
        }
      }
      else
      {
        j = i;
        if (i != 0)
        {
          ((StringBuilder)localObject4).append((String)localObject1);
          paramString1 = ((StringBuilder)localObject4).toString();
        }
        for (;;)
        {
          if (i != 0)
          {
            try
            {
              localObject1 = com.estrongs.fs.impl.local.i.b(b + f[k], true);
              ((OutputStream)localObject1).write(paramString1.getBytes());
              ((OutputStream)localObject1).close();
            }
            catch (Exception paramString1) {}
            try
            {
              b();
              new File(a).delete();
              return 0;
              return -1;
            }
            catch (Exception paramContext)
            {
              for (;;) {}
            }
            label831:
            i = j;
            continue;
            label838:
            i = 0;
            break;
            label844:
            i += 1;
            break;
            break label217;
          }
        }
        label858:
        k += 1;
        break label486;
        label867:
        i += 1;
        break label618;
        label876:
        j += 1;
        break label635;
      }
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */