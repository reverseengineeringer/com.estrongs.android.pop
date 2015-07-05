package com.estrongs.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.estrongs.io.archive.c;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class at
{
  private static final String a = com.estrongs.android.pop.a.g + "/settings/";
  private static String b = null;
  private static final ax[] c = { new ax("fex_version", 0), new ax("apkMtime", 0) };
  private static final ax[] d = { new ax("recomm_last_check_time", 1), new ax("apkMtime", 0), new ax("PCS_remind_upgrade_time", 0), new ax("last_statistics", 0), new ax("last_pcs_access", 0), new ax("upgrade_last_check_time", 1), new ax("last_request_push_data_time", 0), new ax("last_pcs_verify", 0), new ax("pcs_uinfo_timestamp", 0) };
  private static final String[] e = { null, "preference", "serverlistdb", "serverlistdb3", "serverlistdb4", "serverlistdb5", "serverlistdb6", "serverlistdb7", "serverlistdb8" };
  private static final String[] f = { "Boxnet.cfg", "Skydrv.cfg", "Gdrive.cfg", "Kanbox.cfg", "Kuaipan.cfg", "Ubuntu.cfg", "S3.cfg", "Dropbox.cfg", "SugarSync.cfg", "Pcs.cfg", "Flickr.cfg", "Instagram.cfg", "Facebook.cfg" };
  
  public at()
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
    //   9: ldc -118
    //   11: invokevirtual 142	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   14: ifeq +122 -> 136
    //   17: aload_3
    //   18: aload_2
    //   19: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: ldc -112
    //   24: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   30: astore_2
    //   31: new 120	java/io/File
    //   34: dup
    //   35: aload_2
    //   36: invokespecial 123	java/io/File:<init>	(Ljava/lang/String;)V
    //   39: astore_3
    //   40: aload_3
    //   41: invokevirtual 147	java/io/File:exists	()Z
    //   44: ifeq +115 -> 159
    //   47: new 149	com/estrongs/android/ui/dialog/ct
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 152	com/estrongs/android/ui/dialog/ct:<init>	(Landroid/content/Context;)V
    //   55: astore 4
    //   57: aload 4
    //   59: aload_1
    //   60: ldc -103
    //   62: invokevirtual 159	android/content/Context:getText	(I)Ljava/lang/CharSequence;
    //   65: invokevirtual 162	com/estrongs/android/ui/dialog/ct:a	(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;
    //   68: aload_1
    //   69: ldc -93
    //   71: invokevirtual 167	android/content/Context:getString	(I)Ljava/lang/String;
    //   74: iconst_1
    //   75: anewarray 4	java/lang/Object
    //   78: dup
    //   79: iconst_0
    //   80: ldc -112
    //   82: aastore
    //   83: invokestatic 171	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   86: invokevirtual 173	com/estrongs/android/ui/dialog/ct:b	(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;
    //   89: ldc -82
    //   91: new 176	com/estrongs/android/util/av
    //   94: dup
    //   95: aload_0
    //   96: aload_2
    //   97: aload_3
    //   98: aload_1
    //   99: invokespecial 179	com/estrongs/android/util/av:<init>	(Lcom/estrongs/android/util/at;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
    //   102: invokevirtual 182	com/estrongs/android/ui/dialog/ct:b	(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    //   105: ldc -73
    //   107: new 185	com/estrongs/android/util/au
    //   110: dup
    //   111: aload_0
    //   112: invokespecial 188	com/estrongs/android/util/au:<init>	(Lcom/estrongs/android/util/at;)V
    //   115: invokevirtual 190	com/estrongs/android/ui/dialog/ct:c	(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;
    //   118: pop
    //   119: aload 4
    //   121: invokevirtual 193	com/estrongs/android/ui/dialog/ct:b	()Lcom/estrongs/android/ui/dialog/cg;
    //   124: astore_1
    //   125: aload_1
    //   126: iconst_0
    //   127: invokevirtual 199	com/estrongs/android/ui/dialog/cg:setCanceledOnTouchOutside	(Z)V
    //   130: aload_1
    //   131: invokevirtual 202	com/estrongs/android/ui/dialog/cg:show	()V
    //   134: iconst_1
    //   135: ireturn
    //   136: new 17	java/lang/StringBuilder
    //   139: dup
    //   140: invokespecial 20	java/lang/StringBuilder:<init>	()V
    //   143: aload_2
    //   144: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: ldc -118
    //   149: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: invokevirtual 35	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: astore_2
    //   156: goto -139 -> 17
    //   159: new 204	java/util/HashMap
    //   162: dup
    //   163: iconst_2
    //   164: invokespecial 207	java/util/HashMap:<init>	(I)V
    //   167: astore_3
    //   168: aload_3
    //   169: ldc -47
    //   171: iconst_1
    //   172: invokestatic 212	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   175: invokevirtual 216	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   178: pop
    //   179: new 218	com/estrongs/io/a/a/b
    //   182: dup
    //   183: aconst_null
    //   184: invokespecial 221	com/estrongs/io/a/a/b:<init>	(Lcom/estrongs/io/archive/d;)V
    //   187: astore 4
    //   189: aload 4
    //   191: iconst_1
    //   192: invokevirtual 223	com/estrongs/io/a/a/b:c	(Z)V
    //   195: new 225	com/estrongs/io/archive/i
    //   198: dup
    //   199: aload_2
    //   200: aload 4
    //   202: aload_3
    //   203: invokespecial 228	com/estrongs/io/archive/i:<init>	(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V
    //   206: astore_3
    //   207: new 230	java/util/ArrayList
    //   210: dup
    //   211: invokespecial 231	java/util/ArrayList:<init>	()V
    //   214: astore 4
    //   216: aload 4
    //   218: getstatic 37	com/estrongs/android/util/at:a	Ljava/lang/String;
    //   221: invokevirtual 235	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   224: pop
    //   225: aload_3
    //   226: aload 4
    //   228: invokevirtual 238	com/estrongs/io/archive/i:a	(Ljava/util/List;)V
    //   231: aload_0
    //   232: invokespecial 240	com/estrongs/android/util/at:b	()V
    //   235: new 120	java/io/File
    //   238: dup
    //   239: getstatic 37	com/estrongs/android/util/at:a	Ljava/lang/String;
    //   242: invokespecial 123	java/io/File:<init>	(Ljava/lang/String;)V
    //   245: invokevirtual 243	java/io/File:delete	()Z
    //   248: pop
    //   249: aload_1
    //   250: invokestatic 248	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   253: aload_2
    //   254: invokevirtual 251	com/estrongs/android/pop/ad:J	(Ljava/lang/String;)V
    //   257: iconst_0
    //   258: ireturn
    //   259: astore_1
    //   260: aload_1
    //   261: invokevirtual 254	java/io/IOException:printStackTrace	()V
    //   264: iconst_m1
    //   265: ireturn
    //   266: astore_1
    //   267: aload_1
    //   268: invokevirtual 255	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   271: iconst_m1
    //   272: ireturn
    //   273: astore_1
    //   274: iconst_m1
    //   275: ireturn
    //   276: astore_3
    //   277: goto -28 -> 249
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	280	0	this	at
    //   0	280	1	paramContext	Context
    //   0	280	2	paramString	String
    //   7	219	3	localObject1	Object
    //   276	1	3	localException	Exception
    //   55	172	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   159	231	259	java/io/IOException
    //   231	249	259	java/io/IOException
    //   249	257	259	java/io/IOException
    //   159	231	266	com/estrongs/fs/FileSystemException
    //   231	249	266	com/estrongs/fs/FileSystemException
    //   249	257	266	com/estrongs/fs/FileSystemException
    //   159	231	273	java/lang/NullPointerException
    //   231	249	273	java/lang/NullPointerException
    //   249	257	273	java/lang/NullPointerException
    //   231	249	276	java/lang/Exception
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
  
  private boolean a(int paramInt, String paramString, ax[] paramArrayOfax)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramArrayOfax.length)
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
        paramContext = com.estrongs.fs.impl.local.h.a(paramContext, paramString, true);
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
    aw localaw = null;
    boolean bool2 = true;
    localObject2 = localaw;
    localObject1 = localObject3;
    try
    {
      Object localObject4 = new File(a);
      localObject2 = localaw;
      localObject1 = localObject3;
      if (((File)localObject4).exists())
      {
        localObject2 = localaw;
        localObject1 = localObject3;
        b();
        localObject2 = localaw;
        localObject1 = localObject3;
        ((File)localObject4).delete();
      }
      localObject2 = localaw;
      localObject1 = localObject3;
      localObject4 = new HashMap();
      localObject2 = localaw;
      localObject1 = localObject3;
      ((HashMap)localObject4).put("charset_name", "UTF-8");
      localObject2 = localaw;
      localObject1 = localObject3;
      ((HashMap)localObject4).put("reload", "true");
      localObject2 = localaw;
      localObject1 = localObject3;
      paramString = c.b(paramString, (Map)localObject4);
      localObject2 = paramString;
      localObject1 = paramString;
      localaw = new aw(this, null, am.bk(a));
      localObject2 = paramString;
      localObject1 = paramString;
      localaw.c(true);
      localObject2 = paramString;
      localObject1 = paramString;
      paramString.a(localaw);
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
      ((com.estrongs.io.archive.h)localObject1).g();
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
            paramString2 = new j(paramString2);
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
            localObject1 = com.estrongs.fs.impl.local.h.f((String)localObject1);
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
        paramString2 = new j("!@#$dd");
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
            localObject3 = com.estrongs.fs.impl.local.h.f(a + f[i]);
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
  
  public boolean b(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString1 != null) {}
    int i;
    for (;;)
    {
      Object localObject1;
      Object localObject2;
      label216:
      Object localObject3;
      Object localObject4;
      try
      {
        if (!b(paramString1)) {
          return false;
        }
        if ((paramString2 != null) && (paramString2.length() > 0))
        {
          paramString2 = new j(paramString2);
          break label827;
          if (i >= e.length) {
            break label474;
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
            break label833;
          }
        }
        else
        {
          paramString2 = new j("!@#$dd");
          break label827;
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
        return false;
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
    break label833;
    label474:
    int k = 0;
    label477:
    int j;
    if (k < f.length)
    {
      j = 1;
      localObject1 = b(paramContext, a + f[k]);
      if (localObject1 == null) {
        break label847;
      }
      paramString1 = (String)localObject1;
      if (paramString2 != null) {
        paramString1 = paramString2.c((String)localObject1);
      }
      localObject1 = b(paramContext, b + f[k]);
      if (localObject1 == null) {
        break label820;
      }
      localObject2 = paramString1.split("\r\n");
      localObject4 = ((String)localObject1).split("\r\n");
      localObject3 = new boolean[localObject2.length];
      i = 0;
      label609:
      if (i < localObject2.length)
      {
        localObject3[i] = 1;
        j = 0;
        label626:
        if (j >= localObject4.length) {
          break label856;
        }
        if (!localObject4[j].equals(localObject2[i])) {
          break label865;
        }
        localObject3[i] = 0;
        break label856;
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
              localObject1 = com.estrongs.fs.impl.local.h.b(b + f[k], true);
              ((OutputStream)localObject1).write(paramString1.getBytes());
              ((OutputStream)localObject1).close();
            }
            catch (Exception paramString1) {}
            try
            {
              b();
              new File(a).delete();
              return true;
            }
            catch (Exception paramContext)
            {
              for (;;) {}
            }
            label820:
            i = j;
            continue;
            label827:
            i = 0;
            break;
            label833:
            i += 1;
            break;
            break label216;
          }
        }
        label847:
        k += 1;
        break label477;
        label856:
        i += 1;
        break label609;
        label865:
        j += 1;
        break label626;
      }
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */