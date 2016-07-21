package com.estrongs.android.ui.e;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.MediaStore.Audio.Media;
import com.estrongs.a.p;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.pop.b;
import com.estrongs.android.ui.dialog.hf;
import com.estrongs.android.ui.pcs.am;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class iq
  extends c
{
  private String[] c;
  private String[] d;
  private String[] e;
  private String[] f;
  private String[] g;
  private PopAudioPlayer h;
  private int i = -1;
  
  public iq(PopAudioPlayer paramPopAudioPlayer)
  {
    h = paramPopAudioPlayer;
  }
  
  private static Uri a(PopAudioPlayer paramPopAudioPlayer, String paramString1, String paramString2, int paramInt, long paramLong)
  {
    boolean bool2 = false;
    int j = paramString1.lastIndexOf(".");
    if (j == -1)
    {
      String str = ap.bV(paramString2);
      paramString2 = new ContentValues();
      paramString2.put("_data", str);
      paramString2.put("title", paramString1);
      paramString2.put("_size", Long.valueOf(paramLong));
      paramString2.put("mime_type", "audio/*");
      if (paramInt != 1) {
        break label163;
      }
      bool1 = true;
      label73:
      paramString2.put("is_ringtone", Boolean.valueOf(bool1));
      if (paramInt != 2) {
        break label169;
      }
    }
    label163:
    label169:
    for (boolean bool1 = true;; bool1 = false)
    {
      paramString2.put("is_notification", Boolean.valueOf(bool1));
      bool1 = bool2;
      if (paramInt == 4) {
        bool1 = true;
      }
      paramString2.put("is_alarm", Boolean.valueOf(bool1));
      paramString2.put("is_music", Boolean.valueOf(true));
      paramString1 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
      try
      {
        paramPopAudioPlayer = paramPopAudioPlayer.getContentResolver().insert(paramString1, paramString2);
        return paramPopAudioPlayer;
      }
      catch (Exception paramPopAudioPlayer)
      {
        paramPopAudioPlayer.printStackTrace();
      }
      paramString1 = paramString1.substring(0, j);
      break;
      bool1 = false;
      break label73;
    }
    return null;
  }
  
  public static void a(PopAudioPlayer paramPopAudioPlayer)
  {
    new ji(paramPopAudioPlayer).show();
  }
  
  public static void a(PopAudioPlayer paramPopAudioPlayer, h paramh)
  {
    if (paramh == null)
    {
      ak.a(paramPopAudioPlayer, 2131230822, 1);
      return;
    }
    new hf(paramPopAudioPlayer, paramh).a();
  }
  
  public static void a(PopAudioPlayer paramPopAudioPlayer, String paramString, int paramInt)
  {
    new is(paramPopAudioPlayer, paramString, paramInt).start();
  }
  
  public static boolean b(PopAudioPlayer paramPopAudioPlayer, String paramString, int paramInt)
  {
    String str;
    Object localObject;
    label135:
    File localFile;
    if (ap.bm(paramString))
    {
      if (paramInt == 1) {
        str = b.b() + "/media/ringtones";
      }
      for (;;)
      {
        localObject = new File(str);
        if ((((File)localObject).exists()) || (((File)localObject).mkdirs())) {
          break label135;
        }
        l.e("ES", "can't create ringtone folder");
        return false;
        if (paramInt == 2)
        {
          str = b.b() + "/media/notifications";
        }
        else
        {
          if (paramInt != 4) {
            break;
          }
          str = b.b() + "/media/alarms";
        }
      }
      return false;
      localObject = ap.d(paramString);
      str = str + "/" + (String)localObject;
      localFile = new File(str);
      if (localFile.exists()) {
        break label348;
      }
      paramString = new r(d.a(paramPopAudioPlayer), d.a(paramPopAudioPlayer).j(paramString), new f(new File(str)));
      paramString.execute(false);
      if (getTaskResulta != 0) {
        return false;
      }
    }
    label348:
    for (int j = 0;; j = 1)
    {
      paramString = null;
      if (j != 0) {
        paramString = c(paramPopAudioPlayer, str, paramInt);
      }
      if (paramString == null) {
        paramString = a(paramPopAudioPlayer, (String)localObject, str, paramInt, localFile.length());
      }
      while (paramString == null)
      {
        return false;
        paramString = Uri.parse(paramString);
        continue;
        str = c(paramPopAudioPlayer, paramString, paramInt);
        localObject = new File(paramString);
        if (str == null) {
          paramString = a(paramPopAudioPlayer, ap.d(paramString), paramString, paramInt, ((File)localObject).length());
        } else {
          paramString = Uri.parse(str);
        }
      }
      RingtoneManager.setActualDefaultRingtoneUri(paramPopAudioPlayer, paramInt, paramString);
      return true;
    }
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  private static String c(PopAudioPlayer paramPopAudioPlayer, String paramString, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 42	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore 6
    //   6: iload_2
    //   7: iconst_1
    //   8: if_icmpne +89 -> 97
    //   11: ldc 70
    //   13: astore 5
    //   15: getstatic 90	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   18: invokevirtual 248	android/net/Uri:toString	()Ljava/lang/String;
    //   21: astore 7
    //   23: aload_0
    //   24: invokevirtual 96	com/estrongs/android/pop/app/PopAudioPlayer:getContentResolver	()Landroid/content/ContentResolver;
    //   27: getstatic 90	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   30: iconst_2
    //   31: anewarray 32	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: ldc -6
    //   38: aastore
    //   39: dup
    //   40: iconst_1
    //   41: aload 5
    //   43: aastore
    //   44: ldc -4
    //   46: iconst_1
    //   47: anewarray 32	java/lang/String
    //   50: dup
    //   51: iconst_0
    //   52: aload 6
    //   54: aastore
    //   55: aconst_null
    //   56: invokevirtual 256	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   59: astore_1
    //   60: aload_1
    //   61: ifnull +12 -> 73
    //   64: aload_1
    //   65: invokeinterface 262 1 0
    //   70: ifne +159 -> 229
    //   73: invokestatic 266	com/estrongs/android/util/bk:f	()Z
    //   76: istore 4
    //   78: iload 4
    //   80: ifne +36 -> 116
    //   83: aload_1
    //   84: ifnull +9 -> 93
    //   87: aload_1
    //   88: invokeinterface 269 1 0
    //   93: aconst_null
    //   94: astore_0
    //   95: aload_0
    //   96: areturn
    //   97: iload_2
    //   98: iconst_2
    //   99: if_icmpne +10 -> 109
    //   102: ldc 80
    //   104: astore 5
    //   106: goto -91 -> 15
    //   109: ldc 82
    //   111: astore 5
    //   113: goto -98 -> 15
    //   116: aload_1
    //   117: ifnull +9 -> 126
    //   120: aload_1
    //   121: invokeinterface 269 1 0
    //   126: aload_0
    //   127: invokevirtual 96	com/estrongs/android/pop/app/PopAudioPlayer:getContentResolver	()Landroid/content/ContentResolver;
    //   130: ldc_w 271
    //   133: invokestatic 276	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   136: iconst_1
    //   137: anewarray 32	java/lang/String
    //   140: dup
    //   141: iconst_0
    //   142: ldc -6
    //   144: aastore
    //   145: ldc -4
    //   147: iconst_1
    //   148: anewarray 32	java/lang/String
    //   151: dup
    //   152: iconst_0
    //   153: aload 6
    //   155: aastore
    //   156: aconst_null
    //   157: invokevirtual 256	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   160: astore 5
    //   162: aload 5
    //   164: astore_1
    //   165: aload_1
    //   166: ifnull +14 -> 180
    //   169: aload_1
    //   170: invokeinterface 262 1 0
    //   175: istore_2
    //   176: iload_2
    //   177: ifne +15 -> 192
    //   180: aload_1
    //   181: ifnull +9 -> 190
    //   184: aload_1
    //   185: invokeinterface 269 1 0
    //   190: aconst_null
    //   191: areturn
    //   192: aload_0
    //   193: invokevirtual 96	com/estrongs/android/pop/app/PopAudioPlayer:getContentResolver	()Landroid/content/ContentResolver;
    //   196: ldc_w 271
    //   199: invokestatic 276	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   202: ldc -4
    //   204: iconst_1
    //   205: anewarray 32	java/lang/String
    //   208: dup
    //   209: iconst_0
    //   210: aload 6
    //   212: aastore
    //   213: invokevirtual 280	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   216: pop
    //   217: aload_1
    //   218: ifnull +9 -> 227
    //   221: aload_1
    //   222: invokeinterface 269 1 0
    //   227: aconst_null
    //   228: areturn
    //   229: aload_1
    //   230: invokeinterface 283 1 0
    //   235: pop
    //   236: aload_1
    //   237: iconst_0
    //   238: invokeinterface 287 2 0
    //   243: istore_2
    //   244: aload_1
    //   245: iconst_1
    //   246: invokeinterface 287 2 0
    //   251: istore_3
    //   252: new 147	java/lang/StringBuilder
    //   255: dup
    //   256: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   259: aload 7
    //   261: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: ldc -66
    //   266: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: iload_2
    //   270: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   273: invokevirtual 162	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: invokestatic 238	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   279: pop
    //   280: iload_3
    //   281: ifne +57 -> 338
    //   284: new 44	android/content/ContentValues
    //   287: dup
    //   288: invokespecial 45	android/content/ContentValues:<init>	()V
    //   291: astore 6
    //   293: aload 6
    //   295: aload 5
    //   297: iconst_1
    //   298: invokestatic 75	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   301: invokevirtual 78	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   304: aload_0
    //   305: invokevirtual 96	com/estrongs/android/pop/app/PopAudioPlayer:getContentResolver	()Landroid/content/ContentResolver;
    //   308: getstatic 90	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   311: aload 6
    //   313: new 147	java/lang/StringBuilder
    //   316: dup
    //   317: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   320: ldc_w 292
    //   323: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: iload_2
    //   327: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   330: invokevirtual 162	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   333: aconst_null
    //   334: invokevirtual 296	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   337: pop
    //   338: new 147	java/lang/StringBuilder
    //   341: dup
    //   342: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   345: aload 7
    //   347: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: ldc -66
    //   352: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: iload_2
    //   356: invokevirtual 290	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   359: invokevirtual 162	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   362: astore 5
    //   364: aload 5
    //   366: astore_0
    //   367: aload_1
    //   368: ifnull -273 -> 95
    //   371: aload_1
    //   372: invokeinterface 269 1 0
    //   377: aload 5
    //   379: areturn
    //   380: astore_0
    //   381: aload_0
    //   382: invokevirtual 109	java/lang/Exception:printStackTrace	()V
    //   385: goto -47 -> 338
    //   388: astore_0
    //   389: aload_1
    //   390: ifnull +9 -> 399
    //   393: aload_1
    //   394: invokeinterface 269 1 0
    //   399: aconst_null
    //   400: areturn
    //   401: astore_0
    //   402: aconst_null
    //   403: astore_1
    //   404: aload_1
    //   405: ifnull +9 -> 414
    //   408: aload_1
    //   409: invokeinterface 269 1 0
    //   414: aload_0
    //   415: athrow
    //   416: astore_0
    //   417: goto -13 -> 404
    //   420: astore_0
    //   421: goto -17 -> 404
    //   424: astore_0
    //   425: aconst_null
    //   426: astore_1
    //   427: goto -38 -> 389
    //   430: astore_0
    //   431: goto -42 -> 389
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	434	0	paramPopAudioPlayer	PopAudioPlayer
    //   0	434	1	paramString	String
    //   0	434	2	paramInt	int
    //   251	30	3	j	int
    //   76	3	4	bool	boolean
    //   13	365	5	localObject1	Object
    //   4	308	6	localObject2	Object
    //   21	325	7	str	String
    // Exception table:
    //   from	to	target	type
    //   304	338	380	java/lang/Exception
    //   64	73	388	java/lang/Exception
    //   73	78	388	java/lang/Exception
    //   120	126	388	java/lang/Exception
    //   126	162	388	java/lang/Exception
    //   229	280	388	java/lang/Exception
    //   284	304	388	java/lang/Exception
    //   338	364	388	java/lang/Exception
    //   381	385	388	java/lang/Exception
    //   23	60	401	finally
    //   64	73	416	finally
    //   73	78	416	finally
    //   120	126	416	finally
    //   126	162	416	finally
    //   229	280	416	finally
    //   284	304	416	finally
    //   304	338	416	finally
    //   338	364	416	finally
    //   381	385	416	finally
    //   169	176	420	finally
    //   192	217	420	finally
    //   23	60	424	java/lang/Exception
    //   169	176	430	java/lang/Exception
    //   192	217	430	java/lang/Exception
  }
  
  public void a(int paramInt)
  {
    i = paramInt;
    if (h.v() == m.a().e()) {
      paramInt = 1;
    }
    Object localObject1;
    String str;
    switch (i)
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        return;
        paramInt = 0;
        break;
        b = g;
        return;
        localObject1 = h.A();
      } while (((List)localObject1).size() <= 0);
      str = get0b;
      if (!ap.bl(str)) {
        str = ap.bH(str);
      }
      break;
    }
    while (str != null)
    {
      Object localObject2;
      if (paramInt != 0)
      {
        localObject2 = c;
        label128:
        localObject1 = localObject2;
        if (ap.aL(str))
        {
          localObject1 = localObject2;
          if (am.a(h)) {
            localObject1 = a(c, "backup_pcs");
          }
        }
        if ((!str.startsWith("http://")) || (str.startsWith("http://127.0.0.1:"))) {
          break label260;
        }
      }
      label260:
      for (paramInt = 0;; paramInt = 1)
      {
        localObject2 = localObject1;
        if (paramInt == 0) {
          localObject2 = a((String[])localObject1, "delete");
        }
        b = ((String[])localObject2);
        if (ap.bl(str)) {
          break;
        }
        a(new String[] { "ringtone" });
        return;
        localObject2 = e;
        break label128;
        if (paramInt != 0) {}
        for (localObject1 = d;; localObject1 = f)
        {
          b = ((String[])localObject1);
          return;
        }
      }
    }
  }
  
  public void d()
  {
    c = new String[] { "play", "add_to", "ringtone", "share", "property", "delete", "backup_pcs", "search" };
    d = new String[] { "play", "add_to", "search" };
    g = new String[] { "play", "add_to", "ringtone", "share", "property", "delete", "backup_pcs", "search" };
    e = new String[] { "play", "moveout", "ringtone", "share", "property", "delete", "backup_pcs", "search" };
    f = new String[] { "play", "moveout", "search" };
    if (!am.a(h))
    {
      c = a(c, "backup_pcs");
      e = a(e, "backup_pcs");
      g = a(g, "backup_pcs");
    }
  }
  
  public void e()
  {
    a = new HashMap();
    com.estrongs.android.view.a.a locala2 = new com.estrongs.android.view.a.a(2130838578, h.getString(2131230874)).a(new ir(this));
    com.estrongs.android.view.a.a locala3 = new com.estrongs.android.view.a.a(2130838580, h.getString(2131231041)).a(new iv(this));
    com.estrongs.android.view.a.a locala4 = new com.estrongs.android.view.a.a(2130838539, h.getString(2131230845)).a(new iz(this));
    com.estrongs.android.view.a.a locala5 = new com.estrongs.android.view.a.a(2130838539, h.getString(2131232473)).a(new jb(this));
    com.estrongs.android.view.a.a locala6 = new com.estrongs.android.view.a.a(2130838564, h.getString(2131231709)).a(new jc(this));
    com.estrongs.android.view.a.a locala7 = new com.estrongs.android.view.a.a(2130838604, h.getString(2131230892)).a(new je(this));
    com.estrongs.android.view.a.a locala8 = new com.estrongs.android.view.a.a(2130838586, h.getString(2131231278)).a(new jf(this));
    com.estrongs.android.view.a.a locala1 = null;
    if (am.a(h)) {
      locala1 = new com.estrongs.android.view.a.a(2130838522, h.getString(2131231410)).a(new jg(this));
    }
    com.estrongs.android.view.a.a locala9 = new com.estrongs.android.view.a.a(2130838638, h.getString(2131232559)).a(new jh(this));
    a.put("play", locala2);
    a.put("add_to", locala3);
    a.put("moveout", locala5);
    a.put("ringtone", locala6);
    a.put("share", locala7);
    a.put("property", locala8);
    a.put("delete", locala4);
    a.put("search", locala9);
    if (am.a(h)) {
      a.put("backup_pcs", locala1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.iq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */