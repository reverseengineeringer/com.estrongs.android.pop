package com.estrongs.android.c;

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
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import com.estrongs.fs.i;
import com.estrongs.fs.n;
import com.estrongs.fs.util.j;
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
  extends h
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
  
  private k a(String paramString, long paramLong1, long paramLong2)
  {
    int i = am.G(paramString);
    Object localObject;
    long l2;
    long l1;
    if (i == 1) {
      for (;;)
      {
        try
        {
          localObject = new SmbFile(a(com.estrongs.fs.impl.p.b.a(paramString), null));
          if (!((SmbFile)localObject).exists()) {
            return new k(this, "404 Not Found", "text/plain", "Not Found");
          }
          paramString = new SmbRandomAccessFile((SmbFile)localObject, "r");
          if (paramLong1 != 0L) {
            paramString.seek(paramLong1);
          }
          paramString = new com.estrongs.fs.impl.p.c(paramString, paramLong2);
          if (paramLong1 == 0L)
          {
            paramString = new k(this, "200 OK", "application/octet-stream", paramString);
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
          return new k(this, "500 Internal Server Error", "text/plain", paramString.toString());
        }
        paramString = new k(this, "206 Partial Content", "application/octet-stream", paramString);
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
          l1 = com.estrongs.fs.impl.r.b.b(paramString);
          paramString = com.estrongs.fs.impl.r.b.a(paramString, paramLong1, null);
          if (paramString != null) {
            break;
          }
          paramString = new k(this, "404 Not Found", "text/plain", "");
          return paramString;
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return new k(this, "404 Not Found", "text/plain", paramString.toString());
        }
        localObject = d.n(am.by(paramString));
        paramString = a(paramString, (com.estrongs.old.fs.a)localObject);
        l1 = ((com.estrongs.old.fs.a)localObject).e(paramString);
        paramString = ((com.estrongs.old.fs.a)localObject).a(paramString, paramLong1);
      }
      if (paramLong1 == 0L)
      {
        paramString = new k(this, "200 OK", "application/octet-stream", paramString);
        break label1109;
        paramString.a("Content-Length", "" + l2);
        paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l2 - 1L) + "/" + l1);
        paramString.a("Accept-Ranges", "bytes");
        return paramString;
      }
      else
      {
        paramString = new k(this, "206 Partial Content", "application/octet-stream", paramString);
      }
    }
    else
    {
      if ((i == 4) || (i == 23))
      {
        try
        {
          paramString = a(paramString, null);
          l2 = com.estrongs.fs.impl.j.b.h(paramString);
          paramString = com.estrongs.fs.impl.j.b.c(paramString, paramLong1);
          if (paramString == null)
          {
            paramString = new k(this, "404 Not Found", "text/plain", "");
            return paramString;
          }
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return new k(this, "404 Not Found", "text/plain", paramString.toString());
        }
        if (paramLong1 == 0L)
        {
          paramString = new k(this, "200 OK", "application/octet-stream", paramString);
          break label1129;
          label635:
          paramString.a("Content-Length", "" + l1);
          paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l1 - 1L) + "/" + l2);
          paramString.a("Accept-Ranges", "bytes");
          return paramString;
        }
        paramString = new k(this, "206 Partial Content", "application/octet-stream", paramString);
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
          paramString = new k(this, "200 OK", "application/octet-stream", paramString);
        }
        catch (Exception paramString)
        {
          label798:
          paramString.printStackTrace();
          return new k(this, "500 Internal Server Error", "text/plain", paramString.toString());
        }
        paramString.a("Content-Length", "" + l1);
        paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l1 - 1L) + "/" + l2);
        paramString.a("Accept-Ranges", "bytes");
        return paramString;
        label905:
        paramString = new k(this, "206 Partial Content", "application/octet-stream", paramString);
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
        paramString = new k(this, "200 OK", "application/octet-stream", paramString);
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return new k(this, "500 Internal Server Error", "text/plain", paramString.toString());
      }
      paramString.a("Content-Length", "" + l1);
      paramString.a("Content-Range", "bytes " + paramLong1 + "-" + (paramLong1 + l1 - 1L) + "/" + l2);
      paramString.a("Accept-Ranges", "bytes");
      return paramString;
      label1077:
      paramString = new k(this, "206 Partial Content", "application/octet-stream", paramString);
      break label1169;
      return new k(this, "400 Bad Request", "text/plain", "Not Supported");
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
    long l2 = j.a(paramLong);
    String str2 = b(2131427590).toString();
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
      return j.a(paramLong, l1) + " " + str1 + " (" + j.d(paramLong) + " " + str2 + ")";
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
  
  public k a(int paramInt)
  {
    Object localObject2;
    PackageInfo localPackageInfo;
    Object localObject3;
    for (;;)
    {
      try
      {
        Object localObject1 = FexApplication.a().getPackageManager().getInstalledPackages(8192);
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
          break label149;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return new k(this, "500 Internal Server Error", "text/plain", localException.toString());
      }
      if ((flags & 0x1) > 0)
      {
        ((LinkedList)localObject2).add(localPackageInfo);
        continue;
        label149:
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
          break label804;
        }
        str = str + "}\r\n";
      }
      else
      {
        str = str + "]";
        localObject2 = new k(this, "200 OK", "text/plain", a(str));
        ((k)localObject2).a("Content-Length", "" + str.getBytes("utf-8").length);
        return (k)localObject2;
        str = "[\r\n";
        paramInt = 0;
        continue;
      }
      label804:
      paramInt += 1;
    }
  }
  
  public k a(String paramString1, String paramString2, Properties paramProperties1, Properties paramProperties2, Properties paramProperties3)
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
        return new k(this, "500 Internal Server Error", "text/plain", paramString1.toString());
      }
    }
    Object localObject = am.bq(paramString1);
    if ((localObject == null) || (am.G((String)localObject) == 0))
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
  
  public k a(JSONObject paramJSONObject)
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
            k localk = new k(this, "200 OK", "text/plain", a(paramJSONObject));
            localk.a("Content-Length", "" + paramJSONObject.getBytes("utf-8").length);
            return localk;
          }
        }
        else
        {
          paramJSONObject = new k(this, "500 Internal Server Error", "text/plain", "not found the package " + paramJSONObject);
          return paramJSONObject;
        }
      }
      catch (Exception paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        return new k(this, "500 Internal Server Error", "text/plain", paramJSONObject.toString());
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
        Object localObject = am.bA(paramString);
        i = 0;
        if ((i < g.length) && (!((String)localObject).equals(g[i]))) {
          break label304;
        }
        if (i >= g.length) {
          return paramString;
        }
        String str1 = am.d(paramString);
        String str2 = str1.substring(0, str1.length() - ((String)localObject).length());
        if (d.a().b(paramString)) {
          break label302;
        }
        str1 = am.bk(paramString);
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
            m = ((com.estrongs.fs.h)((Iterator)localObject).next()).getName().length();
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
          parama = d.a().a(new n(str1), false, (i)localObject);
          continue;
        }
        parama = str1 + ((com.estrongs.fs.h)parama.get(j)).getName();
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
  
  public k b(String paramString)
  {
    if (am.G(paramString) == 0) {}
    for (;;)
    {
      int i;
      try
      {
        Object localObject = new File(paramString).listFiles();
        DateFormat localDateFormat = ad.a(FexApplication.a()).F();
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
        localObject = new k(this, "200 OK", "text/plain", a(paramString));
        ((k)localObject).a("Content-Length", "" + paramString.getBytes("utf-8").length);
        return (k)localObject;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return new k(this, "500 Internal Server Error", "text/plain", paramString.toString());
      }
      return new k(this, "400 Bad Request", "text/plain", "Not Supported");
      label454:
      i += 1;
      continue;
      label461:
      paramString = "file";
    }
  }
  
  public k b(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = "{" + "\"name\":\"" + Build.MODEL + "\"" + ", ";
      paramJSONObject = paramJSONObject + "\"ftpRoot\":\"" + ad.a(FexApplication.a()).U() + "\"" + ", ";
      paramJSONObject = paramJSONObject + "\"ftpPort\":\"" + ad.a(FexApplication.a()).V() + "\"";
      paramJSONObject = paramJSONObject + "}";
      k localk = new k(this, "200 OK", "text/plain", a(paramJSONObject));
      localk.a("Content-Length", "" + paramJSONObject.getBytes("utf-8").length);
      return localk;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return new k(this, "500 Internal Server Error", "text/plain", paramJSONObject.toString());
  }
  
  public k c(JSONObject paramJSONObject)
  {
    try
    {
      Object localObject = paramJSONObject.getString("appPackageName");
      if (localObject != null)
      {
        paramJSONObject = new File(agetPackageManagergetApplicationInfo0sourceDir);
        if (paramJSONObject.exists())
        {
          localObject = new k(this, "200 OK", "application/octet-stream", new FileInputStream(paramJSONObject));
          ((k)localObject).a("Content-Length", "" + paramJSONObject.length());
          return (k)localObject;
        }
      }
      paramJSONObject = new k(this, "500 Internal Server Error", "text/plain", "not found the package " + (String)localObject);
      return paramJSONObject;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return new k(this, "500 Internal Server Error", "text/plain", paramJSONObject.toString());
  }
  
  public boolean c()
  {
    return b.isAlive();
  }
  
  /* Error */
  public k d()
  {
    // Byte code:
    //   0: invokestatic 289	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokevirtual 676	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   6: getstatic 682	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: ldc_w 684
    //   15: invokevirtual 690	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_1
    //   19: ldc_w 424
    //   22: astore_2
    //   23: invokestatic 695	com/estrongs/android/pop/view/FileExplorerActivity:J	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   26: invokestatic 601	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   29: invokevirtual 605	com/estrongs/android/pop/ad:F	()Ljava/text/DateFormat;
    //   32: astore_3
    //   33: new 607	java/text/SimpleDateFormat
    //   36: dup
    //   37: ldc_w 609
    //   40: invokespecial 610	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   43: astore 4
    //   45: aload_1
    //   46: ifnull +284 -> 330
    //   49: aload_1
    //   50: invokeinterface 700 1 0
    //   55: ifeq +275 -> 330
    //   58: new 363	java/io/File
    //   61: dup
    //   62: aload_1
    //   63: aload_1
    //   64: ldc_w 702
    //   67: invokeinterface 705 2 0
    //   72: invokeinterface 707 2 0
    //   77: invokespecial 367	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: astore 5
    //   82: new 141	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   89: aload_2
    //   90: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc_w 370
    //   96: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore_2
    //   103: new 141	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   110: aload_2
    //   111: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc_w 612
    //   117: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload 5
    //   122: invokevirtual 613	java/io/File:getName	()Ljava/lang/String;
    //   125: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc_w 377
    //   131: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 379
    //   137: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: astore_2
    //   144: new 141	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   151: aload_2
    //   152: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: ldc_w 615
    //   158: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_3
    //   162: new 617	java/util/Date
    //   165: dup
    //   166: aload 5
    //   168: invokevirtual 620	java/io/File:lastModified	()J
    //   171: invokespecial 622	java/util/Date:<init>	(J)V
    //   174: invokevirtual 628	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   177: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload 4
    //   182: new 617	java/util/Date
    //   185: dup
    //   186: aload 5
    //   188: invokevirtual 620	java/io/File:lastModified	()J
    //   191: invokespecial 622	java/util/Date:<init>	(J)V
    //   194: invokevirtual 629	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   197: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: ldc_w 377
    //   203: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc_w 379
    //   209: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: astore_2
    //   216: aload 5
    //   218: invokevirtual 710	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   221: astore 6
    //   223: new 141	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   230: aload_2
    //   231: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc_w 401
    //   237: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload 6
    //   242: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc_w 377
    //   248: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: ldc_w 379
    //   254: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: astore_2
    //   261: new 141	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   268: aload_2
    //   269: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc_w 403
    //   275: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: aload_0
    //   279: aload 5
    //   281: invokevirtual 416	java/io/File:length	()J
    //   284: invokespecial 638	com/estrongs/android/c/a:a	(J)Ljava/lang/String;
    //   287: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: ldc_w 377
    //   293: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: ldc_w 379
    //   299: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: astore_2
    //   306: new 141	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   313: aload_2
    //   314: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc_w 415
    //   320: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   326: astore_2
    //   327: goto -282 -> 45
    //   330: new 141	java/lang/StringBuilder
    //   333: dup
    //   334: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   337: aload_2
    //   338: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc_w 420
    //   344: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: astore_2
    //   351: new 101	com/estrongs/android/c/k
    //   354: dup
    //   355: aload_0
    //   356: ldc -128
    //   358: ldc 105
    //   360: aload_2
    //   361: invokestatic 422	com/estrongs/android/c/a:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   364: invokespecial 133	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   367: astore_3
    //   368: aload_3
    //   369: ldc -117
    //   371: new 141	java/lang/StringBuilder
    //   374: dup
    //   375: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   378: ldc -112
    //   380: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: aload_2
    //   384: ldc -13
    //   386: invokevirtual 247	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   389: arraylength
    //   390: invokevirtual 399	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   393: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: invokevirtual 158	com/estrongs/android/c/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   399: aload_3
    //   400: astore_2
    //   401: aload_1
    //   402: ifnull +11 -> 413
    //   405: aload_1
    //   406: invokeinterface 713 1 0
    //   411: aload_3
    //   412: astore_2
    //   413: aload_2
    //   414: areturn
    //   415: astore_2
    //   416: aconst_null
    //   417: astore_1
    //   418: aload_2
    //   419: invokevirtual 173	java/lang/Exception:printStackTrace	()V
    //   422: new 101	com/estrongs/android/c/k
    //   425: dup
    //   426: aload_0
    //   427: ldc -81
    //   429: ldc 105
    //   431: aload_2
    //   432: invokevirtual 176	java/lang/Exception:toString	()Ljava/lang/String;
    //   435: invokespecial 110	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   438: astore_3
    //   439: aload_3
    //   440: astore_2
    //   441: aload_1
    //   442: ifnull -29 -> 413
    //   445: aload_1
    //   446: invokeinterface 713 1 0
    //   451: aload_3
    //   452: areturn
    //   453: astore_2
    //   454: aconst_null
    //   455: astore_1
    //   456: aload_1
    //   457: ifnull +9 -> 466
    //   460: aload_1
    //   461: invokeinterface 713 1 0
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
  
  public k d(JSONObject paramJSONObject)
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
          localObject = new k(this, "200 OK", "application/octet-stream", new ByteArrayInputStream(paramJSONObject));
          ((k)localObject).a("Content-Length", "" + paramJSONObject.length);
          return (k)localObject;
        }
      }
      paramJSONObject = new k(this, "500 Internal Server Error", "text/plain", "not found the package " + paramJSONObject);
      return paramJSONObject;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return new k(this, "500 Internal Server Error", "text/plain", paramJSONObject.toString());
  }
  
  /* Error */
  public k e()
  {
    // Byte code:
    //   0: invokestatic 289	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokevirtual 676	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   6: getstatic 744	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: ldc_w 746
    //   15: invokevirtual 690	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_1
    //   19: ldc_w 424
    //   22: astore_2
    //   23: invokestatic 695	com/estrongs/android/pop/view/FileExplorerActivity:J	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   26: invokestatic 601	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   29: invokevirtual 605	com/estrongs/android/pop/ad:F	()Ljava/text/DateFormat;
    //   32: astore_3
    //   33: new 607	java/text/SimpleDateFormat
    //   36: dup
    //   37: ldc_w 609
    //   40: invokespecial 610	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   43: astore 4
    //   45: aload_1
    //   46: ifnull +329 -> 375
    //   49: aload_1
    //   50: invokeinterface 700 1 0
    //   55: ifeq +320 -> 375
    //   58: new 363	java/io/File
    //   61: dup
    //   62: aload_1
    //   63: aload_1
    //   64: ldc_w 702
    //   67: invokeinterface 705 2 0
    //   72: invokeinterface 707 2 0
    //   77: invokespecial 367	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: astore 5
    //   82: new 141	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   89: aload_2
    //   90: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc_w 370
    //   96: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore_2
    //   103: new 141	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   110: aload_2
    //   111: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc_w 612
    //   117: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload 5
    //   122: invokevirtual 613	java/io/File:getName	()Ljava/lang/String;
    //   125: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc_w 377
    //   131: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 379
    //   137: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: astore_2
    //   144: new 141	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   151: aload_2
    //   152: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: ldc_w 615
    //   158: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_3
    //   162: new 617	java/util/Date
    //   165: dup
    //   166: aload 5
    //   168: invokevirtual 620	java/io/File:lastModified	()J
    //   171: invokespecial 622	java/util/Date:<init>	(J)V
    //   174: invokevirtual 628	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   177: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload 4
    //   182: new 617	java/util/Date
    //   185: dup
    //   186: aload 5
    //   188: invokevirtual 620	java/io/File:lastModified	()J
    //   191: invokespecial 622	java/util/Date:<init>	(J)V
    //   194: invokevirtual 629	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   197: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: ldc_w 377
    //   203: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc_w 379
    //   209: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: astore_2
    //   216: aload 5
    //   218: invokevirtual 710	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   221: astore 6
    //   223: new 141	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   230: aload_2
    //   231: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc_w 401
    //   237: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload 6
    //   242: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc_w 377
    //   248: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: ldc_w 379
    //   254: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: astore_2
    //   261: new 141	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   268: aload_2
    //   269: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc_w 748
    //   275: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: aload_1
    //   279: aload_1
    //   280: ldc_w 750
    //   283: invokeinterface 705 2 0
    //   288: invokeinterface 707 2 0
    //   293: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: ldc_w 379
    //   299: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: astore_2
    //   306: new 141	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   313: aload_2
    //   314: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc_w 403
    //   320: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload_0
    //   324: aload 5
    //   326: invokevirtual 416	java/io/File:length	()J
    //   329: invokespecial 638	com/estrongs/android/c/a:a	(J)Ljava/lang/String;
    //   332: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: ldc_w 377
    //   338: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc_w 379
    //   344: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: astore_2
    //   351: new 141	java/lang/StringBuilder
    //   354: dup
    //   355: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   358: aload_2
    //   359: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: ldc_w 415
    //   365: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   371: astore_2
    //   372: goto -327 -> 45
    //   375: new 141	java/lang/StringBuilder
    //   378: dup
    //   379: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   382: aload_2
    //   383: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: ldc_w 420
    //   389: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: astore_2
    //   396: new 101	com/estrongs/android/c/k
    //   399: dup
    //   400: aload_0
    //   401: ldc -128
    //   403: ldc 105
    //   405: aload_2
    //   406: invokestatic 422	com/estrongs/android/c/a:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   409: invokespecial 133	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   412: astore_3
    //   413: aload_3
    //   414: ldc -117
    //   416: new 141	java/lang/StringBuilder
    //   419: dup
    //   420: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   423: ldc -112
    //   425: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: aload_2
    //   429: ldc -13
    //   431: invokevirtual 247	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   434: arraylength
    //   435: invokevirtual 399	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   438: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   441: invokevirtual 158	com/estrongs/android/c/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   444: aload_3
    //   445: astore_2
    //   446: aload_1
    //   447: ifnull +11 -> 458
    //   450: aload_1
    //   451: invokeinterface 713 1 0
    //   456: aload_3
    //   457: astore_2
    //   458: aload_2
    //   459: areturn
    //   460: astore_2
    //   461: aconst_null
    //   462: astore_1
    //   463: aload_2
    //   464: invokevirtual 173	java/lang/Exception:printStackTrace	()V
    //   467: new 101	com/estrongs/android/c/k
    //   470: dup
    //   471: aload_0
    //   472: ldc -81
    //   474: ldc 105
    //   476: aload_2
    //   477: invokevirtual 176	java/lang/Exception:toString	()Ljava/lang/String;
    //   480: invokespecial 110	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   483: astore_3
    //   484: aload_3
    //   485: astore_2
    //   486: aload_1
    //   487: ifnull -29 -> 458
    //   490: aload_1
    //   491: invokeinterface 713 1 0
    //   496: aload_3
    //   497: areturn
    //   498: astore_2
    //   499: aconst_null
    //   500: astore_1
    //   501: aload_1
    //   502: ifnull +9 -> 511
    //   505: aload_1
    //   506: invokeinterface 713 1 0
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
  public k f()
  {
    // Byte code:
    //   0: invokestatic 289	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokevirtual 676	com/estrongs/android/pop/FexApplication:getContentResolver	()Landroid/content/ContentResolver;
    //   6: getstatic 753	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: ldc_w 755
    //   15: invokevirtual 690	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_1
    //   19: ldc_w 424
    //   22: astore_2
    //   23: invokestatic 695	com/estrongs/android/pop/view/FileExplorerActivity:J	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   26: invokestatic 601	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   29: invokevirtual 605	com/estrongs/android/pop/ad:F	()Ljava/text/DateFormat;
    //   32: astore_3
    //   33: new 607	java/text/SimpleDateFormat
    //   36: dup
    //   37: ldc_w 609
    //   40: invokespecial 610	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   43: astore 4
    //   45: aload_1
    //   46: ifnull +329 -> 375
    //   49: aload_1
    //   50: invokeinterface 700 1 0
    //   55: ifeq +320 -> 375
    //   58: new 363	java/io/File
    //   61: dup
    //   62: aload_1
    //   63: aload_1
    //   64: ldc_w 702
    //   67: invokeinterface 705 2 0
    //   72: invokeinterface 707 2 0
    //   77: invokespecial 367	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: astore 5
    //   82: new 141	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   89: aload_2
    //   90: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc_w 370
    //   96: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore_2
    //   103: new 141	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   110: aload_2
    //   111: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc_w 612
    //   117: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload 5
    //   122: invokevirtual 613	java/io/File:getName	()Ljava/lang/String;
    //   125: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc_w 377
    //   131: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 379
    //   137: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: astore_2
    //   144: new 141	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   151: aload_2
    //   152: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: ldc_w 615
    //   158: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_3
    //   162: new 617	java/util/Date
    //   165: dup
    //   166: aload 5
    //   168: invokevirtual 620	java/io/File:lastModified	()J
    //   171: invokespecial 622	java/util/Date:<init>	(J)V
    //   174: invokevirtual 628	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   177: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload 4
    //   182: new 617	java/util/Date
    //   185: dup
    //   186: aload 5
    //   188: invokevirtual 620	java/io/File:lastModified	()J
    //   191: invokespecial 622	java/util/Date:<init>	(J)V
    //   194: invokevirtual 629	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   197: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: ldc_w 377
    //   203: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc_w 379
    //   209: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: astore_2
    //   216: aload 5
    //   218: invokevirtual 710	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   221: astore 6
    //   223: new 141	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   230: aload_2
    //   231: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc_w 401
    //   237: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload 6
    //   242: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc_w 377
    //   248: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: ldc_w 379
    //   254: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: astore_2
    //   261: new 141	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   268: aload_2
    //   269: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc_w 748
    //   275: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: aload_1
    //   279: aload_1
    //   280: ldc_w 750
    //   283: invokeinterface 705 2 0
    //   288: invokeinterface 707 2 0
    //   293: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: ldc_w 379
    //   299: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: astore_2
    //   306: new 141	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   313: aload_2
    //   314: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc_w 403
    //   320: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload_0
    //   324: aload 5
    //   326: invokevirtual 416	java/io/File:length	()J
    //   329: invokespecial 638	com/estrongs/android/c/a:a	(J)Ljava/lang/String;
    //   332: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   335: ldc_w 377
    //   338: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc_w 379
    //   344: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: astore_2
    //   351: new 141	java/lang/StringBuilder
    //   354: dup
    //   355: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   358: aload_2
    //   359: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: ldc_w 415
    //   365: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   371: astore_2
    //   372: goto -327 -> 45
    //   375: new 141	java/lang/StringBuilder
    //   378: dup
    //   379: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   382: aload_2
    //   383: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: ldc_w 420
    //   389: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: astore_2
    //   396: new 101	com/estrongs/android/c/k
    //   399: dup
    //   400: aload_0
    //   401: ldc -128
    //   403: ldc 105
    //   405: aload_2
    //   406: invokestatic 422	com/estrongs/android/c/a:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   409: invokespecial 133	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    //   412: astore_3
    //   413: aload_3
    //   414: ldc -117
    //   416: new 141	java/lang/StringBuilder
    //   419: dup
    //   420: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   423: ldc -112
    //   425: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: aload_2
    //   429: ldc -13
    //   431: invokevirtual 247	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   434: arraylength
    //   435: invokevirtual 399	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   438: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   441: invokevirtual 158	com/estrongs/android/c/k:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   444: aload_3
    //   445: astore_2
    //   446: aload_1
    //   447: ifnull +11 -> 458
    //   450: aload_1
    //   451: invokeinterface 713 1 0
    //   456: aload_3
    //   457: astore_2
    //   458: aload_2
    //   459: areturn
    //   460: astore_2
    //   461: aconst_null
    //   462: astore_1
    //   463: aload_2
    //   464: invokevirtual 173	java/lang/Exception:printStackTrace	()V
    //   467: new 101	com/estrongs/android/c/k
    //   470: dup
    //   471: aload_0
    //   472: ldc -81
    //   474: ldc 105
    //   476: aload_2
    //   477: invokevirtual 176	java/lang/Exception:toString	()Ljava/lang/String;
    //   480: invokespecial 110	com/estrongs/android/c/k:<init>	(Lcom/estrongs/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   483: astore_3
    //   484: aload_3
    //   485: astore_2
    //   486: aload_1
    //   487: ifnull -29 -> 458
    //   490: aload_1
    //   491: invokeinterface 713 1 0
    //   496: aload_3
    //   497: areturn
    //   498: astore_2
    //   499: aconst_null
    //   500: astore_1
    //   501: aload_1
    //   502: ifnull +9 -> 511
    //   505: aload_1
    //   506: invokeinterface 713 1 0
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
 * Qualified Name:     com.estrongs.android.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */