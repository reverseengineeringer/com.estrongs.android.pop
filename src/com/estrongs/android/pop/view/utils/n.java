package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.BrowserDownloaderActivity;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.app.PopChromecastPlayer;
import com.estrongs.android.pop.app.aa;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.android.util.y;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.InflaterInputStream;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

public class n
{
  public static final String b = e + "/recomm_items";
  private static int c = 0;
  private static String d = null;
  private static final String e = a.f;
  private static final String f = e + "/icons";
  private static final String g = e + "/thumbnail_pics";
  private static final String h = e + "/pics";
  private static final String i = e + "/apks";
  private static final String j = e + "/recomm_items_download_status";
  private static int n = -1;
  private static String[] o = { DownloaderActivity.class.getName(), BrowserDownloaderActivity.class.getName(), FileExplorerActivity.class.getName() };
  private static v[] q = null;
  private static n t = null;
  private static HashMap<String, u> u = new HashMap();
  private static boolean v = false;
  private static String w = "PreferActivity";
  long a = 0L;
  private String k = null;
  private String l = null;
  private boolean m = false;
  private boolean p = false;
  private Object r = new Object();
  private Handler s = null;
  
  public static u a(Context arg0, String paramString)
  {
    if ((!v) && (d(???))) {
      v = true;
    }
    String str = paramString.toLowerCase(Locale.getDefault());
    synchronized (u)
    {
      paramString = (u)u.get(str);
      ??? = paramString;
      if (paramString == null)
      {
        ??? = paramString;
        if (z.X != null)
        {
          ??? = paramString;
          if (z.X.size() > 0) {
            ??? = z.d(str);
          }
        }
      }
      return (u)???;
    }
  }
  
  public static String a(String paramString)
  {
    return i + "/" + paramString + ".apk";
  }
  
  private static List<ResolveInfo> a(PackageManager paramPackageManager, String paramString)
  {
    paramString = new Intent();
    paramString.setAction("android.intent.action.MAIN");
    paramString.addCategory("android.intent.category.LAUNCHER");
    return paramPackageManager.queryIntentActivities(paramString, 0);
  }
  
  public static List<ResolveInfo> a(PackageManager paramPackageManager, String paramString, Uri paramUri, int[] paramArrayOfInt, Comparator<ResolveInfo> paramComparator)
  {
    Intent localIntent = new Intent();
    localIntent.setDataAndType(paramUri, paramString);
    localIntent.setAction("android.intent.action.VIEW");
    paramString = paramPackageManager.queryIntentActivities(localIntent, 0);
    if (paramComparator != null) {
      Collections.sort(paramString, paramComparator);
    }
    if ((paramArrayOfInt != null) && (2 == paramArrayOfInt.length)) {
      paramArrayOfInt[0] = paramString.size();
    }
    localIntent.setAction("android.intent.action.EDIT");
    paramPackageManager = paramPackageManager.queryIntentActivities(localIntent, 0);
    if (paramComparator != null) {
      Collections.sort(paramPackageManager, paramComparator);
    }
    paramPackageManager = paramPackageManager.iterator();
    while (paramPackageManager.hasNext())
    {
      paramUri = (ResolveInfo)paramPackageManager.next();
      if (!paramString.contains(paramUri)) {
        paramString.add(paramUri);
      }
    }
    if ((paramArrayOfInt != null) && (2 == paramArrayOfInt.length)) {
      paramArrayOfInt[1] = (paramString.size() - paramArrayOfInt[0]);
    }
    return paramString;
  }
  
  public static void a(Activity paramActivity)
  {
    synchronized (u)
    {
      u.clear();
      paramActivity = paramActivity.getFilesDir();
      if (paramActivity == null) {
        return;
      }
      paramActivity = new File(paramActivity.getAbsolutePath() + '/' + w);
      if (paramActivity.exists()) {
        paramActivity.delete();
      }
      return;
    }
  }
  
  public static void a(Activity paramActivity, String paramString, u paramu)
  {
    localHashMap = u;
    if (paramu == null) {}
    for (;;)
    {
      try
      {
        u.remove(paramString.toLowerCase(Locale.getDefault()));
        b(paramActivity);
        return;
      }
      finally {}
      paramString = (u)u.put(paramString.toLowerCase(Locale.getDefault()), paramu);
    }
  }
  
  public static void a(v paramv)
  {
    String str = f + "/icon_" + f.hashCode();
    if (new File(str).exists()) {
      k = BitmapFactory.decodeFile(str);
    }
  }
  
  private void a(y paramy)
  {
    paramy = (v)d;
    String str = b;
    if (str == null) {
      return;
    }
    new y("http://www.estrongs.com/channel?aid=" + str).c();
    y = true;
  }
  
  private void a(v[] paramArrayOfv)
  {
    for (;;)
    {
      Object localObject1;
      HashMap localHashMap1;
      HashMap localHashMap2;
      Object localObject2;
      Object localObject3;
      try
      {
        localObject1 = new File(j);
        localHashMap1 = new HashMap();
        localHashMap2 = new HashMap();
        try
        {
          if (((File)localObject1).exists())
          {
            localObject1 = new DataInputStream(new FileInputStream((File)localObject1));
            localObject2 = new BufferedReader(new InputStreamReader((InputStream)localObject1));
            localObject3 = ((BufferedReader)localObject2).readLine();
            if (localObject3 == null) {
              continue;
            }
            localObject3 = ((String)localObject3).split("######");
            if (localObject3.length != 3) {
              continue;
            }
            localHashMap1.put(localObject3[0], Integer.valueOf(Integer.parseInt(localObject3[1])));
            localHashMap2.put(localObject3[0], Long.valueOf(Long.parseLong(localObject3[2])));
            continue;
          }
        }
        catch (Exception paramArrayOfv) {}
        return;
      }
      finally {}
      ((DataInputStream)localObject1).close();
      int i1 = 0;
      if (i1 < paramArrayOfv.length)
      {
        localObject2 = (Integer)localHashMap1.get(f);
        localObject1 = (Long)localHashMap2.get(f);
        localObject3 = paramArrayOfv[i1];
        int i2;
        if (localObject2 == null)
        {
          i2 = 0;
          q = i2;
          localObject2 = paramArrayOfv[i1];
          if (localObject1 == null)
          {
            l1 = 0L;
            t = l1;
            if ((q != 1) && (q != 3) && (q != 4)) {
              break label400;
            }
            localObject1 = new File(a(f));
            if ((((File)localObject1).exists()) && (((File)localObject1).length() != 0L) && (t != 0L)) {
              continue;
            }
            q = 0;
            break label400;
          }
        }
        else
        {
          i2 = ((Integer)localObject2).intValue();
          continue;
        }
        long l1 = ((Long)localObject1).longValue();
        continue;
        if (q == 1) {
          q = 4;
        }
        u = ((File)localObject1).length();
        if (u == t) {
          q = 3;
        }
        label400:
        i1 += 1;
      }
    }
  }
  
  public static t[] a(Context paramContext, Intent paramIntent)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    Object localObject = paramIntent.getType();
    Uri localUri = paramIntent.getData();
    int[] arrayOfInt = new int[2];
    int[] tmp23_21 = arrayOfInt;
    tmp23_21[0] = 0;
    int[] tmp27_23 = tmp23_21;
    tmp27_23[1] = 0;
    tmp27_23;
    paramIntent = "";
    if (localUri != null) {
      paramIntent = localUri.getPath();
    }
    if (("*/*".equals(localObject)) && ((paramIntent == null) || ("".equals(paramIntent))))
    {
      localObject = a(localPackageManager, paramIntent);
      arrayOfInt[0] = ((List)localObject).size();
    }
    for (;;)
    {
      return a(paramContext, localPackageManager, (List)localObject, arrayOfInt, paramIntent);
      localObject = a(localPackageManager, (String)localObject, localUri, arrayOfInt, null);
    }
  }
  
  private static t[] a(Context paramContext, PackageManager paramPackageManager, List<ResolveInfo> paramList, int[] paramArrayOfInt, String paramString)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    localArrayList = new ArrayList();
    int i5 = paramList.size();
    int i3 = 0;
    if (i3 < i5)
    {
      ResolveInfo localResolveInfo = (ResolveInfo)paramList.get(i3);
      if (!activityInfo.exported) {}
      label91:
      label145:
      do
      {
        do
        {
          i3 += 1;
          break;
          int i4 = 0;
          Object localObject1 = o;
          int i6 = localObject1.length;
          int i1 = 0;
          int i2 = i4;
          if (i1 < i6)
          {
            if (!localObject1[i1].equals(activityInfo.name)) {
              break label312;
            }
            i2 = 1;
          }
          localObject1 = null;
          try
          {
            localObject2 = localResolveInfo.loadLabel(paramPackageManager);
            if (localObject2 != null) {
              break label321;
            }
            localObject1 = "";
          }
          catch (Exception localException)
          {
            for (;;)
            {
              Object localObject2;
              t localt;
            }
          }
        } while (TextUtils.isEmpty((CharSequence)localObject1));
        i1 = i2;
        if ("none".equalsIgnoreCase((String)localObject1))
        {
          i1 = i2;
          if (i()) {
            i1 = 1;
          }
        }
      } while (i1 != 0);
      localt = new t();
      c = activityInfo.packageName;
      d = activityInfo.name;
      a = localResolveInfo.loadIcon(paramPackageManager);
      if (i3 >= paramArrayOfInt[0])
      {
        localObject2 = "android.intent.action.EDIT";
        label244:
        e = ((String)localObject2);
        b = ((String)localObject1);
        i4 = localArrayList.size();
        i2 = 0;
      }
      for (;;)
      {
        if (i2 >= i4) {
          break label491;
        }
        if (((t)localArrayList.get(i2)).a(localt) == 0)
        {
          i1 = 1;
          if (i1 != 0) {
            break;
          }
          localArrayList.add(localt);
          break;
          label312:
          i1 += 1;
          break label91;
          label321:
          localObject2 = localObject2.toString();
          localObject1 = localObject2;
          break label145;
          localObject2 = "android.intent.action.VIEW";
          break label244;
        }
        i2 += 1;
      }
    }
    try
    {
      if ((!bd.a(paramString)) && (aa.b()) && ((bc.f(paramString)) || (bc.c(paramString))))
      {
        paramPackageManager = new t();
        c = paramContext.getPackageName();
        d = PopChromecastPlayer.class.getName();
        a = paramContext.getResources().getDrawable(2130837726);
        e = "android.intent.action.VIEW";
        b = paramContext.getString(2131428533);
        localArrayList.add(paramPackageManager);
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
      Collections.sort(localArrayList);
      return (t[])localArrayList.toArray(new t[i1]);
    }
    i1 = localArrayList.size();
    if (i1 == 0) {
      return null;
    }
  }
  
  public static n b()
  {
    try
    {
      if (t == null) {
        t = new n();
      }
      n localn = t;
      return localn;
    }
    finally {}
  }
  
  private static String b(String paramString)
  {
    int i1 = paramString.lastIndexOf('.');
    if (i1 == -1) {
      return paramString;
    }
    return paramString.substring(0, i1) + "_s" + paramString.substring(i1);
  }
  
  private static void b(Activity arg0)
  {
    ??? = ???.getFilesDir();
    if (??? == null) {
      return;
    }
    ??? = new File(???.getAbsolutePath() + '/' + w);
    if (???.exists()) {
      ???.delete();
    }
    try
    {
      BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(???));
      synchronized (u)
      {
        Iterator localIterator = u.entrySet().iterator();
        if (localIterator.hasNext())
        {
          Object localObject2 = (Map.Entry)localIterator.next();
          String str = (String)((Map.Entry)localObject2).getKey();
          localObject2 = (u)((Map.Entry)localObject2).getValue();
          localBufferedWriter.write(str + "######" + a + "######" + b);
          if (c != null) {
            localBufferedWriter.write("######" + c);
          }
          localBufferedWriter.write("\r\n");
        }
      }
    }
    catch (Exception ???)
    {
      return;
    }
    ((BufferedWriter)localObject1).flush();
    ((BufferedWriter)localObject1).close();
  }
  
  public static void b(v paramv, int paramInt)
  {
    String str = h + "/" + f.hashCode() + "/" + d[paramInt];
    if (new File(str).exists()) {
      n[paramInt] = BitmapFactory.decodeFile(str);
    }
  }
  
  private int c(String paramString)
  {
    paramString = new File(paramString);
    int i1;
    Object localObject4;
    try
    {
      if (!paramString.exists()) {
        return -1;
      }
      i1 = Long.valueOf(paramString.length()).intValue();
      localObject3 = new byte[i1];
      Object localObject1 = new RandomAccessFile(paramString, "r");
      ((RandomAccessFile)localObject1).read((byte[])localObject3, 0, i1);
      ((RandomAccessFile)localObject1).close();
      localObject1 = new ByteArrayOutputStream();
      localObject3 = new InflaterInputStream(new ByteArrayInputStream((byte[])localObject3));
      localObject4 = new byte['Ѐ'];
      for (;;)
      {
        i1 = ((InflaterInputStream)localObject3).read((byte[])localObject4, 0, 1024);
        if (i1 <= 0) {
          break;
        }
        ((ByteArrayOutputStream)localObject1).write((byte[])localObject4, 0, i1);
      }
      ((InflaterInputStream)localObject3).close();
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      paramString.delete();
      return -1;
    }
    Object localObject3 = new String(localException.toByteArray());
    localException.close();
    Object localObject2 = new JSONParser().parse((String)localObject3);
    k = ((String)((Map)localObject2).get("channel_title"));
    l = ((String)((Map)localObject2).get("pic_url"));
    localObject3 = (String)((Map)localObject2).get("hash_code");
    if ((d != null) && (d.equals(localObject3)) && (q != null)) {
      return 0;
    }
    d = (String)localObject3;
    localObject3 = ((Map)localObject2).get("content");
    label732:
    boolean bool;
    label861:
    label886:
    int i2;
    if ((localObject3 instanceof JSONArray))
    {
      localObject2 = new v[((JSONArray)localObject3).size()];
      localObject3 = ((JSONArray)localObject3).iterator();
      i1 = 0;
      if (((Iterator)localObject3).hasNext())
      {
        localObject4 = ((Iterator)localObject3).next();
        v localv = new v();
        a = ((String)((Map)localObject4).get("icon"));
        c = ((String)((Map)localObject4).get("title"));
        d = ((String)((Map)localObject4).get("pic")).split(",");
        l = new Bitmap[d.length];
        m = new y[d.length];
        n = new Bitmap[d.length];
        o = new y[d.length];
        s = ((String)((Map)localObject4).get("size"));
        b = ((String)((Map)localObject4).get("aid"));
        f = ((String)((Map)localObject4).get("package"));
        e = ((String)((Map)localObject4).get("url"));
        g = ((String)((Map)localObject4).get("shortDesc"));
        h = ((String)((Map)localObject4).get("longDesc"));
        i = ((String)((Map)localObject4).get("version"));
        j = ((String)((Map)localObject4).get("types"));
        A = HttpUtils.getInt(localObject4, "flags");
        C = ((String)((Map)localObject4).get("market_url"));
        B = ((String)((Map)localObject4).get("alias_name"));
        if (j == null)
        {
          if ((f.equalsIgnoreCase("cn.wps.moffice_eng")) || (f.equalsIgnoreCase("cn.wps.moffice"))) {
            j = "text/plain;application/msexcel;application/ms-excel;application/vnd.ms-excel;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application/vnd.openxmlformats-officedocument.spreadsheetml.template;application/mspowerpoint;application/ms-powerpoint;application/vnd.ms-powerpoint;application/vnd.openxmlformats-officedocument.presentationml.presentation;application/vnd.openxmlformats-officedocument.presentationml.template;application/vnd.openxmlformats-officedocument.presentationml.slideshow;application/msword;application/ms-word;application/vnd.ms-word;application/vnd.ms-works;application/vnd.openxmlformats-officedocument.wordprocessingml.document;application/vnd.openxmlformats-officedocument.wordprocessingml.template;application/octet-stream;application/log;application/kswps;application/kset;application/ksdps;application/wps;application/et;application/dps;application/dpt;application/wpt;application/ett";
          }
        }
        else
        {
          v = b(localv);
          if (HttpUtils.getInt(localObject4, "show") != 0) {
            break label861;
          }
          w = false;
        }
        for (;;)
        {
          x = HttpUtils.getInt(localObject4, "vcode");
          if (HttpUtils.getInt(localObject4, "root_recomm") != 1) {
            break label1126;
          }
          bool = true;
          z = bool;
          localObject2[i1] = localv;
          i1 += 1;
          break;
          if ((!f.equalsIgnoreCase("com.uc.browser")) && (!f.equalsIgnoreCase("com.uc.browser.hd")) && (!f.equalsIgnoreCase("com.uc.browser.en"))) {
            break label732;
          }
          j = "text/plain;text/html";
          break label732;
          if (e == null) {
            w = false;
          }
        }
      }
      if (q != null)
      {
        i1 = 0;
        if (i1 >= localObject2.length) {
          break label1104;
        }
        i2 = 0;
      }
    }
    for (;;)
    {
      if (i2 < q.length)
      {
        if (!qf.equals(f)) {
          break label1139;
        }
        k = qk;
        if (Arrays.equals(d, qd))
        {
          n = qn;
          o = qo;
          l = ql;
          m = qm;
        }
        p = qp;
        q = qq;
        r = qr;
        t = qt;
        u = qu;
        break label1132;
        a((v[])localObject2);
        label1104:
        if ((localObject2.length != 0) && (!p)) {
          q = (v[])localObject2;
        }
        return 1;
        return -1;
        label1126:
        bool = false;
        break;
      }
      label1132:
      i1 += 1;
      break label886;
      label1139:
      i2 += 1;
    }
  }
  
  public static void c(v paramv, int paramInt)
  {
    String str = g + "/" + f.hashCode() + "/" + b(d[paramInt]);
    if (new File(str).exists()) {
      l[paramInt] = BitmapFactory.decodeFile(str);
    }
  }
  
  private static boolean d(Context arg0)
  {
    for (;;)
    {
      Object localObject2;
      try
      {
        ??? = ???.getFilesDir();
        if (??? == null) {
          return false;
        }
        ??? = new File(???.getAbsolutePath() + '/' + w);
        if (!???.exists()) {
          return true;
        }
        DataInputStream localDataInputStream = new DataInputStream(new FileInputStream(???));
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localDataInputStream));
        synchronized (u)
        {
          u.clear();
          localObject2 = localBufferedReader.readLine();
          if (localObject2 == null) {
            break;
          }
          localObject2 = ((String)localObject2).split("######");
          if (3 == localObject2.length) {
            u.put(localObject2[0], new u(localObject2[1], localObject2[2], null));
          }
        }
        if (4 != localObject2.length) {
          continue;
        }
      }
      catch (Exception ???)
      {
        return false;
      }
      u.put(localObject2[0], new u(localObject2[1], localObject2[2], localObject2[3]));
    }
    ((DataInputStream)localObject1).close();
    return true;
  }
  
  private boolean f(v paramv)
  {
    if (!w) {}
    do
    {
      return false;
      if (!FexApplication.a().m()) {
        return true;
      }
      if ((e != null) && (e.startsWith("market://"))) {
        return true;
      }
    } while ((C == null) || (C.length() <= 0));
    return true;
  }
  
  private void g(v paramv)
  {
    File localFile = new File(a(f));
    switch (q)
    {
    case 1: 
    default: 
    case 0: 
    case 2: 
    case 3: 
      do
      {
        return;
        int i1 = v;
        v = b(paramv);
        localFile.delete();
        return;
        localFile.delete();
        return;
        v = b(paramv);
        if (v == 3)
        {
          localFile.delete();
          q = 0;
          return;
        }
      } while (((v != 1) && (v != 2)) || ((localFile.exists()) && (localFile.length() != 0L)));
      localFile.delete();
      q = 0;
      return;
    }
    localFile.delete();
    q = 0;
    v = b(paramv);
  }
  
  private static boolean i()
  {
    if (-1 == n) {
      if (!bd.o()) {
        break label28;
      }
    }
    label28:
    for (int i1 = 1;; i1 = 0)
    {
      n = i1;
      if (1 != n) {
        break;
      }
      return true;
    }
    return false;
  }
  
  /* Error */
  private void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 105	com/estrongs/android/pop/view/utils/n:q	[Lcom/estrongs/android/pop/view/utils/v;
    //   5: astore 4
    //   7: aload 4
    //   9: ifnonnull +6 -> 15
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: new 255	java/io/File
    //   18: dup
    //   19: getstatic 86	com/estrongs/android/pop/view/utils/n:j	Ljava/lang/String;
    //   22: invokespecial 264	java/io/File:<init>	(Ljava/lang/String;)V
    //   25: astore 4
    //   27: aload 4
    //   29: invokevirtual 270	java/io/File:delete	()Z
    //   32: pop
    //   33: new 546	java/io/BufferedWriter
    //   36: dup
    //   37: new 548	java/io/FileWriter
    //   40: dup
    //   41: aload 4
    //   43: invokespecial 549	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   46: invokespecial 552	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   49: astore 5
    //   51: iconst_0
    //   52: istore_1
    //   53: iload_1
    //   54: getstatic 105	com/estrongs/android/pop/view/utils/n:q	[Lcom/estrongs/android/pop/view/utils/v;
    //   57: arraylength
    //   58: if_icmpge +116 -> 174
    //   61: getstatic 105	com/estrongs/android/pop/view/utils/n:q	[Lcom/estrongs/android/pop/view/utils/v;
    //   64: iload_1
    //   65: aaload
    //   66: getfield 293	com/estrongs/android/pop/view/utils/v:f	Ljava/lang/String;
    //   69: astore 6
    //   71: new 52	java/lang/StringBuilder
    //   74: dup
    //   75: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   78: ldc_w 407
    //   81: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: getstatic 105	com/estrongs/android/pop/view/utils/n:q	[Lcom/estrongs/android/pop/view/utils/v;
    //   87: iload_1
    //   88: aaload
    //   89: getfield 374	com/estrongs/android/pop/view/utils/v:q	I
    //   92: invokevirtual 299	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   95: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: astore 4
    //   100: getstatic 105	com/estrongs/android/pop/view/utils/n:q	[Lcom/estrongs/android/pop/view/utils/v;
    //   103: iload_1
    //   104: aaload
    //   105: getfield 376	com/estrongs/android/pop/view/utils/v:t	J
    //   108: lstore_2
    //   109: lload_2
    //   110: lconst_0
    //   111: lcmp
    //   112: ifgt +8 -> 120
    //   115: ldc_w 774
    //   118: astore 4
    //   120: aload 5
    //   122: new 52	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   129: aload 6
    //   131: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 347
    //   137: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload 4
    //   142: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: ldc_w 347
    //   148: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: lload_2
    //   152: invokevirtual 777	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   155: ldc_w 576
    //   158: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokevirtual 573	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   167: iload_1
    //   168: iconst_1
    //   169: iadd
    //   170: istore_1
    //   171: goto -118 -> 53
    //   174: aload 5
    //   176: invokevirtual 579	java/io/BufferedWriter:flush	()V
    //   179: aload 5
    //   181: invokevirtual 580	java/io/BufferedWriter:close	()V
    //   184: goto -172 -> 12
    //   187: astore 4
    //   189: goto -177 -> 12
    //   192: astore 4
    //   194: aload_0
    //   195: monitorexit
    //   196: aload 4
    //   198: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	this	n
    //   52	119	1	i1	int
    //   108	44	2	l1	long
    //   5	136	4	localObject1	Object
    //   187	1	4	localException	Exception
    //   192	5	4	localObject2	Object
    //   49	131	5	localBufferedWriter	BufferedWriter
    //   69	61	6	str	String
    // Exception table:
    //   from	to	target	type
    //   33	51	187	java/lang/Exception
    //   53	109	187	java/lang/Exception
    //   120	167	187	java/lang/Exception
    //   174	184	187	java/lang/Exception
    //   2	7	192	finally
    //   15	33	192	finally
    //   33	51	192	finally
    //   53	109	192	finally
    //   120	167	192	finally
    //   174	184	192	finally
  }
  
  public long a(Context paramContext)
  {
    if (a == 0L) {}
    for (long l1 = ad.a(paramContext).D();; l1 = a) {
      return new Date().getTime() - l1;
    }
  }
  
  public Handler a(Handler paramHandler)
  {
    synchronized (r)
    {
      Handler localHandler = s;
      s = paramHandler;
      return localHandler;
    }
  }
  
  public void a()
  {
    a(d(), 4);
    g();
  }
  
  public void a(Message paramMessage, long paramLong)
  {
    synchronized (r)
    {
      if (s != null)
      {
        if (paramLong != 0L) {
          s.sendMessageDelayed(paramMessage, paramLong);
        }
      }
      else {
        return;
      }
      s.sendMessage(paramMessage);
    }
  }
  
  public void a(v paramv, int paramInt)
  {
    if (r != null)
    {
      if ((q == 1) || (q == 5)) {
        q = paramInt;
      }
      r.b();
      r = null;
    }
    u = 0L;
    j();
  }
  
  public void a(boolean paramBoolean)
  {
    Object localObject2 = Locale.getDefault().toString();
    int i1 = ((String)localObject2).indexOf('_');
    Object localObject1 = localObject2;
    if (i1 > 0) {
      localObject1 = ((String)localObject2).substring(0, i1);
    }
    if (e.a != null)
    {
      if ((e.a.equalsIgnoreCase("CN")) || (e.a.equalsIgnoreCase("TW"))) {
        localObject1 = "zh";
      }
    }
    else
    {
      if (c != 0) {
        break label272;
      }
      if (d != null) {
        break label230;
      }
      localObject1 = "http://www.estrongs.com/channel?" + "l=" + (String)localObject1;
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (paramBoolean) {
        localObject2 = (String)localObject1 + "&s=1";
      }
      localObject1 = new y((String)localObject2);
      ((y)localObject1).a(new o(this));
      ((y)localObject1).a(localObject1);
      ((y)localObject1).a(b + ".tmp");
      ((y)localObject1).c();
      m = true;
      a = new Date().getTime();
      ad.a(FexApplication.a()).c(a);
      return;
      localObject1 = "en";
      break;
      label230:
      localObject1 = "http://www.estrongs.com/channel?" + "l=" + (String)localObject1 + "&v=" + d;
      continue;
      label272:
      if (d == null) {
        localObject1 = "http://www.estrongs.com/channel?" + "id=" + c + "&l=" + (String)localObject1;
      } else {
        localObject1 = "http://www.estrongs.com/channel?" + "id=" + c + "&l=" + (String)localObject1 + "&v=" + d;
      }
    }
  }
  
  public void a(v[] paramArrayOfv, int paramInt)
  {
    if (paramArrayOfv == null) {
      return;
    }
    int i1 = 0;
    while (i1 < paramArrayOfv.length)
    {
      v localv = paramArrayOfv[i1];
      if (r != null)
      {
        if ((q == 1) || (q == 5)) {
          q = paramInt;
        }
        r.b();
        r = null;
      }
      u = 0L;
      i1 += 1;
    }
    j();
  }
  
  public int b(v paramv)
  {
    try
    {
      Object localObject = FexApplication.a();
      if (localObject == null) {
        return 0;
      }
      localObject = ((FexApplication)localObject).getPackageManager().getPackageInfo(f, 0);
      if (localObject == null) {
        return 1;
      }
      if (x == -1) {
        return 3;
      }
      int i1 = versionCode;
      int i2 = x;
      if (i1 < i2) {
        return 2;
      }
      return 3;
    }
    catch (PackageManager.NameNotFoundException paramv) {}
    return 1;
  }
  
  public v[] b(Context paramContext)
  {
    if (FexApplication.a().m()) {
      return null;
    }
    if (!ak.b()) {
      return null;
    }
    paramContext = new ArrayList();
    if (q != null)
    {
      int i1 = 0;
      while (i1 < q.length)
      {
        if ((qz) && (!w.a(qf))) {
          paramContext.add(q[i1]);
        }
        i1 += 1;
      }
    }
    if (paramContext.size() == 0) {
      return null;
    }
    v[] arrayOfv = new v[paramContext.size()];
    paramContext.toArray(arrayOfv);
    return arrayOfv;
  }
  
  public void c()
  {
    a(false);
  }
  
  public boolean c(v paramv)
  {
    if ((e == null) || (!e.startsWith("http"))) {
      return false;
    }
    y localy = new y(e);
    localy.a(a(f));
    localy.a(localy);
    d = paramv;
    localy.a(new p(this));
    r = localy;
    if (q == 4) {
      localy.f();
    }
    for (;;)
    {
      return true;
      localy.c();
    }
  }
  
  public v[] c(Context paramContext)
  {
    if (z.g)
    {
      boolean bool = FexApplication.a().m();
      paramContext = new ArrayList();
      if (q != null)
      {
        int i1 = 0;
        while (i1 < q.length)
        {
          if ((q[i1].a()) && ((!bool) || (q[i1].c() != null))) {
            paramContext.add(q[i1]);
          }
          i1 += 1;
        }
      }
      if (paramContext.size() == 0) {
        return null;
      }
      v[] arrayOfv = new v[paramContext.size()];
      paramContext.toArray(arrayOfv);
      return arrayOfv;
    }
    return null;
  }
  
  public Bitmap d(v paramv)
  {
    if (k != null) {
      return k;
    }
    a(paramv);
    if ((k == null) && (a.startsWith("http://"))) {
      b().e(paramv);
    }
    return k;
  }
  
  public Bitmap d(v paramv, int paramInt)
  {
    if (n[paramInt] != null) {
      return n[paramInt];
    }
    b(paramv, paramInt);
    if (n[paramInt] == null) {
      b().f(paramv, paramInt);
    }
    return n[paramInt];
  }
  
  public v[] d()
  {
    v[] arrayOfv = null;
    int i4 = 0;
    if ((q == null) || (p))
    {
      d = null;
      if (c(b) < 0) {
        arrayOfv = new v[0];
      }
      while (q == null) {
        return arrayOfv;
      }
    }
    p = false;
    int i1 = 0;
    int i3;
    for (int i2 = 0; i1 < q.length; i2 = i3)
    {
      i3 = i2;
      if (f(q[i1])) {
        i3 = i2 + 1;
      }
      i1 += 1;
    }
    if (i2 == q.length) {
      return q;
    }
    arrayOfv = new v[i2];
    i2 = 0;
    i1 = i4;
    while (i1 < q.length)
    {
      i3 = i2;
      if (f(q[i1]))
      {
        arrayOfv[i2] = q[i1];
        i3 = i2 + 1;
      }
      i1 += 1;
      i2 = i3;
    }
    return arrayOfv;
  }
  
  public Bitmap e(v paramv, int paramInt)
  {
    if (l[paramInt] != null) {
      return l[paramInt];
    }
    c(paramv, paramInt);
    if (l[paramInt] == null) {
      b().g(paramv, paramInt);
    }
    return l[paramInt];
  }
  
  public void e()
  {
    if (q != null)
    {
      int i1 = 0;
      while (i1 < q.length)
      {
        g(q[i1]);
        i1 += 1;
      }
    }
  }
  
  public void e(v paramv)
  {
    y localy = new y(a);
    d = paramv;
    localy.a(f + "/icon_" + f.hashCode());
    localy.a(localy);
    localy.a(new q(this));
    localy.c();
  }
  
  public void f()
  {
    if (p)
    {
      a(q, 4);
      g();
      q = null;
      p = false;
    }
  }
  
  public void f(v paramv, int paramInt)
  {
    if (o[paramInt] != null) {
      return;
    }
    y localy = new y(l + d[paramInt]);
    d = paramv;
    e = Integer.valueOf(paramInt);
    localy.a(h + "/" + f.hashCode() + "/" + d[paramInt]);
    localy.a(localy);
    localy.a(new r(this));
    localy.c();
    o[paramInt] = localy;
  }
  
  public void g()
  {
    if (q != null)
    {
      int i1 = 0;
      while (i1 < q.length)
      {
        if (qk != null)
        {
          qk.recycle();
          qk = null;
        }
        i1 += 1;
      }
    }
  }
  
  public void g(v paramv, int paramInt)
  {
    if (m[paramInt] != null) {
      return;
    }
    String str = b(d[paramInt]);
    y localy = new y(l + str);
    d = paramv;
    e = Integer.valueOf(paramInt);
    localy.a(g + "/" + f.hashCode() + "/" + str);
    localy.a(localy);
    localy.a(new s(this));
    localy.c();
    m[paramInt] = localy;
  }
  
  public boolean h()
  {
    return m;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */