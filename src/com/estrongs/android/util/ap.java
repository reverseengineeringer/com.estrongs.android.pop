package com.estrongs.android.util;

import android.content.Context;
import android.net.Uri;
import android.os.storage.StorageManager;
import android.webkit.MimeTypeMap;
import com.estrongs.android.nativetool.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.local.m;
import com.estrongs.fs.impl.usb.e;
import com.estrongs.fs.util.j;
import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class ap
{
  public static final String a = ap.class.getSimpleName();
  private static LinkedList<av> b;
  private static ArrayList<av> c = new ArrayList();
  private static Object d = new Object();
  private static final Comparator<String> e = new aq();
  private static final Comparator<av> f = new ar();
  private static HashMap<String, String> g = new HashMap();
  private static boolean h = false;
  private static boolean i = false;
  private static List<String> j = new ArrayList();
  private static i k = new at();
  private static i l = new au();
  
  public static final String A(String paramString)
  {
    if (paramString == null) {}
    int m;
    int n;
    do
    {
      return null;
      m = paramString.indexOf(';', bq(paramString));
      n = paramString.indexOf(':', bq(paramString));
    } while ((n == -1) || (n < bq(paramString)));
    if ((m == -1) || (m > n)) {}
    for (paramString = paramString.substring(bq(paramString), n);; paramString = paramString.substring(m + 1, n)) {
      return bA(paramString);
    }
  }
  
  public static final String B(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return null;
      try
      {
        if (!L(paramString)) {
          continue;
        }
        paramString = paramString.substring(bq(paramString));
        int m = paramString.indexOf('/');
        if (m == -1) {}
        for (;;)
        {
          m = paramString.lastIndexOf("@");
          if (m == -1) {
            break;
          }
          paramString = paramString.substring(0, m);
          m = paramString.indexOf(':');
          if (m == -1) {
            break;
          }
          return bA(paramString.substring(0, m));
          paramString = paramString.substring(0, m);
        }
        return null;
      }
      catch (Exception paramString) {}
    }
  }
  
  public static final String C(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return null;
      try
      {
        if ((!bm(paramString)) || (aJ(paramString))) {
          continue;
        }
        paramString = paramString.substring(bq(paramString));
        int m = paramString.indexOf('/');
        if (m == -1) {}
        for (;;)
        {
          m = paramString.lastIndexOf("@");
          if (m == -1) {
            break;
          }
          paramString = paramString.substring(0, m);
          m = paramString.indexOf(':');
          if (m == -1) {
            break;
          }
          return bA(paramString.substring(m + 1));
          paramString = paramString.substring(0, m);
        }
        return null;
      }
      catch (Exception paramString) {}
    }
  }
  
  public static boolean D(String paramString)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        return false;
      } while (!bm(paramString));
      paramString = C(paramString);
    } while ((paramString == null) || (paramString.length() == 0));
    return true;
  }
  
  public static String E(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    for (;;)
    {
      return str;
      str = paramString;
      if (!bm(paramString)) {
        continue;
      }
      str = paramString;
      if (D(paramString)) {
        continue;
      }
      try
      {
        Object localObject = bn(paramString);
        str = paramString;
        if (localObject == null) {
          continue;
        }
        str = paramString;
        if (((String)localObject).startsWith("pcs://")) {
          continue;
        }
        str = paramString;
        if (aJ(paramString)) {
          continue;
        }
        localObject = d.a().a(bn(paramString));
        str = paramString;
        if (localObject == null) {
          continue;
        }
        int m = 0;
        for (;;)
        {
          str = paramString;
          if (m >= ((List)localObject).size()) {
            break;
          }
          if (paramString.startsWith(G(((h)((List)localObject).get(m)).getAbsolutePath())))
          {
            str = b(paramString, bz(C(((h)((List)localObject).get(m)).getAbsolutePath())));
            return str;
          }
          m += 1;
        }
        return paramString;
      }
      catch (FileSystemException localFileSystemException) {}
    }
  }
  
  public static final String F(String paramString)
  {
    if (paramString == null) {
      str1 = null;
    }
    int m;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            return str1;
                            if (paramString.startsWith("/")) {
                              break;
                            }
                            str1 = paramString;
                          } while (paramString.indexOf("://") == -1);
                          str1 = paramString;
                        } while (bl(paramString));
                        str1 = paramString;
                      } while (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/"));
                      str1 = paramString;
                    } while (paramString.startsWith("usb://"));
                    str1 = paramString;
                  } while (ci(paramString));
                  str1 = paramString;
                } while (w(paramString));
                str1 = paramString;
              } while (paramString.equals("bt://"));
              str1 = paramString;
            } while (paramString.equals("book://"));
            str1 = paramString;
          } while (paramString.equals("apk://"));
          str1 = paramString;
        } while (paramString.equals("SP://"));
        if (!paramString.startsWith("bt://")) {
          break;
        }
        m = paramString.indexOf('/', 5);
        if ((m != -1) && (m != paramString.length() - 1)) {
          return paramString.substring(m, paramString.length());
        }
        if (m == -1) {
          break;
        }
        int n = paramString.indexOf('\n', 5);
        m = n;
        if (n == -1) {
          m = paramString.length() - 1;
        }
        str1 = paramString;
      } while (m <= 5);
      return paramString.substring(5, m);
      m = I(paramString);
      if (m == -1) {
        break;
      }
      str1 = paramString;
    } while (m == 30);
    String str1 = a(paramString, m);
    String str2 = b(paramString);
    if (paramString.startsWith("SP://")) {
      return "picture://" + str2 + str1;
    }
    return paramString.substring(0, bq(paramString)) + str2 + str1;
    return H(paramString);
  }
  
  public static final String G(String paramString)
  {
    if (paramString == null) {
      str1 = null;
    }
    int m;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      return str1;
                      if (paramString.startsWith("/")) {
                        break;
                      }
                      str1 = paramString;
                    } while (paramString.indexOf("://") == -1);
                    str1 = paramString;
                  } while (bl(paramString));
                  str1 = paramString;
                } while (aJ(paramString));
                str1 = paramString;
              } while (paramString.equals("bt://"));
              str1 = paramString;
            } while (paramString.equals("book://"));
            str1 = paramString;
          } while (paramString.equals("apk://"));
          str1 = paramString;
        } while (paramString.equals("SP://"));
        m = I(paramString);
        str1 = paramString;
      } while (m == -1);
      str1 = paramString;
    } while (m == 30);
    String str2 = a(paramString, m);
    String str3 = A(paramString);
    String str1 = b(paramString);
    if ((aG(paramString)) || (aL(paramString))) {
      str1 = ax(paramString);
    }
    if (aQ(paramString)) {
      str1 = ay(paramString);
    }
    if (paramString.startsWith("SP://")) {
      return "picture://" + str3 + ":" + "@" + str1 + str2;
    }
    if ((paramString.startsWith("smb://")) && (bI(paramString) != null)) {
      return paramString.substring(0, bq(paramString)) + bI(paramString) + ";" + str3 + ":" + "@" + str1 + str2;
    }
    StringBuilder localStringBuilder = new StringBuilder().append(paramString.substring(0, bq(paramString)));
    if (str3 != null) {}
    for (paramString = str3 + ":" + "@";; paramString = "") {
      return paramString + str1 + str2;
    }
  }
  
  public static String H(String paramString)
  {
    Object localObject = null;
    try
    {
      URI localURI = URI.create(paramString);
      localObject = localURI;
    }
    catch (Exception localException2)
    {
      for (;;)
      {
        try
        {
          int m;
          int n;
          localObject = paramString.substring(0, m) + paramString.substring(n + m + 1);
          return (String)localObject;
        }
        catch (Exception localException1) {}
        localException2 = localException2;
      }
    }
    if (localObject != null)
    {
      localObject = ((URI)localObject).getUserInfo();
      if ((localObject != null) && (((String)localObject).trim().length() != 0)) {
        break label36;
      }
    }
    label36:
    do
    {
      return paramString;
      m = paramString.indexOf((String)localObject);
      n = ((String)localObject).length();
    } while (m <= -1);
    return paramString;
  }
  
  public static final int I(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return -1;
      if ((paramString.startsWith("pcs://")) || ((paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) && (!bh(paramString)))) {
        return 23;
      }
      if (paramString.startsWith("smb://")) {
        return 1;
      }
      if (paramString.startsWith("ftp://")) {
        return 2;
      }
      if (paramString.startsWith("sftp://")) {
        return 5;
      }
      if (paramString.startsWith("bt://")) {
        return 3;
      }
      if (paramString.startsWith("net://")) {
        return 4;
      }
      if (paramString.startsWith("SP://")) {
        return 18;
      }
      if ((paramString.startsWith("/")) || (paramString.startsWith("file://"))) {
        return 0;
      }
      if (paramString.startsWith("music://")) {
        return 12;
      }
      if (paramString.startsWith("pic://")) {
        return 13;
      }
      if (paramString.startsWith("gallery://local/buckets/")) {
        return 25;
      }
      if (paramString.startsWith("video://")) {
        return 14;
      }
      if (paramString.startsWith("book://")) {
        return 16;
      }
      if (paramString.startsWith("archive://")) {
        return 39;
      }
      if (paramString.startsWith("encrypt://")) {
        return 40;
      }
      if (paramString.startsWith("apk://")) {
        return 17;
      }
      if (paramString.startsWith("ftps://")) {
        return 19;
      }
      if (paramString.startsWith("ftpes://")) {
        return 20;
      }
      if (paramString.startsWith("webdav://")) {
        return 21;
      }
      if (paramString.startsWith("webdavs://")) {
        return 22;
      }
      if (paramString.startsWith("app://")) {
        return 24;
      }
      if (paramString.startsWith("download://")) {
        return 26;
      }
      if (paramString.startsWith("du://")) {
        return 27;
      }
      if (paramString.startsWith("cmpn://")) {
        return 28;
      }
      if (paramString.startsWith("remote://")) {
        return 29;
      }
      if (paramString.startsWith("recycle://")) {
        return 31;
      }
      if (v(paramString)) {
        return 30;
      }
      if (paramString.startsWith("usb://")) {
        return 33;
      }
      if (paramString.startsWith("pcsres://")) {
        return 34;
      }
      if (paramString.startsWith("flashair://")) {
        return 35;
      }
      if (paramString.startsWith("#home_page#")) {
        return 32;
      }
      if (paramString.startsWith("adb://")) {
        return 36;
      }
      if (paramString.startsWith("appfolder://")) {
        return 37;
      }
      if (paramString.startsWith("clean://")) {
        return 38;
      }
      if (paramString.startsWith("log://")) {
        return 41;
      }
    } while (!paramString.startsWith("finder://"));
    return 42;
  }
  
  public static final boolean J(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("smb://");
  }
  
  public static final boolean K(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("sftp://");
  }
  
  public static final boolean L(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("ftp://");
  }
  
  public static final boolean M(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("adb://");
  }
  
  public static final boolean N(String paramString)
  {
    if ((!M(paramString)) || (paramString.equals("adb://"))) {}
    while (!a(paramString, 36).equals("/")) {
      return false;
    }
    return true;
  }
  
  public static final boolean O(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("adb://"))) {}
    while (!a(paramString, 36).startsWith("/apps")) {
      return false;
    }
    return true;
  }
  
  public static final boolean P(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("adb://"))) {}
    while (!a(paramString, 36).equals("/appsuser")) {
      return false;
    }
    return true;
  }
  
  public static final boolean Q(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("adb://"))) {}
    while (!a(paramString, 36).startsWith("/files")) {
      return false;
    }
    return true;
  }
  
  public static final boolean R(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("adb://"))) {}
    while (!a(paramString, 36).equals("/files")) {
      return false;
    }
    return true;
  }
  
  public static final boolean S(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("ftp://");
  }
  
  public static final boolean T(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("sftp://");
  }
  
  public static final boolean U(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("adb://");
  }
  
  public static final boolean V(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("music://");
  }
  
  public static final boolean W(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("music://");
  }
  
  public static final boolean X(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("pic://");
  }
  
  public static final boolean Y(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("pic://");
  }
  
  public static final boolean Z(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("video://");
  }
  
  public static String a(Context paramContext)
  {
    return a(paramContext, true);
  }
  
  public static String a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean) {}
    Object localObject;
    try
    {
      for (paramContext = paramContext.getFilesDir().getPath();; paramContext = paramContext.getCacheDir().getPath())
      {
        localObject = paramContext;
        if (paramContext == null) {
          localObject = com.estrongs.android.pop.a.a;
        }
        if (!paramBoolean) {
          break;
        }
        return (String)localObject + "/";
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = null;
      }
    }
    return (String)localObject + "/info/";
  }
  
  public static String a(File paramFile, String paramString, boolean paramBoolean)
  {
    File localFile = new File(new File(paramFile, "cache"), paramString);
    if (!localFile.exists())
    {
      paramFile = new File(paramFile, paramString);
      if (!paramFile.exists())
      {
        if (localFile.mkdirs()) {
          return localFile.getAbsolutePath();
        }
      }
      else
      {
        if (paramFile.renameTo(localFile)) {
          return localFile.getAbsolutePath();
        }
        if (localFile.mkdirs()) {
          return localFile.getAbsolutePath();
        }
      }
    }
    else
    {
      return localFile.getAbsolutePath();
    }
    if (paramBoolean) {
      return null;
    }
    return localFile.getAbsolutePath();
  }
  
  public static final String a(String paramString)
  {
    String str1;
    if (paramString == null) {
      str1 = null;
    }
    String str2;
    do
    {
      do
      {
        do
        {
          return str1;
          if (paramString.equals("smb://")) {
            return "Whole Network";
          }
          str1 = paramString;
        } while (!bm(paramString));
        if (!paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) {
          break;
        }
        str2 = u.a().g();
        str1 = paramString;
      } while (str2 == null);
      str2 = A(str2);
      str1 = paramString;
    } while (str2 == null);
    return str2 + "@pcs";
    if ((aG(paramString)) || (aL(paramString)))
    {
      str1 = ax(paramString);
      return as(paramString) + "@" + str1;
    }
    if (aQ(paramString))
    {
      str1 = ay(paramString);
      return at(paramString) + "@" + str1;
    }
    paramString = paramString.substring(bq(paramString));
    int m = paramString.indexOf('/');
    if (m == -1)
    {
      m = paramString.lastIndexOf("@");
      if (m != -1) {
        break label227;
      }
    }
    for (;;)
    {
      m = paramString.lastIndexOf(':');
      if (m != -1) {
        break label238;
      }
      return paramString;
      paramString = paramString.substring(0, m);
      break;
      label227:
      paramString = paramString.substring(m + 1);
    }
    label238:
    return paramString.substring(0, m);
  }
  
  public static String a(String paramString, int paramInt)
  {
    String str = paramString;
    switch (paramInt)
    {
    default: 
      str = null;
    case 0: 
      return str;
    case 1: 
      str = "smb://";
    }
    for (;;)
    {
      paramString = paramString.substring(str.length());
      paramInt = paramString.indexOf('/');
      str = "/";
      if (paramInt <= 0) {
        break;
      }
      return paramString.substring(paramInt);
      str = "bt://";
      continue;
      str = "sftp://";
      continue;
      str = "ftp://";
      continue;
      str = "ftps://";
      continue;
      str = "ftpes://";
      continue;
      str = "webdav://";
      continue;
      str = "webdavs://";
      continue;
      return aq(paramString);
      return aq(cd(paramString));
      return ar(paramString);
      if (paramString.startsWith("http://")) {}
      for (;;)
      {
        str = "usb://";
        break;
      }
      str = "adb://";
    }
  }
  
  public static String a(String paramString, int paramInt, boolean paramBoolean)
  {
    return a(paramString, paramInt, paramBoolean, false);
  }
  
  public static String a(String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    StringBuilder localStringBuilder1 = new StringBuilder("http://");
    StringBuilder localStringBuilder2 = new StringBuilder();
    Object localObject1 = "127.0.0.1";
    if (paramBoolean2) {
      localObject1 = an.a();
    }
    localStringBuilder1.append((String)localObject1 + ":" + paramInt + "/");
    paramInt = I(paramString);
    Object localObject3;
    String str1;
    Object localObject2;
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      localObject1 = new String("fake");
      localObject3 = new String("fake");
      localStringBuilder2.append("local");
      str1 = null;
      localObject2 = null;
    }
    for (;;)
    {
      label249:
      localStringBuilder2.append("/");
      if (localObject1 != null)
      {
        if (str1 != null)
        {
          localStringBuilder2.append(str1);
          localStringBuilder2.append(";");
        }
        localStringBuilder2.append((String)localObject1);
        localStringBuilder2.append("@");
      }
      localStringBuilder2.append((String)localObject3);
      if (localObject2 != null) {
        localStringBuilder2.append(":" + (String)localObject2);
      }
      String str2 = C(paramString);
      if (str2 != null)
      {
        localObject4 = g;
        if (str1 != null) {
          break label926;
        }
        label364:
        if (localObject2 != null) {
          break label956;
        }
      }
      for (;;)
      {
        label926:
        label956:
        try
        {
          g.put((String)localObject1 + "@" + (String)localObject3, bz(str2));
          paramString = a(paramString, paramInt);
          if (paramString == null) {
            break;
          }
          localStringBuilder2.append(paramString);
          if (!paramBoolean1) {
            break label1013;
          }
          localStringBuilder1.append(Uri.encode(localStringBuilder2.toString()));
          return localStringBuilder1.toString();
        }
        finally {}
        str1 = z(paramString);
        localObject1 = A(paramString);
        localObject3 = a(paramString);
        localStringBuilder2.append("smb");
        localObject2 = null;
        break label249;
        localObject2 = A(paramString);
        str1 = a(paramString);
        localObject1 = y(paramString);
        if (paramInt == 2)
        {
          localStringBuilder2.append("ftp");
          localObject4 = localObject2;
          localObject3 = str1;
          str1 = null;
          localObject2 = localObject1;
          localObject1 = localObject4;
          break label249;
        }
        if (paramInt == 19)
        {
          localStringBuilder2.append("ftps");
          localObject4 = localObject2;
          localObject3 = str1;
          str1 = null;
          localObject2 = localObject1;
          localObject1 = localObject4;
          break label249;
        }
        if (paramInt == 20)
        {
          localStringBuilder2.append("ftpes");
          localObject4 = localObject2;
          localObject3 = str1;
          str1 = null;
          localObject2 = localObject1;
          localObject1 = localObject4;
          break label249;
        }
        if (paramInt == 5)
        {
          localStringBuilder2.append("sftp");
          localObject4 = localObject2;
          localObject3 = str1;
          str1 = null;
          localObject2 = localObject1;
          localObject1 = localObject4;
          break label249;
        }
        if (paramInt == 21)
        {
          localStringBuilder2.append("webdav");
          localObject4 = localObject2;
          localObject3 = str1;
          str1 = null;
          localObject2 = localObject1;
          localObject1 = localObject4;
          break label249;
        }
        if (paramInt != 22) {
          break label1027;
        }
        localStringBuilder2.append("webdavs");
        localObject4 = localObject2;
        localObject3 = str1;
        str1 = null;
        localObject2 = localObject1;
        localObject1 = localObject4;
        break label249;
        int m = paramString.indexOf("/", "bt://".length());
        localObject3 = paramString.substring("bt://".length(), m);
        localStringBuilder2.append("bluetooth");
        localObject2 = null;
        localObject1 = null;
        str1 = null;
        break label249;
        localObject1 = A(paramString);
        localObject3 = ax(paramString);
        localStringBuilder2.append("netdisk");
        str1 = null;
        localObject2 = null;
        break label249;
        paramString = cd(paramString);
        localObject1 = A(paramString);
        localStringBuilder2.append("pcs");
        localObject3 = "pcs";
        str1 = null;
        localObject2 = null;
        break label249;
        if ((paramBoolean2) && (paramString.contains("127.0.0.1"))) {
          return paramString.replace("127.0.0.1", (CharSequence)localObject1);
        }
        return paramString;
        localObject3 = a(paramString);
        localStringBuilder2.append("usb");
        localObject2 = null;
        localObject1 = null;
        str1 = null;
        break label249;
        return paramString.replaceFirst("flashair://", "http://");
        localObject1 = A(paramString);
        localObject3 = a(paramString);
        localStringBuilder2.append("adb");
        str1 = null;
        localObject2 = null;
        break label249;
        localObject1 = str1 + ';' + (String)localObject1;
        break label364;
        g.put((String)localObject1 + "@" + (String)localObject3 + ":" + (String)localObject2, bz(str2));
        continue;
        label1013:
        localStringBuilder1.append(localStringBuilder2.toString());
      }
      label1027:
      Object localObject4 = localObject2;
      localObject3 = str1;
      str1 = null;
      localObject2 = localObject1;
      localObject1 = localObject4;
    }
  }
  
  public static final String a(String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString1);
    if (localStringBuilder.indexOf("@") != -1) {
      return localStringBuilder.toString();
    }
    if (!bk.a(paramString2)) {
      localStringBuilder.insert(bq(paramString1), bz(paramString2) + ":" + bz(paramString3) + "@");
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return "net://" + bz(paramString2) + ":" + bz(paramString3) + "@" + paramString1 + paramString4;
  }
  
  public static final String a(boolean paramBoolean, String paramString)
  {
    String str;
    if ((paramString == null) || (!bg(paramString)))
    {
      str = null;
      return str;
    }
    paramString = new StringBuilder(paramString);
    int m = paramString.indexOf("/", 5);
    if (m > 5) {}
    for (paramString = paramString.substring(5, m);; paramString = paramString.toString())
    {
      str = paramString;
      if (paramBoolean) {
        break;
      }
      m = paramString.indexOf("\n");
      str = paramString;
      if (m == -1) {
        break;
      }
      return paramString.substring(0, m);
    }
  }
  
  public static List<String> a()
  {
    synchronized (d)
    {
      if (b == null) {
        p();
      }
      LinkedList localLinkedList = new LinkedList();
      if (b != null)
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext())
        {
          av localav = (av)localIterator.next();
          if (b != null) {
            localLinkedList.add(b);
          }
        }
      }
    }
    if (localList.size() > 1) {
      Collections.sort(localList);
    }
    return localList;
  }
  
  public static void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      new as("StorageInfoRefresher").start();
      return;
    }
    n();
  }
  
  public static final boolean a(int paramInt)
  {
    return (paramInt == 2) || (paramInt == 19) || (paramInt == 20) || (paramInt == 5) || (paramInt == 21) || (paramInt == 22);
  }
  
  public static boolean a(av paramav)
  {
    if (paramav == null) {}
    while ((paramav == null) || ((!bM(c)) && (!bN(d(b))))) {
      return false;
    }
    return true;
  }
  
  public static boolean a(h paramh)
  {
    return paramh.getName().startsWith(".");
  }
  
  public static boolean a(File paramFile)
  {
    try
    {
      if (bD(paramFile.getAbsolutePath())) {
        return false;
      }
      boolean bool = c.a(FileExplorerActivity.aj(), paramFile.getAbsolutePath());
      return bool;
    }
    catch (Exception paramFile) {}
    return false;
  }
  
  public static boolean a(String paramString, TypedMap paramTypedMap)
  {
    String str = bj(paramString);
    return (bi(paramString)) && (bk.f()) && (!paramTypedMap.getBoolean("fileSystemSearch")) && ((bC(bV(str))) || ("externalstorage://".equals(str)));
  }
  
  public static final boolean a(String paramString1, String paramString2)
  {
    Object localObject3 = null;
    boolean bool2 = true;
    boolean bool1;
    if ((paramString1 == null) || (paramString2 == null))
    {
      bool1 = false;
      return bool1;
    }
    if ((!bl(paramString1)) || (!bl(paramString2))) {
      return false;
    }
    boolean bool3 = bC(paramString1);
    boolean bool4 = bC(paramString2);
    int m;
    label70:
    int n;
    label92:
    int i1;
    label115:
    int i2;
    label138:
    Object localObject1;
    label173:
    Object localObject2;
    if ((paramString1.startsWith("/system/")) || (paramString1.equals("/system")))
    {
      m = 1;
      if ((!paramString2.startsWith("/system/")) && (!paramString2.equals("/system"))) {
        break label257;
      }
      n = 1;
      if ((!paramString1.startsWith("/data/")) && (!paramString1.equals("/data"))) {
        break label262;
      }
      i1 = 1;
      if ((!paramString2.startsWith("/data/")) && (!paramString2.equals("/data"))) {
        break label268;
      }
      i2 = 1;
      if ((!bool3) || (!bool4)) {
        break label309;
      }
      localObject1 = a();
      Collections.sort((List)localObject1, e);
      Iterator localIterator = ((List)localObject1).iterator();
      localObject1 = null;
      if (!localIterator.hasNext()) {
        break label274;
      }
      String str = (String)localIterator.next();
      localObject2 = localObject3;
      if (localObject3 == null)
      {
        localObject2 = localObject3;
        if (bG(paramString1).startsWith(str)) {
          localObject2 = str;
        }
      }
      if ((localObject1 != null) || (!bG(paramString2).startsWith(str))) {
        break label369;
      }
      localObject1 = str;
    }
    label257:
    label262:
    label268:
    label274:
    label309:
    label369:
    for (;;)
    {
      localObject3 = localObject2;
      break label173;
      m = 0;
      break label70;
      n = 0;
      break label92;
      i1 = 0;
      break label115;
      i2 = 0;
      break label138;
      if (localObject3 != null)
      {
        bool1 = bool2;
        if (((String)localObject3).equalsIgnoreCase((String)localObject1)) {
          break;
        }
      }
      if (localObject3 == null)
      {
        bool1 = bool2;
        if (localObject1 == null) {
          break;
        }
      }
      return false;
      if (m != 0)
      {
        bool1 = bool2;
        if (n != 0) {
          break;
        }
      }
      if (i1 != 0)
      {
        bool1 = bool2;
        if (i2 != 0) {
          break;
        }
      }
      if ((!bool3) && (!bool4) && (m == 0) && (n == 0) && (i1 == 0))
      {
        bool1 = bool2;
        if (i2 == 0) {
          break;
        }
      }
      return false;
    }
  }
  
  public static final boolean a(String paramString, boolean paramBoolean)
  {
    if (paramString == null) {
      return false;
    }
    if (aH(paramString)) {
      return paramBoolean;
    }
    paramString = bV(paramString);
    Object localObject = b();
    if ((localObject != null) && (paramString != null))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        av localav = (av)((Iterator)localObject).next();
        if ((localav != null) && (b != null) && (paramString.startsWith(b)) && (c != null) && (((c.startsWith("/dev/block/sda")) && (c.length() - "/dev/block/sda".length() == 1)) || ((c.startsWith("/dev/sda")) && (c.length() - "/dev/sda".length() == 1)) || ((c.startsWith("/dev/block/sd")) && (c.length() - "/dev/block/sd".length() == 1)) || ((c.startsWith("/dev/sd")) && (c.length() - "/dev/sd".length() == 1)) || (c.startsWith("/dev/block/vold/8:")))) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static boolean a(String[] paramArrayOfString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramArrayOfString != null) {
      bool1 = bool2;
    }
    try
    {
      if (paramArrayOfString.length >= 3)
      {
        bool1 = bool2;
        if (m.b(paramArrayOfString))
        {
          av localav = bK(paramArrayOfString[0]);
          if (localav != null) {
            d = paramArrayOfString[2];
          }
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (Exception paramArrayOfString)
    {
      l.e(a, "Failed to mountFs");
    }
    return false;
  }
  
  public static final boolean aA(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "Instagram".equals(ay(paramString));
  }
  
  public static final boolean aB(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "Facebook".equals(ay(paramString));
  }
  
  public static final boolean aC(String paramString)
  {
    if (paramString == null) {}
    while (!aQ(paramString)) {
      return false;
    }
    return "pcs".equals(ay(paramString));
  }
  
  public static final boolean aD(String paramString)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        return false;
      } while (!aC(paramString));
      paramString = at(paramString);
    } while ((paramString != null) && (paramString.length() != 0));
    return true;
  }
  
  public static final boolean aE(String paramString)
  {
    return (aC(paramString)) && (aV(paramString));
  }
  
  public static final boolean aF(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "dropbox".equals(ax(paramString));
  }
  
  public static final boolean aG(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("net://");
  }
  
  public static final boolean aH(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("usb://");
  }
  
  public static final boolean aI(String paramString)
  {
    return a(paramString, true);
  }
  
  public static final boolean aJ(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX");
  }
  
  public static final boolean aK(String paramString)
  {
    if (!aJ(paramString)) {
      return false;
    }
    return e(paramString, k());
  }
  
  public static final boolean aL(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("pcs://");
  }
  
  public static final String aM(String paramString)
  {
    int m = 1;
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      if (!aL(paramString)) {
        return null;
      }
      String str = a(paramString, 23);
      if ((str == null) || (str.equals("/"))) {
        return null;
      }
      paramString = str;
      if (str.endsWith("/")) {
        paramString = str.substring(0, str.length() - 1);
      }
      if (paramString.indexOf('/', 1) == -1) {}
      while (m == 0)
      {
        return null;
        m = 0;
      }
    }
  }
  
  public static final boolean aN(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("pcs://");
  }
  
  public static final boolean aO(String paramString)
  {
    boolean bool2 = false;
    boolean bool1;
    if (!aL(paramString))
    {
      bool1 = bool2;
      if (!aJ(paramString)) {}
    }
    else
    {
      String str = paramString;
      if (!paramString.endsWith("/")) {
        str = paramString + "/";
      }
      if (!str.endsWith("@pcs/files/"))
      {
        bool1 = bool2;
        if (!str.endsWith("/PCS_DRIVE_Js1a7M5e_9yAcTvFX/files/")) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static final boolean aP(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("SP://");
  }
  
  public static final boolean aQ(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("SP://");
  }
  
  public static final boolean aR(String paramString)
  {
    if (!aQ(paramString)) {}
    do
    {
      return false;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() < 3);
    return "hot".equals(paramString.get(2));
  }
  
  public static final boolean aS(String paramString)
  {
    if (!aQ(paramString)) {}
    do
    {
      return false;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() < 3);
    return "album".equals(paramString.get(2));
  }
  
  public static final boolean aT(String paramString)
  {
    if (!aQ(paramString)) {}
    do
    {
      return false;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() != 3);
    return "album".equals(paramString.get(2));
  }
  
  public static final boolean aU(String paramString)
  {
    if (!aQ(paramString)) {}
    do
    {
      return false;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() != 4);
    return "album".equals(paramString.get(2));
  }
  
  public static final boolean aV(String paramString)
  {
    if (!aQ(paramString)) {}
    while (com.estrongs.fs.a.a.c(paramString).size() != 2) {
      return false;
    }
    return true;
  }
  
  public static final boolean aW(String paramString)
  {
    if (!aQ(paramString)) {}
    while (com.estrongs.fs.a.a.c(paramString).size() <= 2) {
      return false;
    }
    return true;
  }
  
  public static final boolean aX(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "gallery://local/buckets/".equals(bW(paramString));
  }
  
  public static final boolean aY(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("gallery://local/buckets/");
  }
  
  public static final boolean aZ(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("net://");
  }
  
  public static final boolean aa(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("video://");
  }
  
  public static final boolean ab(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("archive://");
  }
  
  public static final boolean ac(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("archive://");
  }
  
  public static final boolean ad(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("encrypt://");
  }
  
  public static final boolean ae(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("book://");
  }
  
  public static final boolean af(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("book://");
  }
  
  public static final boolean ag(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("apk://");
  }
  
  public static final boolean ah(String paramString)
  {
    return (V(paramString)) || (X(paramString)) || (aY(paramString)) || (Z(paramString)) || (ae(paramString)) || (ag(paramString)) || (ai(paramString)) || (bw(paramString));
  }
  
  public static final boolean ai(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("app://");
  }
  
  public static final boolean aj(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://".equals(paramString);
  }
  
  public static final boolean ak(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://user".equals(paramString);
  }
  
  public static final boolean al(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://system".equals(paramString);
  }
  
  public static final boolean am(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://phone".equals(paramString);
  }
  
  public static final boolean an(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://sdcard".equals(paramString);
  }
  
  public static final boolean ao(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://update".equals(paramString);
  }
  
  public static final boolean ap(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://backuped".equals(paramString);
  }
  
  public static String aq(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.startsWith("net://")) && (!paramString.startsWith("pcs://"))) {
      return null;
    }
    if (paramString.startsWith("net://")) {}
    for (paramString = paramString.substring("net://".length());; paramString = paramString.substring("pcs://".length()))
    {
      int m = paramString.indexOf('/');
      if (m <= 0) {
        break;
      }
      return paramString.substring(m);
    }
    return "/";
  }
  
  public static String ar(String paramString)
  {
    String str = null;
    if (paramString == null) {}
    int m;
    do
    {
      do
      {
        return str;
      } while (!paramString.startsWith("SP://"));
      paramString = paramString.substring("SP://".length());
      m = paramString.indexOf('/');
      str = "/";
    } while (m <= 0);
    return paramString.substring(m);
  }
  
  public static String as(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if ((!paramString.startsWith("net://")) && (!paramString.startsWith("pcs://"))) {
      return null;
    }
    if (paramString.startsWith("net://")) {}
    for (paramString = paramString.substring("net://".length());; paramString = paramString.substring("pcs://".length()))
    {
      paramString = paramString.split("/")[0].split(":");
      if (paramString.length != 1) {
        break label123;
      }
      if ((paramString[0] == null) || (!paramString[0].contains("@"))) {
        break;
      }
      paramString = paramString[0].split("@");
      if (paramString.length < 1) {
        break;
      }
      return bA(paramString[0]);
    }
    return null;
    label123:
    return bA(paramString[0]);
  }
  
  public static String at(String paramString)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        do
        {
          return null;
        } while (!paramString.startsWith("SP://"));
        paramString = paramString.substring("SP://".length()).split("/")[0].split(":");
        if (paramString.length != 1) {
          break;
        }
      } while ((paramString[0] == null) || (!paramString[0].contains("@")));
      paramString = paramString[0].split("@");
    } while (paramString.length < 1);
    return bA(paramString[0]);
    return bA(paramString[0]);
  }
  
  public static String au(String paramString)
  {
    String str2 = null;
    String str1;
    if (paramString == null) {
      str1 = str2;
    }
    do
    {
      int m;
      int n;
      do
      {
        do
        {
          do
          {
            return str1;
            if (paramString.startsWith("net://")) {
              break;
            }
            str1 = str2;
          } while (!paramString.startsWith("pcs://"));
          m = paramString.indexOf("@");
          str1 = str2;
        } while (m == -1);
        n = paramString.indexOf("/", m);
        str1 = str2;
      } while (n == -1);
      str2 = paramString.substring(m + 1, n);
      paramString = paramString.substring(0, n + 1);
      str1 = paramString;
    } while (!"pcs".equals(str2));
    return paramString + "files";
  }
  
  public static String av(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if ((!paramString.startsWith("net://")) && (!paramString.startsWith("pcs://"))) {
      return null;
    }
    if (paramString.startsWith("net://")) {}
    for (paramString = paramString.substring("net://".length());; paramString = paramString.substring("pcs://".length()))
    {
      paramString = paramString.split("/")[0].split(":");
      if (paramString.length != 1) {
        break;
      }
      return null;
    }
    return bA(paramString[1].split("@")[0]);
  }
  
  public static String aw(String paramString)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        return null;
      } while (!paramString.startsWith("SP://"));
      paramString = paramString.substring("SP://".length()).split("/")[0].split(":");
    } while (paramString.length == 1);
    return bA(paramString[1].split("@")[0]);
  }
  
  public static String ax(String paramString)
  {
    String str = null;
    if (paramString == null) {}
    do
    {
      return str;
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
        return "pcs";
      }
    } while ((!paramString.startsWith("net://")) && (!paramString.startsWith("pcs://")));
    if (paramString.startsWith("net://"))
    {
      paramString = paramString.substring("net://".length());
      label62:
      paramString = paramString.split("/")[0].split(":");
      if (paramString.length != 1) {
        break label140;
      }
    }
    label140:
    for (int m = 0;; m = 1)
    {
      paramString = paramString[m].split("@");
      if (paramString.length == 1) {}
      for (paramString = paramString[0];; paramString = paramString[1])
      {
        str = paramString;
        if (!"skydrive".equals(paramString)) {
          break;
        }
        return "onedrive";
        paramString = paramString.substring("pcs://".length());
        break label62;
      }
    }
  }
  
  public static String ay(String paramString)
  {
    if (paramString == null) {}
    while (!paramString.startsWith("SP://")) {
      return null;
    }
    paramString = paramString.substring("SP://".length()).split("/");
    String[] arrayOfString = paramString[0].split(":");
    if (arrayOfString.length == 1) {
      return paramString[0];
    }
    paramString = arrayOfString[1].split("@");
    if (paramString.length == 1) {
      return "UnknownType";
    }
    return paramString[1];
  }
  
  public static final boolean az(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "Flickr".equals(ay(paramString));
  }
  
  public static String b(Context paramContext)
  {
    return com.estrongs.android.pop.a.a + "/push/";
  }
  
  public static final String b(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      if (paramString.equals("smb://")) {
        return "Whole Network";
      }
      str = paramString;
    } while (!bm(paramString));
    if (aG(paramString))
    {
      str = ax(paramString);
      return as(paramString) + "@" + str;
    }
    if (aL(paramString))
    {
      str = ax(paramString);
      return as(paramString) + "@" + str;
    }
    if (aQ(paramString))
    {
      str = ay(paramString);
      return at(paramString) + "@" + str;
    }
    paramString = paramString.substring(bq(paramString));
    int m = paramString.indexOf('/');
    if (m == -1)
    {
      m = paramString.lastIndexOf("@");
      if (m != -1) {
        break label193;
      }
    }
    for (;;)
    {
      return paramString;
      paramString = paramString.substring(0, m);
      break;
      label193:
      paramString = paramString.substring(m + 1);
    }
  }
  
  public static String b(String paramString, int paramInt)
  {
    return a(paramString, paramInt, true);
  }
  
  public static final String b(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      str1 = null;
    }
    int m;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return str1;
                  if (paramString1.startsWith("/")) {
                    break;
                  }
                  str1 = paramString1;
                } while (paramString1.indexOf("://") == -1);
                str1 = paramString1;
              } while (bl(paramString1));
              str1 = paramString1;
            } while (paramString1.equals("bt://"));
            str1 = paramString1;
          } while (paramString1.equals("book://"));
          str1 = paramString1;
        } while (paramString1.equals("apk://"));
        str1 = paramString1;
      } while (paramString1.equals("SP://"));
      m = I(paramString1);
      str1 = paramString1;
    } while (m == -1);
    String str2 = a(paramString1, m);
    String str3 = A(paramString1);
    String str1 = b(paramString1);
    if (aG(paramString1)) {
      str1 = ax(paramString1);
    }
    if (aQ(paramString1)) {
      str1 = ay(paramString1);
    }
    if (paramString1.startsWith("SP://")) {
      return "picture://" + str3 + ":" + paramString2 + "@" + str1 + str2;
    }
    if ((paramString1.startsWith("smb://")) && (bI(paramString1) != null)) {
      return paramString1.substring(0, bq(paramString1)) + bI(paramString1) + ";" + str3 + ":" + paramString2 + "@" + str1 + str2;
    }
    StringBuilder localStringBuilder = new StringBuilder().append(paramString1.substring(0, bq(paramString1)));
    if (str3 != null) {}
    for (paramString1 = str3 + ":" + paramString2 + "@";; paramString1 = "") {
      return paramString1 + str1 + str2;
    }
  }
  
  public static String b(String paramString1, String paramString2, String paramString3)
  {
    return "webdavs://" + bz(paramString1) + ":" + bz(paramString2) + "@webdav.yandex.ru" + paramString3;
  }
  
  public static String b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return "SP://" + bz(paramString2) + ":" + bz(paramString3) + "@" + paramString1 + paramString4;
  }
  
  public static String b(String paramString, boolean paramBoolean)
  {
    String str2 = bF(paramString);
    String str1;
    if (str2 == null) {
      str1 = null;
    }
    do
    {
      do
      {
        do
        {
          return str1;
          if ((paramBoolean) && (!paramString.endsWith("/")) && (paramString.length() > 1)) {
            return str2 + "/";
          }
          str1 = str2;
        } while (paramBoolean);
        str1 = str2;
      } while (!paramString.endsWith("/"));
      str1 = str2;
    } while (paramString.length() <= 1);
    return str2.substring(0, str2.length() - 1);
  }
  
  public static List<av> b()
  {
    synchronized (d)
    {
      if (b == null) {
        p();
      }
      LinkedList localLinkedList = b;
      return localLinkedList;
    }
  }
  
  public static final boolean b(int paramInt)
  {
    return (paramInt == 18) || (paramInt == 13) || (paramInt == 25);
  }
  
  public static boolean b(String paramString, TypedMap paramTypedMap)
  {
    return (bi(paramString)) && (!a(paramString, paramTypedMap));
  }
  
  public static final String bA(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    return paramString.replaceAll("\\[\\$\\$\\$\\]", ":").replaceAll("\\[###\\]", "/").replaceAll("\\[\\^\\^\\^\\]", "@");
  }
  
  public static final String bB(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    while ((bp(paramString)) || (paramString.endsWith("://"))) {
      return paramString;
    }
    if (bo(paramString)) {
      return null;
    }
    String str = paramString;
    if (bw(paramString)) {
      str = paramString.substring("log://".length());
    }
    paramString = new StringBuilder(str);
    int m = str.length();
    if (paramString.charAt(m - 1) == '/') {
      paramString.deleteCharAt(m - 1);
    }
    if ((ba(str)) && (!bd(str)) && (bf(str).indexOf("/") == -1)) {
      return be(str);
    }
    m = paramString.lastIndexOf("/");
    if (m != -1) {
      paramString.delete(m + 1, paramString.length());
    }
    str = paramString.toString();
    if ((str.equals("sftp://")) || (str.equals("ftps://")) || (str.equals("ftpes://")) || (str.equals("webdav://")) || (str.equals("webdavs://"))) {
      return "ftp://";
    }
    return paramString.toString();
  }
  
  public static final boolean bC(String paramString)
  {
    return d(paramString, true);
  }
  
  public static final boolean bD(String paramString)
  {
    return d(paramString, false);
  }
  
  public static final boolean bE(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = bF(paramString);
    } while ((paramString == null) || ((!paramString.equals("/sdcard/")) && (!paramString.equals("/mnt/sdcard/")) && (!paramString.equals("/mnt/sdcard")) && (!paramString.equals("/sdcard"))));
    return true;
  }
  
  public static String bF(String paramString)
  {
    if (paramString.startsWith("file://")) {}
    do
    {
      try
      {
        String str1 = new File(new URI(paramString)).getAbsolutePath();
        return str1;
      }
      catch (Exception localException)
      {
        return paramString.substring(7);
      }
      String str2 = paramString;
    } while (paramString.startsWith("/"));
    return null;
  }
  
  public static String bG(String paramString)
  {
    return bV(paramString);
  }
  
  public static String bH(String paramString)
  {
    int i1 = 1;
    if (paramString == null) {
      return null;
    }
    String str1 = an.a();
    int n;
    if ((paramString.startsWith("http://127.0.0.1")) || (paramString.startsWith("http://" + str1)))
    {
      m = paramString.indexOf("/", 7);
      str1 = paramString;
      if (m >= 0) {
        str1 = paramString.substring(m);
      }
      if (!str1.startsWith("/")) {
        break label116;
      }
      n = str1.indexOf('/', 1);
    }
    for (int m = 1;; m = 0)
    {
      if (n != -1) {
        break label129;
      }
      return null;
      str1 = paramString;
      if (paramString.startsWith("/")) {
        break;
      }
      return paramString;
      label116:
      n = str1.indexOf('/');
    }
    label129:
    paramString = str1.substring(m, n);
    str1 = str1.substring(n + 1);
    m = str1.indexOf("/");
    if (m == -1) {
      return null;
    }
    String str2 = str1.substring(0, m);
    String str4 = str1.substring(m);
    StringBuilder localStringBuilder = new StringBuilder();
    if ("local".equals(paramString))
    {
      n = 1;
      m = 0;
      i1 = str2.lastIndexOf('@');
      if (i1 != -1) {
        break label700;
      }
      str1 = null;
      paramString = null;
    }
    for (;;)
    {
      label220:
      HashMap localHashMap;
      Object localObject;
      if (n == 0)
      {
        if (paramString == null) {
          break label783;
        }
        localHashMap = g;
        if (str1 != null) {
          break label748;
        }
        localObject = paramString;
      }
      for (;;)
      {
        label700:
        label748:
        try
        {
          String str3 = (String)g.get((String)localObject + "@" + str2);
          localObject = str3;
          if (str3 == null) {
            localObject = d.a().a(paramString, str2, m, str2);
          }
          if (localObject != null)
          {
            if (str1 != null)
            {
              localStringBuilder.append(str1);
              localStringBuilder.append(";");
            }
            localStringBuilder.append(paramString);
            localStringBuilder.append(':');
            localStringBuilder.append((String)localObject);
            localStringBuilder.append('@');
          }
          localStringBuilder.append(str2);
          localStringBuilder.append(str4);
          return localStringBuilder.toString();
        }
        finally {}
        if ("smb".equals(paramString))
        {
          localStringBuilder.append("smb://");
          n = 0;
          m = i1;
          break;
        }
        if ("ftp".equals(paramString))
        {
          m = 2;
          localStringBuilder.append("ftp://");
          n = 0;
          break;
        }
        if ("ftps".equals(paramString))
        {
          m = 19;
          localStringBuilder.append("ftps://");
          n = 0;
          break;
        }
        if ("ftpes".equals(paramString))
        {
          m = 20;
          localStringBuilder.append("ftpes://");
          n = 0;
          break;
        }
        if ("sftp".equals(paramString))
        {
          m = 5;
          localStringBuilder.append("sftp://");
          n = 0;
          break;
        }
        if ("netdisk".equals(paramString))
        {
          m = 4;
          localStringBuilder.append("net://");
          n = 0;
          break;
        }
        if ("pcs".equals(paramString))
        {
          m = 23;
          localStringBuilder.append("pcs://");
          n = 0;
          break;
        }
        if ("bluetooth".equals(paramString))
        {
          m = 3;
          localStringBuilder.append("bt://");
          n = 0;
          break;
        }
        if ("webdav".equals(paramString))
        {
          localStringBuilder.append("webdav://");
          m = 0;
          n = 0;
          break;
        }
        if ("webdavs".equals(paramString))
        {
          localStringBuilder.append("webdavs://");
          m = 0;
          n = 0;
          break;
        }
        if ("usb".equals(paramString))
        {
          localStringBuilder.append("usb://");
          m = 0;
          n = 0;
          break;
        }
        if ("adb".equals(paramString))
        {
          localStringBuilder.append("adb://");
          m = 0;
          n = 0;
          break;
        }
        return null;
        paramString = str2.substring(0, i1);
        str2 = str2.substring(i1 + 1);
        i1 = paramString.indexOf(';');
        if (i1 <= 0) {
          break label789;
        }
        str1 = paramString.substring(0, i1);
        paramString = paramString.substring(i1 + 1);
        break label220;
        localObject = str1 + ';' + paramString;
        continue;
        label783:
        localObject = null;
      }
      label789:
      str1 = null;
    }
  }
  
  public static String bI(String paramString)
  {
    int m = bq(paramString);
    int n = paramString.indexOf('/', m);
    if (n == -1) {}
    int i1;
    do
    {
      return null;
      paramString = paramString.substring(m, n);
      m = paramString.indexOf('@');
      n = paramString.indexOf(':');
      i1 = paramString.indexOf(';');
    } while ((i1 == -1) || (i1 > m) || (i1 > n));
    return paramString.substring(0, i1);
  }
  
  public static final boolean bJ(String paramString)
  {
    if (paramString == null) {}
    String str1;
    String str2;
    do
    {
      do
      {
        return false;
      } while (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/"));
      str1 = b.b();
      if (!h) {
        break;
      }
      str1 = "/storage/sdcard0";
      str2 = bU(paramString);
    } while (str2 == null);
    if (str1.endsWith("/"))
    {
      paramString = str2;
      if (!str2.endsWith("/")) {
        paramString = str2 + "/";
      }
      label78:
      if (paramString.equalsIgnoreCase(str1)) {
        break label129;
      }
    }
    label129:
    for (boolean bool = true;; bool = false)
    {
      return bool;
      if (!i) {
        break;
      }
      str1 = "/storage/emulated/0";
      break;
      paramString = str2;
      if (!str2.endsWith("/")) {
        break label78;
      }
      paramString = str2.substring(0, str2.length() - 1);
      break label78;
    }
  }
  
  public static av bK(String paramString)
  {
    return c(paramString, true);
  }
  
  public static boolean bL(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = bK(paramString);
    } while ((paramString == null) || ((!bM(c)) && (!bN(d(b)))));
    return true;
  }
  
  public static boolean bM(String paramString)
  {
    if (paramString == null) {}
    while (((paramString == null) || (!paramString.startsWith("/dev/block/sd")) || (paramString.length() - "/dev/block/sd".length() != 1)) && ((!paramString.startsWith("/dev/sd")) || (paramString.length() - "/dev/sd".length() != 1)) && ((!paramString.startsWith("/dev/block/sda")) || (paramString.length() - "/dev/block/sda".length() != 1)) && ((!paramString.startsWith("/dev/sda")) || (paramString.length() - "/dev/sda".length() != 1)) && (!paramString.startsWith("/dev/block/vold/8:"))) {
      return false;
    }
    return true;
  }
  
  public static boolean bN(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.equalsIgnoreCase(e.f())) && (!paramString.equalsIgnoreCase("usbdisk")) && (!paramString.equalsIgnoreCase("usbotg")) && (!paramString.equalsIgnoreCase("usbdrive"))) {
      return false;
    }
    return true;
  }
  
  public static String bO(String paramString)
  {
    return paramString;
  }
  
  public static String bP(String paramString)
  {
    int m = paramString.indexOf("://");
    if (m > 0) {
      return paramString.substring(0, m);
    }
    return null;
  }
  
  public static String bQ(String paramString)
  {
    paramString = com.estrongs.fs.a.a.c(paramString);
    Object localObject = new ArrayList();
    int m = 2;
    if (m < paramString.size())
    {
      if (m == 2) {
        ((List)localObject).addAll(com.estrongs.fs.a.a.c(((String)paramString.get(m)).replaceAll("#", "/")));
      }
      for (;;)
      {
        m += 1;
        break;
        ((List)localObject).add(paramString.get(m));
      }
    }
    localObject = com.estrongs.fs.a.a.a((List)localObject, ((List)localObject).size() - 1);
    paramString = (String)localObject;
    if (((String)localObject).charAt(((String)localObject).length() - 1) != '/') {
      paramString = (String)localObject + "/";
    }
    return paramString;
  }
  
  public static String bR(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      int m = paramString.lastIndexOf('.');
      if (m > -1) {
        return paramString.substring(m);
      }
    }
    return null;
  }
  
  public static String bS(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() > 0)
      {
        int m = paramString.lastIndexOf('.');
        str = paramString;
        if (m > -1)
        {
          str = paramString;
          if (m < paramString.length()) {
            str = paramString.substring(0, m);
          }
        }
      }
    }
    return str;
  }
  
  public static String bT(String paramString)
  {
    paramString = Uri.parse(Uri.decode(paramString));
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString.getScheme() != null) {
      localStringBuilder.append(paramString.getScheme()).append("://");
    }
    for (;;)
    {
      if (paramString.getAuthority() != null) {
        localStringBuilder.append(Uri.encode(paramString.getAuthority(), ":@"));
      }
      if (paramString.getPath() != null) {
        localStringBuilder.append(Uri.encode(paramString.getPath(), "/"));
      }
      if (paramString.getQuery() != null) {
        localStringBuilder.append("?").append(Uri.encode(paramString.getQuery(), "=&:/"));
      }
      if (paramString.getFragment() != null) {
        localStringBuilder.append("#").append(Uri.encode(paramString.getFragment()));
      }
      return localStringBuilder.toString();
      localStringBuilder.append("/");
    }
  }
  
  public static String bU(String paramString)
  {
    return e(paramString, true);
  }
  
  public static String bV(String paramString)
  {
    if (!bl(paramString)) {
      return paramString;
    }
    if (paramString.startsWith("/sdcard/")) {
      return b.b() + paramString.substring("/sdcard".length());
    }
    if (paramString.startsWith("/storage/emulated/legacy/")) {
      return b.b() + paramString.substring("/storage/emulated/legacy".length());
    }
    if ((paramString.equals("/sdcard")) || (paramString.equals("/storage/emulated/legacy"))) {
      return b.b();
    }
    for (;;)
    {
      int m;
      String str;
      synchronized (d)
      {
        if (j.size() != 0) {
          break label234;
        }
        bU(paramString);
        break label234;
        if (m >= j.size()) {
          break label227;
        }
        str = (String)j.get(m);
        if (str.endsWith("/"))
        {
          if (!paramString.startsWith(str)) {
            break label239;
          }
          return paramString;
        }
      }
      if ((paramString.startsWith(str + "/")) || (paramString.equalsIgnoreCase(str)))
      {
        return paramString;
        label227:
        return com.estrongs.android.pop.utils.ad.a(paramString);
        label234:
        m = 0;
      }
      else
      {
        label239:
        m += 1;
      }
    }
  }
  
  public static String bW(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (paramString.endsWith("/"));
    return paramString + "/";
  }
  
  public static String bX(String paramString)
  {
    String str = C(paramString);
    if (str == null) {}
    do
    {
      do
      {
        return paramString;
        str = bk.c(str);
      } while (str == null);
      str = g(paramString, str);
    } while (str == null);
    return str;
  }
  
  public static String bY(String paramString)
  {
    String str = C(paramString);
    if (str == null) {}
    do
    {
      do
      {
        return paramString;
        str = bk.d(str);
      } while (str == null);
      str = g(paramString, bz(str));
    } while (str == null);
    return str;
  }
  
  public static boolean bZ(String paramString)
  {
    return (aG(paramString)) && ("sugarsync".equals(ax(paramString))) && ("/".equals(aq(paramString)));
  }
  
  public static final boolean ba(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("cmpn://");
  }
  
  public static final String bb(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return paramString.substring("cmpn://".length());
  }
  
  public static final String bc(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return paramString.substring("archive://".length());
  }
  
  public static final boolean bd(String paramString)
  {
    return (ab(paramString)) && (paramString.indexOf('*') == -1);
  }
  
  public static final String be(String paramString)
  {
    int m = paramString.indexOf('*');
    String str = paramString;
    if (m > 0) {
      str = paramString.substring(0, m);
    }
    return str;
  }
  
  public static final String bf(String paramString)
  {
    int m = paramString.indexOf('*');
    if (m != -1) {
      return paramString.substring(m + 1);
    }
    return null;
  }
  
  public static final boolean bg(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("bt://");
  }
  
  public static final boolean bh(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("search://");
  }
  
  public static boolean bi(String paramString)
  {
    if (!bh(paramString)) {}
    while (com.estrongs.fs.a.a.c(paramString).size() != 3) {
      return false;
    }
    return true;
  }
  
  public static String bj(String paramString)
  {
    if (!bh(paramString)) {}
    do
    {
      return null;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() < 3);
    return ((String)paramString.get(2)).replaceAll("#", "/");
  }
  
  public static final boolean bk(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("bt://");
  }
  
  public static final boolean bl(String paramString)
  {
    if (paramString == null) {}
    while (((!paramString.startsWith("/")) && (!paramString.startsWith("file://"))) || (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX"))) {
      return false;
    }
    return true;
  }
  
  public static final boolean bm(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.startsWith("smb://")) && (!paramString.startsWith("ftp://")) && (!paramString.startsWith("bt://")) && (!paramString.startsWith("ftps://")) && (!paramString.startsWith("ftpes://")) && (!paramString.startsWith("webdav://")) && (!paramString.startsWith("webdavs://")) && (!paramString.startsWith("net://")) && (!paramString.startsWith("pcs://")) && (!paramString.startsWith("sftp://")) && (!paramString.startsWith("SP://")) && (!paramString.startsWith("usb://")) && (!paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) && (!paramString.startsWith("mynetwork://")) && (!paramString.startsWith("flashair://")) && (!paramString.startsWith("adb://"))) {
      return false;
    }
    return true;
  }
  
  public static final String bn(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      if (paramString.startsWith("smb://")) {
        return "smb://";
      }
      if (paramString.startsWith("ftp://")) {
        return "ftp://";
      }
      if (paramString.startsWith("bt://")) {
        return "bt://";
      }
      if (paramString.startsWith("ftps://")) {
        return "ftps://";
      }
      if (paramString.startsWith("net://")) {
        return "net://";
      }
      if (paramString.startsWith("sftp://")) {
        return "sftp://";
      }
      if (paramString.startsWith("SP://")) {
        return "SP://";
      }
      if (paramString.startsWith("webdav://")) {
        return "webdav://";
      }
      str = paramString;
    } while (!paramString.startsWith("webdavs://"));
    return "webdavs://";
  }
  
  public static boolean bo(String paramString)
  {
    if (paramString == null) {}
    while ((!bp(paramString)) && (!br(paramString)) && (!bi(paramString)) && (!bt(paramString)) && (!"app://".equals(paramString)) && (!"music://".equals(paramString)) && (!"pic://".equals(paramString)) && (!"video://".equals(paramString)) && (!"search://".equals(paramString)) && (!"book://".equals(paramString)) && (!"encrypt://".equals(paramString)) && (!"apk://".equals(paramString)) && (!"gallery://local/buckets/".equals(paramString)) && (!"SP://".equals(paramString)) && (!"pcs://".equals(paramString)) && (!ai(paramString)) && (!paramString.endsWith("://"))) {
      return false;
    }
    return true;
  }
  
  public static final boolean bp(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("/");
  }
  
  public static int bq(String paramString)
  {
    int n = 8;
    int m;
    if (paramString.startsWith("SP://")) {
      m = 5;
    }
    do
    {
      do
      {
        return m;
        if ((paramString.startsWith("sftp://")) || (paramString.startsWith("ftps://"))) {
          return 7;
        }
        m = n;
      } while (paramString.startsWith("ftpes://"));
      if (paramString.startsWith("webdav://")) {
        return 9;
      }
      if (paramString.startsWith("webdavs://")) {
        return 10;
      }
      if (paramString.startsWith("http://")) {
        return 7;
      }
      m = n;
    } while (paramString.startsWith("https://"));
    if (paramString.startsWith("usb://")) {
      return 6;
    }
    if (paramString.startsWith("adb://")) {
      return 6;
    }
    return 6;
  }
  
  public static final boolean br(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.equals("smb://")) && (!paramString.equals("ftp://")) && (!paramString.equals("bt://")) && (!paramString.equals("ftps://")) && (!paramString.equals("ftpes://")) && (!paramString.equals("webdav://")) && (!paramString.equals("webdavs://")) && (!paramString.equals("net://")) && (!paramString.equals("pcs://")) && (!paramString.equals("SP://")) && (!paramString.equals("sftp://")) && (!paramString.equals("usb://")) && (!paramString.equals("adb://")) && (!paramString.equals("mynetwork://")) && (!paramString.equals("scannedserver://"))) {
      return false;
    }
    return true;
  }
  
  public static final boolean bs(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("smb://");
  }
  
  public static final boolean bt(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("appfolder://");
  }
  
  public static final boolean bu(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("appfolder://");
  }
  
  public static final boolean bv(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("clean://");
  }
  
  public static final boolean bw(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("log://");
  }
  
  public static final boolean bx(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("finder://");
  }
  
  public static final boolean by(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("#home_page#");
  }
  
  public static final String bz(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    return paramString.replaceAll(":", "[\\$\\$\\$]").replaceAll("/", "[###]").replaceAll("@", "[^^^]");
  }
  
  public static av c(String arg0, boolean paramBoolean)
  {
    String str = ???;
    if (paramBoolean) {
      str = bV(???);
    }
    synchronized (c)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        av localav = (av)localIterator.next();
        if (str.startsWith(b)) {
          return localav;
        }
      }
      return null;
    }
  }
  
  public static final String c(String paramString)
  {
    String str = d(paramString);
    if (str != null) {
      return str + "@ " + a(paramString);
    }
    return a(paramString);
  }
  
  public static String c(String paramString1, String paramString2, String paramString3)
  {
    return a("yandex", paramString1, paramString2, paramString3);
  }
  
  public static List<av> c()
  {
    synchronized (c)
    {
      if (c.size() == 0) {
        n();
      }
      return c;
    }
  }
  
  public static final boolean c(int paramInt)
  {
    return (paramInt == 24) || (paramInt == 17);
  }
  
  public static final boolean c(String paramString1, String paramString2)
  {
    if ((!bm(paramString1)) || (!bm(paramString2))) {}
    do
    {
      return false;
      paramString1 = a(paramString1);
      paramString2 = a(paramString2);
    } while ((paramString1 == null) || (paramString2 == null));
    return paramString1.equals(paramString2);
  }
  
  public static String ca(String paramString)
  {
    paramString = bV(paramString);
    Object localObject = a();
    if (paramString.endsWith("/")) {
      paramString = paramString.substring(0, paramString.length() - 1);
    }
    for (;;)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (paramString.equals(str)) {
          return str;
        }
      }
      return null;
    }
  }
  
  public static String cb(String paramString)
  {
    String str = paramString;
    if (paramString.indexOf('*') >= 0) {
      str = paramString.substring(0, paramString.indexOf('*'));
    }
    return str;
  }
  
  public static String cc(String paramString)
  {
    if (bk.a(paramString)) {}
    do
    {
      return paramString;
      if (!paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
        break;
      }
      str = FexApplication.a().getText(2131231943).toString();
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files", str);
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/videos")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/videos", str + "/" + FexApplication.a().getText(2131231135));
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/music")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/music", str + "/" + FexApplication.a().getText(2131231136));
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/pictures")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/pictures", str + "/" + FexApplication.a().getText(2131231138));
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/documents")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/documents", str + "/" + FexApplication.a().getText(2131231130));
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/apps")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/apps", str + "/" + FexApplication.a().getText(2131231129));
      }
    } while (!paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/others"));
    return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/others", str + "/" + FexApplication.a().getText(2131231993));
    if (paramString.startsWith("flashair://")) {
      return paramString.replaceFirst("flashair://", "http://");
    }
    String str = cl(paramString);
    if (str != null) {
      return str;
    }
    return F(paramString);
  }
  
  public static String cd(String paramString)
  {
    Object localObject = paramString;
    if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX"))
    {
      localObject = paramString.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX");
      if (localObject.length > 1) {
        paramString = localObject[1];
      }
      if (u.a().g() == null) {
        break label175;
      }
      if ((paramString.startsWith("/files")) || (paramString.startsWith("/apps")) || (paramString.startsWith("/videos")) || (paramString.startsWith("/music")) || (paramString.startsWith("/pictures")) || (paramString.startsWith("/documents")) || (paramString.startsWith("/others")) || (paramString.startsWith("/files/apps/Downloads/"))) {
        localObject = u.a().g() + paramString;
      }
    }
    else
    {
      return (String)localObject;
    }
    return u.a().g() + "/files" + paramString;
    label175:
    return paramString.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX")[0];
  }
  
  public static String ce(String paramString)
  {
    if (paramString == null) {}
    String str1;
    String str2;
    do
    {
      return null;
      str1 = com.estrongs.fs.a.a.d(k());
      str2 = com.estrongs.fs.a.a.d(u.a().g());
    } while (str2 == null);
    return paramString.replaceFirst(str2, str1);
  }
  
  public static boolean cf(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.startsWith("/")) && (!paramString.contains("://"))) {
      return false;
    }
    return true;
  }
  
  public static boolean cg(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("recycle://");
  }
  
  public static boolean ch(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.contains("/.estrongs/recycle/");
  }
  
  public static boolean ci(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("pcsres://");
  }
  
  public static boolean cj(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "mynetwork://".equals(paramString);
  }
  
  public static String ck(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int m;
    do
    {
      return str;
      m = paramString.indexOf("/es_recycle_content/");
      str = paramString;
    } while (m == -1);
    return paramString.substring(0, m + "/es_recycle_content/".length());
  }
  
  public static String cl(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return null;
      int m = paramString.indexOf("/.estrongs/recycle/");
      if (m != -1)
      {
        int n = m + "/.estrongs/recycle/".length();
        m = paramString.indexOf("/", n);
        if (m != -1)
        {
          Object localObject = paramString.substring(n, m);
          try
          {
            Long.parseLong((String)localObject);
            n = paramString.indexOf("/es_recycle_content/", m);
            if (n != -1)
            {
              int i1 = "/es_recycle_content/".length();
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append(paramString.substring(m, n));
              ((StringBuilder)localObject).append(paramString.substring(i1 + n - 1));
              return ((StringBuilder)localObject).toString();
            }
          }
          catch (NumberFormatException paramString) {}
        }
      }
    }
    return null;
  }
  
  public static String cm(String paramString)
  {
    paramString = bU(bV(paramString));
    if (paramString == null) {
      return null;
    }
    return paramString + "/.estrongs/recycle/";
  }
  
  public static String cn(String paramString)
  {
    if (paramString.endsWith("/")) {
      return paramString + ".estrongs";
    }
    return paramString + "/.estrongs";
  }
  
  public static String co(String paramString)
  {
    if (paramString.endsWith("/")) {
      return paramString + "/.estrongs/recycle/";
    }
    return paramString + "/.estrongs/recycle/";
  }
  
  public static boolean cp(String paramString)
  {
    paramString = bV(paramString);
    String str = bU(paramString);
    if (str == null) {}
    do
    {
      do
      {
        return false;
        str = str + "/.estrongs/recycle";
      } while (!paramString.startsWith(str));
      if (paramString.length() == str.length()) {
        return true;
      }
    } while (paramString.charAt(str.length()) != '/');
    return true;
  }
  
  public static final String cq(String paramString)
  {
    String str = Uri.decode(paramString);
    if (str != null)
    {
      int m = str.indexOf('?');
      paramString = str;
      if (m > 0) {
        paramString = str.substring(0, m);
      }
      if (!paramString.endsWith("/"))
      {
        m = paramString.lastIndexOf('/') + 1;
        if (m > 0) {
          return paramString.substring(m);
        }
      }
    }
    return null;
  }
  
  private static av cr(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    synchronized (d)
    {
      if (b == null) {
        p();
      }
      if (b != null)
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext())
        {
          av localav = (av)localIterator.next();
          if ((b != null) && (b.equalsIgnoreCase(paramString))) {
            return localav;
          }
        }
      }
    }
    return null;
  }
  
  private static boolean cs(String paramString)
  {
    if ((paramString == null) || (paramString.startsWith("/storage/emulated/legacy"))) {}
    for (;;)
    {
      return false;
      try
      {
        File localFile = new File(paramString);
        paramString = j.k(paramString);
        long l1 = paramString[0];
        long l2 = paramString[2];
        boolean bool = localFile.canRead();
        if ((bool) && (l2 * l1 > 0L)) {
          return true;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
    }
    return false;
  }
  
  private static boolean ct(String paramString)
  {
    int m;
    ao localao;
    label105:
    try
    {
      Object localObject = (StorageManager)FexApplication.a().getSystemService("storage");
      if (localObject == null) {
        return false;
      }
      localObject = (Object[])new ao(localObject).a("getVolumeList");
      int i1 = localObject.length;
      m = 0;
      if (m >= i1) {
        break label133;
      }
      localao = new ao(localObject[m]);
      if ("mounted".equals(localao.a("getState"))) {
        break label135;
      }
      if (!"mounted_ro".equals(localao.a("getState"))) {
        break label148;
      }
    }
    catch (Exception paramString) {}
    boolean bool = paramString.equals(((File)localao.a("getPathFile")).getAbsolutePath());
    if (bool)
    {
      return true;
      label133:
      return false;
    }
    label135:
    label148:
    for (int n = 1;; n = 0)
    {
      if (n != 0) {
        break label105;
      }
      m += 1;
      break;
    }
  }
  
  private static boolean cu(String paramString)
  {
    paramString = cr(paramString);
    return (paramString != null) && (e != null) && ("vfat".equalsIgnoreCase(e));
  }
  
  public static final String d(String paramString)
  {
    if ((bk.a(paramString)) || (bo(paramString))) {
      return null;
    }
    int m = I(paramString);
    String str;
    if (m != 23)
    {
      str = paramString;
      if (m != 18) {}
    }
    else
    {
      str = paramString.replaceAll(">", "/");
    }
    m = str.lastIndexOf("/");
    if ((m != -1) && (m != str.length() - 1)) {
      paramString = new StringBuilder(str.substring(m + 1));
    }
    for (;;)
    {
      return paramString.toString();
      if (m == str.length() - 1)
      {
        if ((bm(str)) && (str.indexOf("/", bq(str)) == str.length() - 1)) {
          break;
        }
        paramString = str.substring(0, m);
        paramString = new StringBuilder(paramString.substring(paramString.lastIndexOf("/") + 1));
        continue;
      }
      paramString = new StringBuilder(str);
    }
  }
  
  public static ArrayList<String> d()
  {
    Object localObject = b();
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      av localav = (av)((Iterator)localObject).next();
      if ((a(localav)) && (!localArrayList.contains(b))) {
        localArrayList.add(b);
      }
    }
    return localArrayList;
  }
  
  public static final boolean d(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return false;
    }
    return paramString2.equals(ax(paramString1));
  }
  
  private static final boolean d(String paramString, boolean paramBoolean)
  {
    boolean bool = true;
    if (paramString == null) {}
    String str;
    do
    {
      do
      {
        return false;
      } while ((paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) || (paramString.endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX")));
      str = bF(paramString);
    } while (str == null);
    if ((str.startsWith("/sdcard/")) || (str.startsWith("/mnt/sdcard/")) || (str.equals("/mnt/sdcard")) || (str.equals("/sdcard")) || (str.startsWith("/storage/sdcard0/")) || (str.startsWith("/storage/sdcard1/")) || (str.startsWith("/storage/emulated/legacy/")) || (str.startsWith("/storage/emulated/0/")) || (str.equals("/storage/sdcard0")) || (str.equals("/storage/sdcard1/")) || (str.equals("/storage/emulated/legacy")) || (str.equals("/storage/emulated/0"))) {
      return true;
    }
    if (e(paramString, paramBoolean) != null) {}
    for (paramBoolean = bool;; paramBoolean = false) {
      return paramBoolean;
    }
  }
  
  public static final String e(String paramString)
  {
    if ((paramString == null) || (br(paramString))) {
      return null;
    }
    if (paramString.charAt(paramString.length() - 1) == '/') {}
    int m;
    for (paramString = new StringBuilder(paramString.substring(0, paramString.length() - 1));; paramString = new StringBuilder(paramString))
    {
      m = paramString.lastIndexOf("/");
      if (m != -1) {
        paramString.delete(m, paramString.length());
      }
      if (!paramString.toString().startsWith("file:///")) {
        break;
      }
      return paramString.substring(7);
    }
    if (paramString.toString().startsWith("content://"))
    {
      m = paramString.indexOf("/", 10);
      if (m != -1) {
        return paramString.substring(m);
      }
    }
    return paramString.toString();
  }
  
  private static String e(String paramString, boolean paramBoolean)
  {
    for (;;)
    {
      synchronized (d)
      {
        if (j.size() == 0)
        {
          j.addAll(a());
          Collections.sort(j, e);
        }
        if ((j == null) || (j.size() <= 0)) {
          break label170;
        }
        String str = paramString;
        if (!paramBoolean) {
          break label175;
        }
        str = bV(paramString);
        break label175;
        if (m >= j.size()) {
          break label170;
        }
        paramString = (String)j.get(m);
        if (paramString.endsWith("/"))
        {
          if (str.startsWith(paramString)) {
            return paramString;
          }
        }
        else if ((str.startsWith(paramString + "/")) || (str.equalsIgnoreCase(paramString))) {
          return paramString;
        }
      }
      m += 1;
      continue;
      label170:
      return null;
      label175:
      int m = 0;
    }
  }
  
  public static void e()
  {
    synchronized (d)
    {
      b = null;
      return;
    }
  }
  
  public static boolean e(String paramString1, String paramString2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString1 != null)
    {
      if (paramString2 != null) {
        break label16;
      }
      bool1 = bool2;
    }
    label16:
    String str;
    do
    {
      do
      {
        return bool1;
        str = paramString1;
        if (paramString1.endsWith("/"))
        {
          str = paramString1;
          if (!paramString1.equals("/")) {
            str = paramString1.substring(0, paramString1.length() - 1);
          }
        }
        paramString1 = paramString2;
        if (paramString2.endsWith("/"))
        {
          paramString1 = paramString2;
          if (!paramString2.equals("/")) {
            paramString1 = paramString2.substring(0, paramString2.length() - 1);
          }
        }
        paramString2 = str;
        if (str.startsWith("file://")) {
          paramString2 = str.replaceAll("file://", "");
        }
        str = paramString1;
        if (paramString1.startsWith("file://")) {
          str = paramString1.replaceAll("file://", "");
        }
        paramString1 = paramString2;
        if (bl(paramString2)) {
          paramString1 = bV(paramString2);
        }
        paramString2 = str;
        if (bl(str)) {
          paramString2 = bV(str);
        }
        str = paramString1;
        if (aJ(paramString1)) {
          str = cd(paramString1);
        }
        paramString1 = paramString2;
        if (aJ(paramString2)) {
          paramString1 = cd(paramString2);
        }
        bool2 = str.equalsIgnoreCase(paramString1);
        bool1 = bool2;
      } while (bool2 != true);
      bool1 = bool2;
    } while (cu(bU(str)));
    return str.equals(paramString1);
  }
  
  public static String f()
  {
    String str2 = b.b();
    String str1 = str2;
    if (!str2.endsWith("/")) {
      str1 = str2 + "/";
    }
    return str1;
  }
  
  public static final String f(String paramString)
  {
    if ((paramString == null) || (!bg(paramString))) {
      return null;
    }
    paramString = new StringBuilder(paramString);
    int m = paramString.indexOf("/", 5);
    if (m != -1) {
      return paramString.substring(0, m + 1);
    }
    return paramString.toString();
  }
  
  public static String f(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramString1);
    if (paramString1.endsWith("/")) {}
    for (;;)
    {
      return paramString2;
      paramString2 = "/" + paramString2;
    }
  }
  
  public static String g()
  {
    return b.b();
  }
  
  public static final String g(String paramString)
  {
    if ((paramString == null) || (!bg(paramString))) {
      paramString = null;
    }
    int m;
    String str;
    do
    {
      do
      {
        return paramString;
        paramString = new StringBuilder(paramString);
        m = paramString.indexOf("/", 5);
        if (m <= 5) {
          break;
        }
        str = paramString.substring(5, m);
        m = str.indexOf("\n");
        paramString = str;
      } while (m == -1);
      paramString = str;
    } while (m >= str.length() - 1);
    return str.substring(m + 1);
    return paramString.toString();
  }
  
  public static String g(String paramString1, String paramString2)
  {
    Object localObject1 = null;
    if (paramString1 == null) {
      return null;
    }
    int m = bq(paramString1);
    String str2 = paramString1.substring(0, m);
    Object localObject2 = paramString1.substring(m);
    m = ((String)localObject2).indexOf('/');
    if (m < 0) {}
    for (;;)
    {
      m = ((String)localObject2).lastIndexOf("@");
      if (m >= 0) {
        break;
      }
      l.e(a, "failed to parse host");
      return paramString1;
      localObject1 = ((String)localObject2).substring(0, m);
      str1 = ((String)localObject2).substring(m);
      localObject2 = localObject1;
      localObject1 = str1;
    }
    String str1 = ((String)localObject2).substring(m);
    m = ((String)localObject2).indexOf(':');
    if (m < 0)
    {
      l.e(a, "failed to parse password");
      return paramString1;
    }
    paramString1 = ((String)localObject2).substring(0, m);
    if (localObject1 != null) {
      return str2 + paramString1 + ":" + paramString2 + str1 + (String)localObject1;
    }
    return str2 + paramString1 + ":" + paramString2 + str1;
  }
  
  public static final String h(String paramString)
  {
    if ((paramString == null) || (!bg(paramString))) {
      return null;
    }
    paramString = new StringBuilder(paramString);
    int m = paramString.indexOf("/", 5);
    if (m != -1) {
      return paramString.substring(m);
    }
    return paramString.toString();
  }
  
  public static void h()
  {
    synchronized (d)
    {
      j.clear();
      return;
    }
  }
  
  public static boolean h(String paramString1, String paramString2)
  {
    if (paramString1 == paramString2) {}
    int n;
    do
    {
      int m;
      do
      {
        return true;
        if ((paramString1 == null) || (paramString2 == null)) {
          return false;
        }
        m = paramString1.length();
        n = paramString2.length();
        if (Math.abs(m - n) > 1) {
          return false;
        }
        if (m - n == 0) {
          return paramString1.equals(paramString2);
        }
        if (m - n != 1) {
          break;
        }
      } while ((paramString1.charAt(m - 1) == '/') && (paramString1.substring(0, m - 1).equals(paramString2)));
      return false;
    } while ((paramString2.charAt(n - 1) == '/') && (paramString2.substring(0, n - 1).equals(paramString1)));
    return false;
  }
  
  public static String i()
  {
    String str = f();
    if (str == null) {
      return null;
    }
    return str + ".estrongs/theme/";
  }
  
  public static final String i(String paramString)
  {
    if ((paramString == null) || ((!L(paramString)) && (!K(paramString)) && (!o(paramString)) && (!r(paramString)))) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int m = localStringBuilder.indexOf("/", bq(paramString));
    if (m != -1) {
      return localStringBuilder.substring(0, m + 1);
    }
    return localStringBuilder.toString();
  }
  
  public static boolean i(String paramString1, String paramString2)
  {
    if (paramString2.equals(paramString1)) {}
    while ((paramString2.startsWith(paramString1)) && (paramString2.charAt(paramString1.length()) == '/')) {
      return true;
    }
    return false;
  }
  
  public static String j()
  {
    File localFile2;
    try
    {
      File localFile1 = FexApplication.a().getFilesDir();
      localFile2 = localFile1;
      if (localFile1 == null)
      {
        localFile1 = new File("/data/data/" + FexApplication.a().getPackageName() + "/files");
        localFile2 = localFile1;
        if (!localFile1.exists())
        {
          localFile2 = localFile1;
          if (!localFile1.mkdirs()) {
            return null;
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        Object localObject = null;
      }
    }
    return localFile2.getAbsolutePath();
  }
  
  public static final String j(String paramString)
  {
    if ((paramString == null) || ((!L(paramString)) && (!K(paramString)) && (!o(paramString)) && (!r(paramString)))) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int m = localStringBuilder.indexOf("/", bq(paramString));
    if (m != -1) {
      return localStringBuilder.substring(m);
    }
    return localStringBuilder.toString();
  }
  
  public static final String j(String paramString1, String paramString2)
  {
    String str2 = paramString1;
    if (bg.b(paramString1) == -1)
    {
      str2 = paramString1;
      if (paramString2 != null)
      {
        str2 = MimeTypeMap.getSingleton().getExtensionFromMimeType(paramString2);
        String str1 = str2;
        if (bk.a(str2))
        {
          str1 = str2;
          if (paramString2.startsWith("image")) {
            str1 = ".jpg";
          }
          if (paramString2.startsWith("video")) {
            str1 = ".mp4";
          }
        }
        str2 = paramString1;
        if (bk.b(str1))
        {
          paramString2 = str1;
          if (!str1.startsWith(".")) {
            paramString2 = "." + str1;
          }
          str2 = paramString1;
          if (!paramString1.endsWith(paramString2)) {
            str2 = paramString1 + paramString2;
          }
        }
      }
    }
    return str2;
  }
  
  public static String k()
  {
    String str = com.estrongs.android.pop.ad.a(FexApplication.a()).j(com.estrongs.android.pop.view.a.a);
    return bW(str) + "PCS_DRIVE_Js1a7M5e_9yAcTvFX";
  }
  
  public static final String k(String paramString)
  {
    if (!J(paramString)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int m = localStringBuilder.indexOf("/", bq(paramString));
    if (m != -1) {
      return localStringBuilder.substring(0, m + 1);
    }
    return localStringBuilder.toString();
  }
  
  public static String[] k(String paramString1, String paramString2)
  {
    Object localObject2 = null;
    String[] arrayOfString2 = null;
    Object localObject1 = localObject2;
    try
    {
      av localav = bK(paramString1);
      String[] arrayOfString1 = arrayOfString2;
      if (localav != null)
      {
        arrayOfString1 = arrayOfString2;
        localObject1 = localObject2;
        if (!paramString2.equals(d))
        {
          localObject1 = localObject2;
          arrayOfString2 = m.b(b, paramString2);
          arrayOfString1 = arrayOfString2;
          if (arrayOfString2 != null)
          {
            localObject1 = arrayOfString2;
            d = paramString2;
            arrayOfString1 = arrayOfString2;
          }
        }
      }
      return arrayOfString1;
    }
    catch (Exception paramString2)
    {
      l.c(a, "Faile to mount path: " + paramString1, paramString2);
    }
    return (String[])localObject1;
  }
  
  public static i l()
  {
    return k;
  }
  
  public static final String l(String paramString)
  {
    if (!J(paramString)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int m = localStringBuilder.indexOf("/", bq(paramString));
    if (m != -1) {
      return localStringBuilder.substring(m);
    }
    return localStringBuilder.toString();
  }
  
  private static boolean l(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && ((paramString1.contains("/dev/fuse")) || (paramString1.contains("/dev/lefuse"))) && (paramString2 != null) && (!paramString2.startsWith("/storage/emulated/legacy")))
    {
      if (bL(paramString2)) {}
      while ((paramString2.startsWith("/storage/")) || ((ac.a() >= 19) && (!paramString2.startsWith("/mnt/")) && (!paramString2.startsWith("/data/")))) {
        return true;
      }
    }
    return false;
  }
  
  public static final String m(String paramString)
  {
    if ((paramString == null) || ((!L(paramString)) && (!K(paramString)))) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int m = localStringBuilder.indexOf("/", bq(paramString));
    int n = localStringBuilder.lastIndexOf("/");
    if (m != -1)
    {
      if (n > m) {
        return localStringBuilder.substring(m, n);
      }
      return localStringBuilder.substring(m);
    }
    return localStringBuilder.toString();
  }
  
  /* Error */
  private static void n()
  {
    // Byte code:
    //   0: new 540	java/util/LinkedList
    //   3: dup
    //   4: invokespecial 541	java/util/LinkedList:<init>	()V
    //   7: astore_3
    //   8: new 376	java/io/File
    //   11: dup
    //   12: ldc_w 1260
    //   15: invokespecial 1105	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: astore_0
    //   19: new 1262	java/io/BufferedReader
    //   22: dup
    //   23: new 1264	java/io/InputStreamReader
    //   26: dup
    //   27: new 1266	java/io/FileInputStream
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 1269	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   35: ldc_w 1271
    //   38: invokespecial 1274	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   41: invokespecial 1277	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   44: astore_1
    //   45: aload_1
    //   46: astore_0
    //   47: aload_1
    //   48: invokevirtual 1280	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   51: astore_2
    //   52: aload_2
    //   53: ifnull +227 -> 280
    //   56: aload_1
    //   57: astore_0
    //   58: aload_2
    //   59: ldc_w 1282
    //   62: invokevirtual 796	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   65: astore 4
    //   67: aload 4
    //   69: ifnull -24 -> 45
    //   72: aload_1
    //   73: astore_0
    //   74: aload 4
    //   76: arraylength
    //   77: iconst_4
    //   78: if_icmplt -33 -> 45
    //   81: aload_1
    //   82: astore_0
    //   83: new 556	com/estrongs/android/util/av
    //   86: dup
    //   87: invokespecial 1283	com/estrongs/android/util/av:<init>	()V
    //   90: astore 5
    //   92: aload_1
    //   93: astore_0
    //   94: aload 5
    //   96: aload_2
    //   97: putfield 1284	com/estrongs/android/util/av:a	Ljava/lang/String;
    //   100: aload_1
    //   101: astore_0
    //   102: aload 5
    //   104: aload 4
    //   106: iconst_0
    //   107: aaload
    //   108: putfield 586	com/estrongs/android/util/av:c	Ljava/lang/String;
    //   111: aload_1
    //   112: astore_0
    //   113: aload 5
    //   115: aload 4
    //   117: iconst_1
    //   118: aaload
    //   119: putfield 558	com/estrongs/android/util/av:b	Ljava/lang/String;
    //   122: aload_1
    //   123: astore_0
    //   124: aload 5
    //   126: aload 4
    //   128: iconst_2
    //   129: aaload
    //   130: putfield 1146	com/estrongs/android/util/av:e	Ljava/lang/String;
    //   133: aload_1
    //   134: astore_0
    //   135: aload 4
    //   137: iconst_3
    //   138: aaload
    //   139: ldc_w 1286
    //   142: invokevirtual 194	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   145: ifeq +111 -> 256
    //   148: aload_1
    //   149: astore_0
    //   150: aload 5
    //   152: ldc_w 1288
    //   155: putfield 686	com/estrongs/android/util/av:d	Ljava/lang/String;
    //   158: aload_1
    //   159: astore_0
    //   160: aload_3
    //   161: aload 5
    //   163: invokevirtual 561	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   166: pop
    //   167: goto -122 -> 45
    //   170: astore_2
    //   171: aload_1
    //   172: astore_0
    //   173: ldc_w 1290
    //   176: ldc_w 1292
    //   179: aload_2
    //   180: invokestatic 1242	com/estrongs/android/util/l:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   183: aload_1
    //   184: invokestatic 1294	com/estrongs/fs/util/j:a	(Ljava/io/Reader;)V
    //   187: aload_3
    //   188: invokevirtual 562	java/util/LinkedList:size	()I
    //   191: iconst_1
    //   192: if_icmple +32 -> 224
    //   195: aload_3
    //   196: getstatic 61	com/estrongs/android/util/ap:f	Ljava/util/Comparator;
    //   199: invokestatic 652	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   202: getstatic 48	com/estrongs/android/util/ap:c	Ljava/util/ArrayList;
    //   205: astore_0
    //   206: aload_0
    //   207: monitorenter
    //   208: getstatic 48	com/estrongs/android/util/ap:c	Ljava/util/ArrayList;
    //   211: invokevirtual 1295	java/util/ArrayList:clear	()V
    //   214: getstatic 48	com/estrongs/android/util/ap:c	Ljava/util/ArrayList;
    //   217: aload_3
    //   218: invokevirtual 1296	java/util/ArrayList:addAll	(Ljava/util/Collection;)Z
    //   221: pop
    //   222: aload_0
    //   223: monitorexit
    //   224: getstatic 41	com/estrongs/android/util/ap:a	Ljava/lang/String;
    //   227: new 224	java/lang/StringBuilder
    //   230: dup
    //   231: invokespecial 225	java/lang/StringBuilder:<init>	()V
    //   234: ldc_w 1298
    //   237: invokevirtual 231	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: getstatic 48	com/estrongs/android/util/ap:c	Ljava/util/ArrayList;
    //   243: invokevirtual 1016	java/util/ArrayList:size	()I
    //   246: invokevirtual 454	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   249: invokevirtual 234	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: invokestatic 1300	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   255: return
    //   256: aload_1
    //   257: astore_0
    //   258: aload 5
    //   260: ldc_w 1302
    //   263: putfield 686	com/estrongs/android/util/av:d	Ljava/lang/String;
    //   266: goto -108 -> 158
    //   269: astore_2
    //   270: aload_0
    //   271: astore_1
    //   272: aload_2
    //   273: astore_0
    //   274: aload_1
    //   275: invokestatic 1294	com/estrongs/fs/util/j:a	(Ljava/io/Reader;)V
    //   278: aload_0
    //   279: athrow
    //   280: aload_1
    //   281: invokestatic 1294	com/estrongs/fs/util/j:a	(Ljava/io/Reader;)V
    //   284: goto -97 -> 187
    //   287: astore_1
    //   288: aload_0
    //   289: monitorexit
    //   290: aload_1
    //   291: athrow
    //   292: astore_0
    //   293: aconst_null
    //   294: astore_1
    //   295: goto -21 -> 274
    //   298: astore_2
    //   299: aconst_null
    //   300: astore_1
    //   301: goto -130 -> 171
    // Local variable table:
    //   start	length	slot	name	signature
    //   292	1	0	localObject2	Object
    //   44	237	1	localObject3	Object
    //   287	4	1	localObject4	Object
    //   294	7	1	localObject5	Object
    //   51	46	2	str	String
    //   170	10	2	localException1	Exception
    //   269	4	2	localObject6	Object
    //   298	1	2	localException2	Exception
    //   7	211	3	localLinkedList	LinkedList
    //   65	71	4	arrayOfString	String[]
    //   90	169	5	localav	av
    // Exception table:
    //   from	to	target	type
    //   47	52	170	java/lang/Exception
    //   58	67	170	java/lang/Exception
    //   74	81	170	java/lang/Exception
    //   83	92	170	java/lang/Exception
    //   94	100	170	java/lang/Exception
    //   102	111	170	java/lang/Exception
    //   113	122	170	java/lang/Exception
    //   124	133	170	java/lang/Exception
    //   135	148	170	java/lang/Exception
    //   150	158	170	java/lang/Exception
    //   160	167	170	java/lang/Exception
    //   258	266	170	java/lang/Exception
    //   47	52	269	finally
    //   58	67	269	finally
    //   74	81	269	finally
    //   83	92	269	finally
    //   94	100	269	finally
    //   102	111	269	finally
    //   113	122	269	finally
    //   124	133	269	finally
    //   135	148	269	finally
    //   150	158	269	finally
    //   160	167	269	finally
    //   173	183	269	finally
    //   258	266	269	finally
    //   208	224	287	finally
    //   288	290	287	finally
    //   19	45	292	finally
    //   19	45	298	java/lang/Exception
  }
  
  public static final boolean n(String paramString)
  {
    if ((paramString == null) || ((!L(paramString)) && (!K(paramString)) && (!o(paramString)) && (!r(paramString)))) {}
    while ((!paramString.startsWith("ftps://")) && (!paramString.startsWith("ftpes://"))) {
      return false;
    }
    return true;
  }
  
  private static HashSet<String> o()
  {
    localHashSet = new HashSet();
    File localFile = new File("/system/etc/vold.fstab");
    Object localObject = localFile;
    if (!localFile.exists())
    {
      localFile = new File("system/etc/vold.conf");
      localObject = localFile;
      if (localFile.exists()) {}
    }
    for (;;)
    {
      return localHashSet;
      try
      {
        Scanner localScanner = new Scanner((File)localObject);
        while (localScanner.hasNext())
        {
          localObject = localScanner.nextLine();
          if (((String)localObject).startsWith("dev_mount"))
          {
            localObject = ((String)localObject).split(" ");
            if (localObject.length >= 3)
            {
              localFile = localObject[2];
              localObject = localFile;
              if (localFile.contains(":")) {
                localObject = localFile.substring(0, localFile.indexOf(":"));
              }
              localHashSet.add(localObject);
            }
          }
        }
        return localHashSet;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public static final boolean o(String paramString)
  {
    return (p(paramString)) || (q(paramString));
  }
  
  private static void p()
  {
    label1203:
    label1210:
    label1287:
    label1290:
    label1296:
    label1299:
    label1306:
    label1309:
    label1312:
    label1318:
    label1330:
    label1339:
    for (;;)
    {
      LinkedList localLinkedList;
      int m;
      int i1;
      int n;
      int i3;
      int i2;
      synchronized (d)
      {
        n();
        localLinkedList = new LinkedList();
        b = new LinkedList();
        HashSet localHashSet = o();
        String str1 = b.b();
        HashMap localHashMap = new HashMap();
        Object localObject1 = null;
        try
        {
          if (z.o == null) {
            break label1312;
          }
          localObject7 = z.o.iterator();
          if (((Iterator)localObject7).hasNext()) {
            localObject4 = (String)((Iterator)localObject7).next();
          }
        }
        catch (Exception localException1)
        {
          Object localObject4;
          l.c("PathUtils", "Failed to get the external storage path:", localException1);
        }
        try
        {
          localObject9 = new File((String)localObject4).getCanonicalPath();
          if (localObject9 == null) {
            break label1309;
          }
          if (localObject1 != null) {
            break label1306;
          }
          localObject4 = new LinkedList();
          localObject1 = localObject4;
          try
          {
            ((LinkedList)localObject1).add(localObject9);
          }
          catch (Exception localException2) {}
        }
        catch (Exception localException3)
        {
          Object localObject2;
          Object localObject5;
          Object localObject10;
          String[] arrayOfString;
          String str2;
          boolean bool;
          continue;
          continue;
          av localav = null;
          continue;
        }
        localException2.printStackTrace();
        continue;
        continue;
        continue;
        continue;
        if (!localLinkedList.contains(str1))
        {
          localLinkedList.add(str1);
          localObject2 = new av();
          c = "";
          b = str1;
          e = "vfat";
          d = "rw";
          b.add(localObject2);
        }
        h = false;
        i = false;
        if ((localLinkedList.contains("/storage/sdcard1")) && (!localLinkedList.contains("/storage/sdcard0")) && (!localLinkedList.contains("/storage/emulated/0")) && (bk.k()))
        {
          if (!q()) {
            break label1210;
          }
          localLinkedList.add("/storage/sdcard0");
          localObject2 = new av();
          c = "";
          b = "/storage/sdcard0";
          e = "vfat";
          d = "rw";
          b.add(localObject2);
          h = true;
        }
        if ((z.aa) && (!localLinkedList.contains("/data/internal_memory")))
        {
          localObject2 = new File("/data/internal_memory");
          if ((((File)localObject2).exists()) && (((File)localObject2).isDirectory()))
          {
            localLinkedList.add("/data/internal_memory");
            localObject2 = new av();
            c = "";
            b = "/data/internal_memory";
            d = "rw";
            b.add(localObject2);
          }
        }
        j.clear();
        return;
        localObject5 = localObject2;
        localObject2 = c("/proc", false);
        if ((localObject2 == null) || (!a.contains(" /proc "))) {
          break label1299;
        }
        localObject2 = a.split(" ");
        if (localObject2 == null) {
          break label1299;
        }
        m = 0;
        i1 = -1;
        n = -1;
        if (m >= localObject2.length) {
          break label1330;
        }
        if ("/proc".equalsIgnoreCase(localObject2[m]))
        {
          i3 = m;
          i2 = i1;
          break label1318;
        }
        i2 = i1;
        i3 = n;
        if (n < 0) {
          break label1318;
        }
        i2 = i1;
        i3 = n;
        if (!"proc".equalsIgnoreCase(localObject2[m])) {
          break label1318;
        }
        i2 = m;
        i3 = n;
        break label1318;
        Object localObject9 = c.iterator();
        if (!((Iterator)localObject9).hasNext()) {
          continue;
        }
        localObject10 = nexta;
        i2 = 0;
        m = 0;
        if (localObject5 != null)
        {
          localObject2 = ((LinkedList)localObject5).iterator();
          i2 = m;
          if (((Iterator)localObject2).hasNext())
          {
            if (!((String)localObject10).contains((String)((Iterator)localObject2).next())) {
              break label1296;
            }
            m = 1;
            break label1339;
          }
        }
        if ((i2 == 0) && ((localObject10 == null) || ((!((String)localObject10).contains("/dev/block/vold/")) && (!((String)localObject10).startsWith("/dev/block/sd")))) && (!((String)localObject10).startsWith("/dev/sd")) && (!((String)localObject10).contains("/dev/fuse")) && (!((String)localObject10).contains("/dev/lefuse")) && ((!((String)localObject10).startsWith("/mnt/media_rw/")) || (((String)localObject10).contains("secure")) || (((String)localObject10).contains("asec")) || (((String)localObject10).equalsIgnoreCase(str1)))) {
          continue;
        }
        arrayOfString = ((String)localObject10).split(" ");
        if ((arrayOfString == null) || (i1 < 0) || (i1 >= arrayOfString.length) || (n >= arrayOfString.length)) {
          continue;
        }
        str2 = arrayOfString[i1];
        i3 = arrayOfString.length;
        m = 0;
        if (m >= i3) {
          break label1290;
        }
        Object localObject7 = arrayOfString[m];
        localObject2 = localObject7;
        if (!((String)localObject7).contains("/dev/block/vold/"))
        {
          localObject2 = localObject7;
          if (!bL(str2))
          {
            if (!l((String)localObject7, str2)) {
              break label1203;
            }
            localObject2 = localObject7;
          }
        }
        if (!((String)localObject10).startsWith("/mnt/media_rw/")) {
          break label1287;
        }
        localObject2 = arrayOfString[0];
        bool = cs(str2);
        if ((localObject2 != null) && (!"/dev/fuse".equals(localObject2)) && (!"/dev/lefuse".equals(localObject2)) && (localHashMap.get(localObject2) != null) && (localHashSet.contains(str2)) && (bool))
        {
          localObject7 = (String)localHashMap.get(localObject2);
          localObject10 = b.iterator();
          if (((Iterator)localObject10).hasNext())
          {
            if (!nextb.equals(localObject7)) {
              continue;
            }
            ((Iterator)localObject10).remove();
          }
          localLinkedList.remove(localObject7);
          localHashMap.remove(localObject2);
        }
        if ((localObject2 == null) || ((localHashMap.get(localObject2) != null) && (!l((String)localObject2, str2))) || (localLinkedList.contains(str2)) || (!bool) || ((i2 == 0) && ((str2.startsWith("/mnt/media_rw/")) || (str2.startsWith("/data/media/obb/")) || (str2.contains("/Android/data/")) || (str2.contains("/Android/obb"))))) {
          continue;
        }
        localLinkedList.add(str2);
        localObject7 = new av();
        c = ((String)localObject2);
        b = str2;
        d = "rw";
        if (n >= 0) {
          e = arrayOfString[n];
        }
        if ((!"/dev/fuse".equals(localObject2)) && (!"/dev/lefuse".equals(localObject2))) {
          localHashMap.put(localObject2, str2);
        }
        b.add(localObject7);
      }
      m += 1;
      continue;
      if (r())
      {
        localLinkedList.add("/storage/emulated/0");
        localav = new av();
        c = "";
        b = "/storage/emulated/0";
        e = "vfat";
        d = "rw";
        b.add(localav);
        i = true;
        continue;
        break label1339;
        n = -1;
        i1 = -1;
        continue;
        continue;
        continue;
        Object localObject6 = null;
        continue;
        m += 1;
        i1 = i2;
        n = i3;
        continue;
        m = n;
        n = i1;
        i1 = m;
      }
    }
  }
  
  public static final boolean p(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("webdav://");
  }
  
  private static boolean q()
  {
    return ct("/storage/sdcard0");
  }
  
  public static final boolean q(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("webdavs://");
  }
  
  private static boolean r()
  {
    return ct("/storage/emulated/0");
  }
  
  public static final boolean r(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.startsWith("ftps://")) && (!paramString.startsWith("ftpes://"))) {
      return false;
    }
    return true;
  }
  
  public static final boolean s(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "remote://".equals(paramString);
  }
  
  public static final boolean t(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("download://");
  }
  
  public static final boolean u(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("du://");
  }
  
  public static final boolean v(String paramString)
  {
    if (bk.b(paramString))
    {
      paramString = paramString.toLowerCase();
      if ((paramString.startsWith("http")) || (paramString.startsWith("https"))) {
        return true;
      }
    }
    return false;
  }
  
  public static final boolean w(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("flashair://");
  }
  
  public static final boolean x(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("flashair://flashair/");
  }
  
  public static final String y(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = paramString.substring(bq(paramString));
    int m = paramString.indexOf('/');
    if (m == -1)
    {
      m = paramString.lastIndexOf("@");
      if (m != -1) {
        break label63;
      }
    }
    for (;;)
    {
      m = paramString.lastIndexOf(':');
      if (m != -1) {
        break label74;
      }
      return null;
      paramString = paramString.substring(0, m);
      break;
      label63:
      paramString = paramString.substring(m + 1);
    }
    label74:
    return paramString.substring(m + 1);
  }
  
  public static String z(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = paramString.substring(bq(paramString));
    int m = paramString.indexOf('/');
    if (m == -1) {}
    for (;;)
    {
      m = paramString.lastIndexOf("@");
      if (m != -1) {
        break;
      }
      return null;
      paramString = paramString.substring(0, m);
    }
    paramString = paramString.substring(0, m);
    m = paramString.indexOf(';');
    if (m == -1) {
      return null;
    }
    return paramString.substring(0, m);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */