package com.estrongs.android.g;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.util.ap;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.x;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbRandomAccessFile;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public class a
  extends f
{
  private static a e = null;
  private static Object f = new Object();
  private String c = "ESHttpServer";
  private String d = null;
  private String[] g = { ".srt", ".ass", ".ssa", ".smi", ".psb", ".pjs", ".stl", ".vsf", ".zeg", ".sub", ".idx", ".sst", ".son" };
  
  public a(String paramString, int paramInt)
  {
    super(paramInt);
    d = paramString;
  }
  
  public static int a()
  {
    synchronized (f)
    {
      if (e != null)
      {
        int i = ea;
        return i;
      }
      return 0;
    }
  }
  
  private j a(String paramString, long paramLong1, long paramLong2)
  {
    int i = ap.I(paramString);
    Object localObject;
    long l2;
    long l1;
    if (i == 1) {
      for (;;)
      {
        try
        {
          localObject = new SmbFile(a(com.estrongs.fs.impl.u.b.a(paramString), null));
          if (!((SmbFile)localObject).exists()) {
            return new j(this, "404 Not Found", "text/plain", "Not Found");
          }
          paramString = new SmbRandomAccessFile((SmbFile)localObject, "r");
          if (paramLong1 != 0L) {
            paramString.seek(paramLong1);
          }
          paramString = new com.estrongs.fs.impl.u.c(paramString, paramLong2);
          if (paramLong1 == 0L)
          {
            paramString = new j(this, "200 OK", "application/octet-stream", paramString);
            l2 = ((SmbFile)localObject).length();
            l1 = paramLong2;
            if (paramLong2 == 0L) {
              l1 = l2 - paramLong1;
            }
            paramString.a("Content-Length", "" + l1);
            paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l1 - 1L) + "/" + l2);
            paramString.a("Accept-Ranges", "bytes");
            return paramString;
          }
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return new j(this, "500 Internal Server Error", "text/plain", paramString.toString());
        }
        paramString = new j(this, "206 Partial Content", "application/octet-stream", paramString);
      }
    }
    if ((i == 2) || (i == 5) || (i == 21) || (i == 22) || (i == 19) || (i == 20))
    {
      if ((i == 21) || (i == 22)) {}
      for (;;)
      {
        try
        {
          paramString = a(paramString, null);
          l1 = com.estrongs.fs.impl.w.b.b(paramString);
          paramString = com.estrongs.fs.impl.w.b.a(paramString, paramLong1, null);
          if (paramString != null) {
            break;
          }
          paramString = new j(this, "404 Not Found", "text/plain", "");
          return paramString;
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return new j(this, "404 Not Found", "text/plain", paramString.toString());
        }
        localObject = d.n(ap.bP(paramString));
        paramString = a(paramString, (com.estrongs.old.fs.a)localObject);
        l1 = ((com.estrongs.old.fs.a)localObject).e(paramString);
        paramString = ((com.estrongs.old.fs.a)localObject).a(paramString, paramLong1);
      }
      if (paramLong1 == 0L)
      {
        paramString = new j(this, "200 OK", "application/octet-stream", paramString);
        break label1109;
        paramString.a("Content-Length", "" + l2);
        paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l2 - 1L) + "/" + l1);
        paramString.a("Accept-Ranges", "bytes");
        return paramString;
      }
      else
      {
        paramString = new j(this, "206 Partial Content", "application/octet-stream", paramString);
      }
    }
    else
    {
      if ((i == 4) || (i == 23))
      {
        try
        {
          paramString = a(paramString, null);
          l2 = com.estrongs.fs.impl.o.b.h(paramString);
          paramString = com.estrongs.fs.impl.o.b.c(paramString, paramLong1);
          if (paramString == null)
          {
            paramString = new j(this, "404 Not Found", "text/plain", "");
            return paramString;
          }
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return new j(this, "404 Not Found", "text/plain", paramString.toString());
        }
        if (paramLong1 == 0L)
        {
          paramString = new j(this, "200 OK", "application/octet-stream", paramString);
          break label1129;
          label635:
          paramString.a("Content-Length", "" + l1);
          paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l1 - 1L) + "/" + l2);
          paramString.a("Accept-Ranges", "bytes");
          return paramString;
        }
        paramString = new j(this, "206 Partial Content", "application/octet-stream", paramString);
        break label1129;
      }
      if ((i == 3) || (i == 33))
      {
        try
        {
          paramString = a(paramString, null);
          l2 = d.a().d(paramString);
          paramString = d.a().a(paramString, paramLong1);
          if (paramLong1 != 0L) {
            break label905;
          }
          paramString = new j(this, "200 OK", "application/octet-stream", paramString);
        }
        catch (Exception paramString)
        {
          label798:
          paramString.printStackTrace();
          return new j(this, "500 Internal Server Error", "text/plain", paramString.toString());
        }
        paramString.a("Content-Length", "" + l1);
        paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l1 - 1L) + "/" + l2);
        paramString.a("Accept-Ranges", "bytes");
        return paramString;
        label905:
        paramString = new j(this, "206 Partial Content", "application/octet-stream", paramString);
        break label1149;
      }
      if (i != 36) {}
    }
    for (;;)
    {
      try
      {
        l2 = ke;
        paramString = d.a().a(paramString, paramLong1);
        if (paramLong1 != 0L) {
          break label1077;
        }
        paramString = new j(this, "200 OK", "application/octet-stream", paramString);
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return new j(this, "500 Internal Server Error", "text/plain", paramString.toString());
      }
      paramString.a("Content-Length", "" + l1);
      paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l1 - 1L) + "/" + l2);
      paramString.a("Accept-Ranges", "bytes");
      return paramString;
      label1077:
      paramString = new j(this, "206 Partial Content", "application/octet-stream", paramString);
      break label1169;
      return new j(this, "400 Bad Request", "text/plain", "Not Supported");
      label1109:
      l2 = paramLong2;
      if (paramLong2 != 0L) {
        break;
      }
      l2 = l1 - paramLong1;
      break;
      label1129:
      l1 = paramLong2;
      if (paramLong2 != 0L) {
        break label635;
      }
      l1 = l2 - paramLong1;
      break label635;
      label1149:
      l1 = paramLong2;
      if (paramLong2 != 0L) {
        break label798;
      }
      l1 = l2 - paramLong1;
      break label798;
      label1169:
      l1 = paramLong2;
      if (paramLong2 == 0L) {
        l1 = l2 - paramLong1;
      }
    }
  }
  
  public static InputStream a(String paramString)
  {
    if ((paramString != null) && (!paramString.trim().equals(""))) {
      try
      {
        paramString = new ByteArrayInputStream(paramString.getBytes("utf-8"));
        return paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
    }
    return null;
  }
  
  private String a(long paramLong)
  {
    long l2 = com.estrongs.fs.util.j.a(paramLong);
    String str2 = b(2131232204).toString();
    long l1 = l2;
    if (l2 == 0L) {
      l1 = 1L;
    }
    String str1;
    if (l1 >= 1073741824L) {
      str1 = "GB";
    }
    for (;;)
    {
      return com.estrongs.fs.util.j.a(paramLong, l1) + " " + str1 + " (" + com.estrongs.fs.util.j.d(paramLong) + " " + str2 + ")";
      if (l1 >= 1048576L) {
        str1 = "MB";
      } else if (l1 >= 1024L) {
        str1 = "KB";
      } else {
        str1 = str2;
      }
    }
  }
  
  private String b(int paramInt)
  {
    return FexApplication.a().getText(paramInt).toString();
  }
  
  public static boolean b()
  {
    boolean bool1 = true;
    synchronized (f)
    {
      if ((e != null) && (e.c())) {
        return true;
      }
      a locala = e;
      if (locala == null) {}
    }
    try
    {
      e.h();
      e = null;
      int i = 0;
      for (;;)
      {
        if (i < 5) {
          try
          {
            e = new a("/sdcard", 59777 + i);
            int j = 1000;
            while (j > 0)
            {
              boolean bool2 = e.c();
              if (bool2)
              {
                return bool1;
                localObject2 = finally;
                throw ((Throwable)localObject2);
              }
              Thread.sleep(200L);
              j -= 200;
            }
          }
          catch (Exception localException1)
          {
            e = null;
            localException1.printStackTrace();
            i += 1;
          }
        }
      }
      return false;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        continue;
        bool1 = false;
      }
    }
  }
  
  public j a(int paramInt)
  {
    Object localObject2;
    PackageInfo localPackageInfo;
    Object localObject3;
    for (;;)
    {
      try
      {
        Object localObject1 = FexApplication.a().b(8192);
        localObject2 = new LinkedList();
        localObject1 = ((List)localObject1).iterator();
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localPackageInfo = (PackageInfo)((Iterator)localObject1).next();
        localObject3 = applicationInfo;
        if (paramInt == 0)
        {
          if (((flags & 0x80) == 0) && ((flags & 0x1) != 0)) {
            continue;
          }
          ((LinkedList)localObject2).add(localPackageInfo);
          continue;
        }
        if (paramInt != 1) {
          break label146;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return new j(this, "500 Internal Server Error", "text/plain", localException.toString());
      }
      if ((flags & 0x1) > 0)
      {
        ((LinkedList)localObject2).add(localPackageInfo);
        continue;
        label146:
        if (paramInt == 2)
        {
          if ((flags & 0x40000) == 0) {
            ((LinkedList)localObject2).add(localPackageInfo);
          }
        }
        else if (paramInt == 3)
        {
          if ((flags & 0x40000) != 0) {
            ((LinkedList)localObject2).add(localPackageInfo);
          }
        }
        else if (paramInt == 4) {
          ((LinkedList)localObject2).add(localPackageInfo);
        }
      }
    }
    for (;;)
    {
      String str;
      if (paramInt < ((LinkedList)localObject2).size())
      {
        localPackageInfo = (PackageInfo)((LinkedList)localObject2).get(paramInt);
        localObject3 = new File(applicationInfo.sourceDir);
        if (!((File)localObject3).exists()) {}
        for (long l = 0L;; l = ((File)localObject3).length())
        {
          str = localException + "{";
          str = str + "\"packageName\":\"" + packageName + "\"" + ", ";
          str = str + "\"label\":\"" + w.a(FexApplication.a().getPackageManager(), applicationInfo) + "\"" + ", ";
          str = str + "\"version\":\"" + versionName + "\"" + ", ";
          str = str + "\"versionCode\":\"" + versionCode + "\"" + ", ";
          localObject3 = applicationInfo.sourceDir;
          str = str + "\"location\":\"" + (String)localObject3 + "\"" + ", ";
          str = str + "\"size\":\"" + l + "\"" + ", ";
          str = str + "\"status\":\"" + applicationInfo.backupAgentName + "\"" + ", ";
          str = str + "\"mTime\":\"" + lastUpdateTime + "\"";
          if (paramInt >= ((LinkedList)localObject2).size() - 1) {
            break;
          }
          str = str + "},\r\n";
          break label801;
        }
        str = str + "}\r\n";
      }
      else
      {
        str = str + "]";
        localObject2 = new j(this, "200 OK", "text/plain", a(str));
        ((j)localObject2).a("Content-Length", "" + str.getBytes("utf-8").length);
        return (j)localObject2;
        str = "[\r\n";
        paramInt = 0;
        continue;
      }
      label801:
      paramInt += 1;
    }
  }
  
  public j a(String paramString1, String paramString2, Properties paramProperties1, Properties paramProperties2, Properties paramProperties3)
  {
    if (paramString1.startsWith("/estrongs_filemgr_oauth_result"))
    {
      paramString1 = CreateOAuthNetDisk.b();
      if (paramString1 != null) {
        paramString1.a(paramProperties2);
      }
      return null;
    }
    if (paramString2.equals("POST"))
    {
      localObject = new String(g());
      try
      {
        localObject = new JSONObject((String)localObject);
        String str = ((JSONObject)localObject).getString("command");
        if (str.equals("listFiles")) {
          return b(paramString1);
        }
        if (str.equals("listPics")) {
          return d();
        }
        if (str.equals("listVideos")) {
          return e();
        }
        if (str.equals("listAudios")) {
          return f();
        }
        if (str.equals("listApps")) {
          return a(0);
        }
        if (str.equals("listAppsSystem")) {
          return a(1);
        }
        if (str.equals("listAppsPhone")) {
          return a(2);
        }
        if (str.equals("listAppsSdcard")) {
          return a(3);
        }
        if (str.equals("listAppsAll")) {
          return a(4);
        }
        if (str.equals("getAppThumbnail")) {
          return d((JSONObject)localObject);
        }
        if (str.equals("appLaunch")) {
          return a((JSONObject)localObject);
        }
        if (str.equals("appPull")) {
          return c((JSONObject)localObject);
        }
        if (str.equals("getDeviceInfo"))
        {
          paramString1 = b((JSONObject)localObject);
          return paramString1;
        }
      }
      catch (JSONException paramString1)
      {
        paramString1.printStackTrace();
        return new j(this, "500 Internal Server Error", "text/plain", paramString1.toString());
      }
    }
    Object localObject = ap.bH(paramString1);
    if ((localObject == null) || (ap.I((String)localObject) == 0))
    {
      if (localObject == null) {
        return super.a(paramString1, paramString2, paramProperties1, paramProperties2, paramProperties3);
      }
      return super.a((String)localObject, paramString2, paramProperties1, paramProperties2, paramProperties3);
    }
    paramString1 = paramProperties1.getProperty("range");
    if ((paramString1 != null) && (paramString1.startsWith("bytes=")))
    {
      paramString2 = paramString1.substring("bytes=".length());
      int i = paramString2.indexOf('-');
      paramString1 = paramString2;
      if (i > 0) {
        paramString1 = paramString2.substring(0, i);
      }
    }
    for (;;)
    {
      try
      {
        l = Long.parseLong(paramString1);
        return a((String)localObject, l, 0L);
      }
      catch (NumberFormatException paramString1)
      {
        l = 0L;
        continue;
      }
      long l = 0L;
    }
  }
  
  public j a(JSONObject paramJSONObject)
  {
    for (;;)
    {
      try
      {
        paramJSONObject = paramJSONObject.getString("appPackageName");
        if (paramJSONObject != null)
        {
          new Intent();
          paramJSONObject = FexApplication.a().getPackageManager().getLaunchIntentForPackage(paramJSONObject);
          i = 0;
          if (paramJSONObject != null)
          {
            FexApplication.a().startActivity(paramJSONObject);
            paramJSONObject = "{" + "\"result\":\"" + i + "\"";
            paramJSONObject = paramJSONObject + "}";
            j localj = new j(this, "200 OK", "text/plain", a(paramJSONObject));
            localj.a("Content-Length", "" + paramJSONObject.getBytes("utf-8").length);
            return localj;
          }
        }
        else
        {
          paramJSONObject = new j(this, "500 Internal Server Error", "text/plain", "not found the package " + paramJSONObject);
          return paramJSONObject;
        }
      }
      catch (Exception paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        return new j(this, "500 Internal Server Error", "text/plain", paramJSONObject.toString());
      }
      int i = -1;
    }
  }
  
  String a(String paramString, com.estrongs.old.fs.a parama)
  {
    int j = 0;
    for (;;)
    {
      int i;
      try
      {
        Object localObject = ap.bR(paramString);
        i = 0;
        if ((i < g.length) && (!((String)localObject).equals(g[i]))) {
          break label304;
        }
        if (i >= g.length) {
          return paramString;
        }
        String str1 = ap.d(paramString);
        String str2 = str1.substring(0, str1.length() - ((String)localObject).length());
        if (d.a().b(paramString)) {
          break label302;
        }
        str1 = ap.bB(paramString);
        if (str1.endsWith("/")) {
          break label299;
        }
        str1 = str1 + "/";
        localObject = new b(this, (String)localObject, str2);
        if (parama != null)
        {
          parama = parama.a(str1, (i)localObject);
          if ((parama == null) || (parama.size() <= 0)) {
            break label302;
          }
          k = 100000;
          localObject = parama.iterator();
          i = 0;
          if (((Iterator)localObject).hasNext())
          {
            m = ((h)((Iterator)localObject).next()).getName().length();
            if (m >= k) {
              break label284;
            }
            k = i;
            j = m;
            break label311;
          }
        }
        else
        {
          parama = d.a().a(new x(str1), false, (i)localObject);
          continue;
        }
        parama = str1 + ((h)parama.get(j)).getName();
        return parama;
      }
      catch (Exception parama)
      {
        return paramString;
      }
      label284:
      int m = j;
      j = k;
      int k = m;
      break label311;
      label299:
      continue;
      label302:
      return paramString;
      label304:
      i += 1;
      continue;
      label311:
      i += 1;
      m = k;
      k = j;
      j = m;
    }
  }
  
  public j b(String paramString)
  {
    if (ap.I(paramString) == 0) {}
    for (;;)
    {
      int i;
      try
      {
        Object localObject = new File(paramString).listFiles();
        DateFormat localDateFormat = ad.a(FexApplication.a()).G();
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(" hh:mm:ss a");
        paramString = "[\r\n";
        i = 0;
        if (i < localObject.length)
        {
          paramString = paramString + "{";
          paramString = paramString + "\"name\":\"" + localObject[i].getName() + "\"" + ", ";
          String str = paramString + "\"time\":\"" + localDateFormat.format(new Date(localObject[i].lastModified())) + localSimpleDateFormat.format(new Date(localObject[i].lastModified())) + "\"" + ", ";
          if (!localObject[i].isDirectory()) {
            break label461;
          }
          paramString = "folder";
          paramString = str + "\"type\":\"" + paramString + "\"" + ", ";
          paramString = paramString + "\"size\":\"" + a(localObject[i].length()) + "\"" + ", ";
          if (i == localObject.length - 1)
          {
            paramString = paramString + "}\r\n";
            break label454;
          }
          paramString = paramString + "}, \r\n";
          break label454;
        }
        paramString = paramString + "]";
        localObject = new j(this, "200 OK", "text/plain", a(paramString));
        ((j)localObject).a("Content-Length", "" + paramString.getBytes("utf-8").length);
        return (j)localObject;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return new j(this, "500 Internal Server Error", "text/plain", paramString.toString());
      }
      return new j(this, "400 Bad Request", "text/plain", "Not Supported");
      label454:
      i += 1;
      continue;
      label461:
      paramString = "file";
    }
  }
  
  public j b(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = "{" + "\"name\":\"" + Build.MODEL + "\"" + ", ";
      paramJSONObject = paramJSONObject + "\"ftpRoot\":\"" + ad.a(FexApplication.a()).V() + "\"" + ", ";
      paramJSONObject = paramJSONObject + "\"ftpPort\":\"" + ad.a(FexApplication.a()).W() + "\"";
      paramJSONObject = paramJSONObject + "}";
      j localj = new j(this, "200 OK", "text/plain", a(paramJSONObject));
      localj.a("Content-Length", "" + paramJSONObject.getBytes("utf-8").length);
      return localj;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return new j(this, "500 Internal Server Error", "text/plain", paramJSONObject.toString());
  }
  
  public j c(JSONObject paramJSONObject)
  {
    try
    {
      Object localObject = paramJSONObject.getString("appPackageName");
      if (localObject != null)
      {
        paramJSONObject = new File(agetPackageManagergetApplicationInfo0sourceDir);
        if (paramJSONObject.exists())
        {
          localObject = new j(this, "200 OK", "application/octet-stream", new FileInputStream(paramJSONObject));
          ((j)localObject).a("Content-Length", "" + paramJSONObject.length());
          return (j)localObject;
        }
      }
      paramJSONObject = new j(this, "500 Internal Server Error", "text/plain", "not found the package " + (String)localObject);
      return paramJSONObject;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return new j(this, "500 Internal Server Error", "text/plain", paramJSONObject.toString());
  }
  
  public boolean c()
  {
    return b.isAlive();
  }
  
  /* Error */
  public j d()
  {
    // Byte code:
    //   0: invokestatic 288	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokevirtual 676	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   6: getstatic 682	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: ldc_w 684
    //   15: invokevirtual 690	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_1
    //   19: ldc_w 422
    //   22: astore_2
    //   23: invokestatic 696	com/estrongs/android/pop/view/FileExplorerActivity:X	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   26: invokestatic 601	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   29: invokevirtual 605	com/estrongs/android/pop/ad:G	()Ljava/text/DateFormat;
    //   32: astore_3
    //   33: new 607	java/text/SimpleDateFormat
    //   36: dup
    //   37: ldc_w 609
    //   40: invokespecial 610	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   43: astore 4
    //   45: aload_1
    //   46: ifnull +284 -> 330
    //   49: aload_1
    //   50: invokeinterface 701 1 0
    //   55: ifeq +275 -> 330
    //   58: new 357	java/io/File
    //   61: dup
    //   62: aload_1
    //   63: aload_1
    //   64: ldc_w 703
    //   67: invokeinterface 706 2 0
    //   72: invokeinterface 708 2 0
    //   77: invokespecial 361	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: astore 5
    //   82: new 140	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   89: aload_2
    //   90: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc_w 364
    //   96: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore_2
    //   103: new 140	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   110: aload_2
    //   111: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc_w 612
    //   117: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload 5
    //   122: invokevirtual 613	java/io/File:getName	()Ljava/lang/String;
    //   125: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc_w 371
    //   131: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 373
    //   137: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: astore_2
    //   144: new 140	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   151: aload_2
    //   152: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: ldc_w 615
    //   158: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_3
    //   162: new 617	java/util/Date
    //   165: dup
    //   166: aload 5
    //   168: invokevirtual 620	java/io/File:lastModified	()J
    //   171: invokespecial 622	java/util/Date:<init>	(J)V
    //   174: invokevirtual 628	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   177: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload 4
    //   182: new 617	java/util/Date
    //   185: dup
    //   186: aload 5
    //   188: invokevirtual 620	java/io/File:lastModified	()J
    //   191: invokespecial 622	java/util/Date:<init>	(J)V
    //   194: invokevirtual 629	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   197: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: ldc_w 371
    //   203: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc_w 373
    //   209: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: astore_2
    //   216: aload 5
    //   218: invokevirtual 711	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   221: astore 6
    //   223: new 140	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   230: aload_2
    //   231: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc_w 399
    //   237: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload 6
    //   242: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc_w 371
    //   248: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: ldc_w 373
    //   254: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: astore_2
    //   261: new 140	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   268: aload_2
    //   269: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc_w 401
    //   275: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: aload_0
    //   279: aload 5
    //   281: invokevirtual 414	java/io/File:length	()J
    //   284: invokespecial 638	com/estrongs/android/g/a:a	(J)Ljava/lang/String;
    //   287: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: ldc_w 371
    //   293: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: ldc_w 373
    //   299: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: astore_2
    //   306: new 140	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   313: aload_2
    //   314: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc_w 413
    //   320: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   326: astore_2
    //   327: goto -282 -> 45
    //   330: new 140	java/lang/StringBuilder
    //   333: dup
    //   334: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   337: aload_2
    //   338: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc_w 418
    //   344: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: astore_2
    //   351: new 100	com/estrongs/android/g/j
    //   354: dup
    //   355: aload_0
    //   356: ldc 127
    //   358: ldc 104
    //   360: aload_2
    //   361: invokestatic 420	com/estrongs/android/g/a:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   364: invokespecial 132	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   367: astore_3
    //   368: aload_3
    //   369: ldc -118
    //   371: new 140	java/lang/StringBuilder
    //   374: dup
    //   375: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   378: ldc -113
    //   380: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: aload_2
    //   384: ldc -14
    //   386: invokevirtual 246	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   389: arraylength
    //   390: invokevirtual 397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   393: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: invokevirtual 157	com/estrongs/android/g/j:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   399: aload_3
    //   400: astore_2
    //   401: aload_1
    //   402: ifnull +11 -> 413
    //   405: aload_1
    //   406: invokeinterface 714 1 0
    //   411: aload_3
    //   412: astore_2
    //   413: aload_2
    //   414: areturn
    //   415: astore_2
    //   416: aconst_null
    //   417: astore_1
    //   418: aload_2
    //   419: invokevirtual 172	java/lang/Exception:printStackTrace	()V
    //   422: new 100	com/estrongs/android/g/j
    //   425: dup
    //   426: aload_0
    //   427: ldc -82
    //   429: ldc 104
    //   431: aload_2
    //   432: invokevirtual 175	java/lang/Exception:toString	()Ljava/lang/String;
    //   435: invokespecial 109	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   438: astore_3
    //   439: aload_3
    //   440: astore_2
    //   441: aload_1
    //   442: ifnull -29 -> 413
    //   445: aload_1
    //   446: invokeinterface 714 1 0
    //   451: aload_3
    //   452: areturn
    //   453: astore_2
    //   454: aconst_null
    //   455: astore_1
    //   456: aload_1
    //   457: ifnull +9 -> 466
    //   460: aload_1
    //   461: invokeinterface 714 1 0
    //   466: aload_2
    //   467: athrow
    //   468: astore_2
    //   469: goto -13 -> 456
    //   472: astore_2
    //   473: goto -17 -> 456
    //   476: astore_2
    //   477: goto -59 -> 418
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	480	0	this	a
    //   18	443	1	localCursor	android.database.Cursor
    //   22	392	2	localObject1	Object
    //   415	17	2	localException1	Exception
    //   440	1	2	localObject2	Object
    //   453	14	2	localObject3	Object
    //   468	1	2	localObject4	Object
    //   472	1	2	localObject5	Object
    //   476	1	2	localException2	Exception
    //   32	420	3	localObject6	Object
    //   43	138	4	localSimpleDateFormat	SimpleDateFormat
    //   80	200	5	localFile	File
    //   221	20	6	str	String
    // Exception table:
    //   from	to	target	type
    //   0	19	415	java/lang/Exception
    //   0	19	453	finally
    //   23	45	468	finally
    //   49	327	468	finally
    //   330	399	468	finally
    //   418	439	472	finally
    //   23	45	476	java/lang/Exception
    //   49	327	476	java/lang/Exception
    //   330	399	476	java/lang/Exception
  }
  
  public j d(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = paramJSONObject.getString("appPackageName");
      if (paramJSONObject != null)
      {
        Object localObject = FexApplication.a().getPackageManager().getApplicationIcon(paramJSONObject);
        if (localObject != null)
        {
          paramJSONObject = ((BitmapDrawable)localObject).getBitmap();
          localObject = new ByteArrayOutputStream();
          paramJSONObject.compress(Bitmap.CompressFormat.PNG, 100, (OutputStream)localObject);
          paramJSONObject = ((ByteArrayOutputStream)localObject).toByteArray();
          localObject = new j(this, "200 OK", "application/octet-stream", new ByteArrayInputStream(paramJSONObject));
          ((j)localObject).a("Content-Length", "" + paramJSONObject.length);
          return (j)localObject;
        }
      }
      paramJSONObject = new j(this, "500 Internal Server Error", "text/plain", "not found the package " + paramJSONObject);
      return paramJSONObject;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return new j(this, "500 Internal Server Error", "text/plain", paramJSONObject.toString());
  }
  
  /* Error */
  public j e()
  {
    // Byte code:
    //   0: invokestatic 288	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokevirtual 676	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   6: getstatic 745	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: ldc_w 747
    //   15: invokevirtual 690	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_1
    //   19: ldc_w 422
    //   22: astore_2
    //   23: invokestatic 696	com/estrongs/android/pop/view/FileExplorerActivity:X	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   26: invokestatic 601	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   29: invokevirtual 605	com/estrongs/android/pop/ad:G	()Ljava/text/DateFormat;
    //   32: astore_3
    //   33: new 607	java/text/SimpleDateFormat
    //   36: dup
    //   37: ldc_w 609
    //   40: invokespecial 610	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   43: astore 4
    //   45: aload_1
    //   46: ifnull +329 -> 375
    //   49: aload_1
    //   50: invokeinterface 701 1 0
    //   55: ifeq +320 -> 375
    //   58: new 357	java/io/File
    //   61: dup
    //   62: aload_1
    //   63: aload_1
    //   64: ldc_w 703
    //   67: invokeinterface 706 2 0
    //   72: invokeinterface 708 2 0
    //   77: invokespecial 361	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: astore 5
    //   82: new 140	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   89: aload_2
    //   90: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc_w 364
    //   96: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore_2
    //   103: new 140	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   110: aload_2
    //   111: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc_w 612
    //   117: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload 5
    //   122: invokevirtual 613	java/io/File:getName	()Ljava/lang/String;
    //   125: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc_w 371
    //   131: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 373
    //   137: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: astore_2
    //   144: new 140	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   151: aload_2
    //   152: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: ldc_w 615
    //   158: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_3
    //   162: new 617	java/util/Date
    //   165: dup
    //   166: aload 5
    //   168: invokevirtual 620	java/io/File:lastModified	()J
    //   171: invokespecial 622	java/util/Date:<init>	(J)V
    //   174: invokevirtual 628	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   177: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload 4
    //   182: new 617	java/util/Date
    //   185: dup
    //   186: aload 5
    //   188: invokevirtual 620	java/io/File:lastModified	()J
    //   191: invokespecial 622	java/util/Date:<init>	(J)V
    //   194: invokevirtual 629	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   197: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: ldc_w 371
    //   203: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc_w 373
    //   209: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: astore_2
    //   216: aload 5
    //   218: invokevirtual 711	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   221: astore 6
    //   223: new 140	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   230: aload_2
    //   231: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc_w 399
    //   237: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload 6
    //   242: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc_w 371
    //   248: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: ldc_w 373
    //   254: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: astore_2
    //   261: new 140	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   268: aload_2
    //   269: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc_w 749
    //   275: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: aload_1
    //   279: aload_1
    //   280: ldc_w 751
    //   283: invokeinterface 706 2 0
    //   288: invokeinterface 708 2 0
    //   293: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: ldc_w 373
    //   299: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: astore_2
    //   306: new 140	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   313: aload_2
    //   314: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc_w 401
    //   320: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload_0
    //   324: aload 5
    //   326: invokevirtual 414	java/io/File:length	()J
    //   329: invokespecial 638	com/estrongs/android/g/a:a	(J)Ljava/lang/String;
    //   332: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: ldc_w 371
    //   338: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc_w 373
    //   344: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: astore_2
    //   351: new 140	java/lang/StringBuilder
    //   354: dup
    //   355: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   358: aload_2
    //   359: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: ldc_w 413
    //   365: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   371: astore_2
    //   372: goto -327 -> 45
    //   375: new 140	java/lang/StringBuilder
    //   378: dup
    //   379: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   382: aload_2
    //   383: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: ldc_w 418
    //   389: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: astore_2
    //   396: new 100	com/estrongs/android/g/j
    //   399: dup
    //   400: aload_0
    //   401: ldc 127
    //   403: ldc 104
    //   405: aload_2
    //   406: invokestatic 420	com/estrongs/android/g/a:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   409: invokespecial 132	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   412: astore_3
    //   413: aload_3
    //   414: ldc -118
    //   416: new 140	java/lang/StringBuilder
    //   419: dup
    //   420: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   423: ldc -113
    //   425: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: aload_2
    //   429: ldc -14
    //   431: invokevirtual 246	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   434: arraylength
    //   435: invokevirtual 397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   438: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   441: invokevirtual 157	com/estrongs/android/g/j:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   444: aload_3
    //   445: astore_2
    //   446: aload_1
    //   447: ifnull +11 -> 458
    //   450: aload_1
    //   451: invokeinterface 714 1 0
    //   456: aload_3
    //   457: astore_2
    //   458: aload_2
    //   459: areturn
    //   460: astore_2
    //   461: aconst_null
    //   462: astore_1
    //   463: aload_2
    //   464: invokevirtual 172	java/lang/Exception:printStackTrace	()V
    //   467: new 100	com/estrongs/android/g/j
    //   470: dup
    //   471: aload_0
    //   472: ldc -82
    //   474: ldc 104
    //   476: aload_2
    //   477: invokevirtual 175	java/lang/Exception:toString	()Ljava/lang/String;
    //   480: invokespecial 109	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   483: astore_3
    //   484: aload_3
    //   485: astore_2
    //   486: aload_1
    //   487: ifnull -29 -> 458
    //   490: aload_1
    //   491: invokeinterface 714 1 0
    //   496: aload_3
    //   497: areturn
    //   498: astore_2
    //   499: aconst_null
    //   500: astore_1
    //   501: aload_1
    //   502: ifnull +9 -> 511
    //   505: aload_1
    //   506: invokeinterface 714 1 0
    //   511: aload_2
    //   512: athrow
    //   513: astore_2
    //   514: goto -13 -> 501
    //   517: astore_2
    //   518: goto -17 -> 501
    //   521: astore_2
    //   522: goto -59 -> 463
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	525	0	this	a
    //   18	488	1	localCursor	android.database.Cursor
    //   22	437	2	localObject1	Object
    //   460	17	2	localException1	Exception
    //   485	1	2	localObject2	Object
    //   498	14	2	localObject3	Object
    //   513	1	2	localObject4	Object
    //   517	1	2	localObject5	Object
    //   521	1	2	localException2	Exception
    //   32	465	3	localObject6	Object
    //   43	138	4	localSimpleDateFormat	SimpleDateFormat
    //   80	245	5	localFile	File
    //   221	20	6	str	String
    // Exception table:
    //   from	to	target	type
    //   0	19	460	java/lang/Exception
    //   0	19	498	finally
    //   23	45	513	finally
    //   49	372	513	finally
    //   375	444	513	finally
    //   463	484	517	finally
    //   23	45	521	java/lang/Exception
    //   49	372	521	java/lang/Exception
    //   375	444	521	java/lang/Exception
  }
  
  /* Error */
  public j f()
  {
    // Byte code:
    //   0: invokestatic 288	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokevirtual 676	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   6: getstatic 754	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: ldc_w 756
    //   15: invokevirtual 690	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_1
    //   19: ldc_w 422
    //   22: astore_2
    //   23: invokestatic 696	com/estrongs/android/pop/view/FileExplorerActivity:X	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   26: invokestatic 601	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   29: invokevirtual 605	com/estrongs/android/pop/ad:G	()Ljava/text/DateFormat;
    //   32: astore_3
    //   33: new 607	java/text/SimpleDateFormat
    //   36: dup
    //   37: ldc_w 609
    //   40: invokespecial 610	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   43: astore 4
    //   45: aload_1
    //   46: ifnull +329 -> 375
    //   49: aload_1
    //   50: invokeinterface 701 1 0
    //   55: ifeq +320 -> 375
    //   58: new 357	java/io/File
    //   61: dup
    //   62: aload_1
    //   63: aload_1
    //   64: ldc_w 703
    //   67: invokeinterface 706 2 0
    //   72: invokeinterface 708 2 0
    //   77: invokespecial 361	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: astore 5
    //   82: new 140	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   89: aload_2
    //   90: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc_w 364
    //   96: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore_2
    //   103: new 140	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   110: aload_2
    //   111: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc_w 612
    //   117: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload 5
    //   122: invokevirtual 613	java/io/File:getName	()Ljava/lang/String;
    //   125: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc_w 371
    //   131: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 373
    //   137: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: astore_2
    //   144: new 140	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   151: aload_2
    //   152: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: ldc_w 615
    //   158: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_3
    //   162: new 617	java/util/Date
    //   165: dup
    //   166: aload 5
    //   168: invokevirtual 620	java/io/File:lastModified	()J
    //   171: invokespecial 622	java/util/Date:<init>	(J)V
    //   174: invokevirtual 628	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   177: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload 4
    //   182: new 617	java/util/Date
    //   185: dup
    //   186: aload 5
    //   188: invokevirtual 620	java/io/File:lastModified	()J
    //   191: invokespecial 622	java/util/Date:<init>	(J)V
    //   194: invokevirtual 629	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   197: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: ldc_w 371
    //   203: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc_w 373
    //   209: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: astore_2
    //   216: aload 5
    //   218: invokevirtual 711	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   221: astore 6
    //   223: new 140	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   230: aload_2
    //   231: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc_w 399
    //   237: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload 6
    //   242: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc_w 371
    //   248: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: ldc_w 373
    //   254: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: astore_2
    //   261: new 140	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   268: aload_2
    //   269: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc_w 749
    //   275: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: aload_1
    //   279: aload_1
    //   280: ldc_w 751
    //   283: invokeinterface 706 2 0
    //   288: invokeinterface 708 2 0
    //   293: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: ldc_w 373
    //   299: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: astore_2
    //   306: new 140	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   313: aload_2
    //   314: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc_w 401
    //   320: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload_0
    //   324: aload 5
    //   326: invokevirtual 414	java/io/File:length	()J
    //   329: invokespecial 638	com/estrongs/android/g/a:a	(J)Ljava/lang/String;
    //   332: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: ldc_w 371
    //   338: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc_w 373
    //   344: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: astore_2
    //   351: new 140	java/lang/StringBuilder
    //   354: dup
    //   355: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   358: aload_2
    //   359: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: ldc_w 413
    //   365: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   371: astore_2
    //   372: goto -327 -> 45
    //   375: new 140	java/lang/StringBuilder
    //   378: dup
    //   379: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   382: aload_2
    //   383: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: ldc_w 418
    //   389: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: astore_2
    //   396: new 100	com/estrongs/android/g/j
    //   399: dup
    //   400: aload_0
    //   401: ldc 127
    //   403: ldc 104
    //   405: aload_2
    //   406: invokestatic 420	com/estrongs/android/g/a:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   409: invokespecial 132	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   412: astore_3
    //   413: aload_3
    //   414: ldc -118
    //   416: new 140	java/lang/StringBuilder
    //   419: dup
    //   420: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   423: ldc -113
    //   425: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: aload_2
    //   429: ldc -14
    //   431: invokevirtual 246	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   434: arraylength
    //   435: invokevirtual 397	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   438: invokevirtual 154	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   441: invokevirtual 157	com/estrongs/android/g/j:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   444: aload_3
    //   445: astore_2
    //   446: aload_1
    //   447: ifnull +11 -> 458
    //   450: aload_1
    //   451: invokeinterface 714 1 0
    //   456: aload_3
    //   457: astore_2
    //   458: aload_2
    //   459: areturn
    //   460: astore_2
    //   461: aconst_null
    //   462: astore_1
    //   463: aload_2
    //   464: invokevirtual 172	java/lang/Exception:printStackTrace	()V
    //   467: new 100	com/estrongs/android/g/j
    //   470: dup
    //   471: aload_0
    //   472: ldc -82
    //   474: ldc 104
    //   476: aload_2
    //   477: invokevirtual 175	java/lang/Exception:toString	()Ljava/lang/String;
    //   480: invokespecial 109	com/estrongs/android/g/j:<init>	(Lcom/estrongs/android/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   483: astore_3
    //   484: aload_3
    //   485: astore_2
    //   486: aload_1
    //   487: ifnull -29 -> 458
    //   490: aload_1
    //   491: invokeinterface 714 1 0
    //   496: aload_3
    //   497: areturn
    //   498: astore_2
    //   499: aconst_null
    //   500: astore_1
    //   501: aload_1
    //   502: ifnull +9 -> 511
    //   505: aload_1
    //   506: invokeinterface 714 1 0
    //   511: aload_2
    //   512: athrow
    //   513: astore_2
    //   514: goto -13 -> 501
    //   517: astore_2
    //   518: goto -17 -> 501
    //   521: astore_2
    //   522: goto -59 -> 463
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	525	0	this	a
    //   18	488	1	localCursor	android.database.Cursor
    //   22	437	2	localObject1	Object
    //   460	17	2	localException1	Exception
    //   485	1	2	localObject2	Object
    //   498	14	2	localObject3	Object
    //   513	1	2	localObject4	Object
    //   517	1	2	localObject5	Object
    //   521	1	2	localException2	Exception
    //   32	465	3	localObject6	Object
    //   43	138	4	localSimpleDateFormat	SimpleDateFormat
    //   80	245	5	localFile	File
    //   221	20	6	str	String
    // Exception table:
    //   from	to	target	type
    //   0	19	460	java/lang/Exception
    //   0	19	498	finally
    //   23	45	513	finally
    //   49	372	513	finally
    //   375	444	513	finally
    //   463	484	517	finally
    //   23	45	521	java/lang/Exception
    //   49	372	521	java/lang/Exception
    //   375	444	521	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */