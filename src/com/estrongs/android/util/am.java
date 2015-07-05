package com.estrongs.android.util;

import android.content.Context;
import android.net.Uri;
import android.os.storage.StorageManager;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.estrongs.android.nativetool.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.local.l;
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

public class am
{
  public static final String a = am.class.getSimpleName();
  private static LinkedList<ar> b;
  private static ArrayList<ar> c = new ArrayList();
  private static Object d = new Object();
  private static final Comparator<String> e = new an();
  private static final Comparator<ar> f = new ao();
  private static HashMap<String, String> g = new HashMap();
  private static boolean h = false;
  private static boolean i = false;
  private static List<String> j = new ArrayList();
  private static i k = new aq();
  
  public static final String A(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return null;
      try
      {
        if ((!bb(paramString)) || (az(paramString))) {
          continue;
        }
        paramString = paramString.substring(bf(paramString));
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
          return bj(paramString.substring(m + 1));
          paramString = paramString.substring(0, m);
        }
        return null;
      }
      catch (Exception paramString) {}
    }
  }
  
  public static boolean B(String paramString)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        return false;
      } while (!bb(paramString));
      paramString = A(paramString);
    } while ((paramString == null) || (paramString.length() == 0));
    return true;
  }
  
  public static String C(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    for (;;)
    {
      return str;
      str = paramString;
      if (!bb(paramString)) {
        continue;
      }
      str = paramString;
      if (B(paramString)) {
        continue;
      }
      try
      {
        Object localObject = bc(paramString);
        str = paramString;
        if (localObject == null) {
          continue;
        }
        str = paramString;
        if (((String)localObject).startsWith("pcs://")) {
          continue;
        }
        str = paramString;
        if (az(paramString)) {
          continue;
        }
        localObject = d.a().a(bc(paramString));
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
          if (paramString.startsWith(E(((h)((List)localObject).get(m)).getAbsolutePath())))
          {
            str = b(paramString, A(((h)((List)localObject).get(m)).getAbsolutePath()));
            return str;
          }
          m += 1;
        }
        return paramString;
      }
      catch (FileSystemException localFileSystemException) {}
    }
  }
  
  public static final String D(String paramString)
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
                        } while (ba(paramString));
                        str1 = paramString;
                      } while (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/"));
                      str1 = paramString;
                    } while (paramString.startsWith("usb://"));
                    str1 = paramString;
                  } while (bQ(paramString));
                  str1 = paramString;
                } while (u(paramString));
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
      m = G(paramString);
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
    return paramString.substring(0, bf(paramString)) + str2 + str1;
    return F(paramString);
  }
  
  public static final String E(String paramString)
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
                  } while (ba(paramString));
                  str1 = paramString;
                } while (az(paramString));
                str1 = paramString;
              } while (paramString.equals("bt://"));
              str1 = paramString;
            } while (paramString.equals("book://"));
            str1 = paramString;
          } while (paramString.equals("apk://"));
          str1 = paramString;
        } while (paramString.equals("SP://"));
        m = G(paramString);
        str1 = paramString;
      } while (m == -1);
      str1 = paramString;
    } while (m == 30);
    String str2 = a(paramString, m);
    String str3 = y(paramString);
    String str1 = b(paramString);
    if ((aw(paramString)) || (aB(paramString))) {
      str1 = an(paramString);
    }
    if (aG(paramString)) {
      str1 = ao(paramString);
    }
    if (paramString.startsWith("SP://")) {
      return "picture://" + str3 + ":" + "@" + str1 + str2;
    }
    if ((paramString.startsWith("smb://")) && (br(paramString) != null)) {
      return paramString.substring(0, bf(paramString)) + br(paramString) + ";" + str3 + ":" + "@" + str1 + str2;
    }
    StringBuilder localStringBuilder = new StringBuilder().append(paramString.substring(0, bf(paramString)));
    if (str3 != null) {}
    for (paramString = str3 + ":" + "@";; paramString = "") {
      return paramString + str1 + str2;
    }
  }
  
  public static String F(String paramString)
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
  
  public static final int G(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return -1;
      if ((paramString.startsWith("pcs://")) || ((paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) && (!aW(paramString)))) {
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
      if (t(paramString)) {
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
    } while (!paramString.startsWith("adb://"));
    return 36;
  }
  
  public static final boolean H(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("smb://");
  }
  
  public static final boolean I(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("sftp://");
  }
  
  public static final boolean J(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("ftp://");
  }
  
  public static final boolean K(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("adb://");
  }
  
  public static final boolean L(String paramString)
  {
    if ((!K(paramString)) || (paramString.equals("adb://"))) {}
    while (!a(paramString, 36).equals("/")) {
      return false;
    }
    return true;
  }
  
  public static final boolean M(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("adb://"))) {}
    while (!a(paramString, 36).startsWith("/apps")) {
      return false;
    }
    return true;
  }
  
  public static final boolean N(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("adb://"))) {}
    while (!a(paramString, 36).equals("/appsuser")) {
      return false;
    }
    return true;
  }
  
  public static final boolean O(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("adb://"))) {}
    while (!a(paramString, 36).startsWith("/files")) {
      return false;
    }
    return true;
  }
  
  public static final boolean P(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("adb://"))) {}
    while (!a(paramString, 36).equals("/files")) {
      return false;
    }
    return true;
  }
  
  public static final boolean Q(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("ftp://");
  }
  
  public static final boolean R(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("sftp://");
  }
  
  public static final boolean S(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("music://");
  }
  
  public static final boolean T(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("pic://");
  }
  
  public static final boolean U(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("video://");
  }
  
  public static final boolean V(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("book://");
  }
  
  public static final boolean W(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("apk://");
  }
  
  public static final boolean X(String paramString)
  {
    return (S(paramString)) || (T(paramString)) || (aO(paramString)) || (U(paramString)) || (V(paramString)) || (W(paramString)) || (Y(paramString));
  }
  
  public static final boolean Y(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("app://");
  }
  
  public static final boolean Z(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://".equals(paramString);
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
        } while (!bb(paramString));
        if (!paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) {
          break;
        }
        str2 = r.a().g();
        str1 = paramString;
      } while (str2 == null);
      str2 = y(str2);
      str1 = paramString;
    } while (str2 == null);
    return str2 + "@pcs";
    if ((aw(paramString)) || (aB(paramString)))
    {
      str1 = an(paramString);
      return ai(paramString) + "@" + str1;
    }
    if (aG(paramString))
    {
      str1 = ao(paramString);
      return aj(paramString) + "@" + str1;
    }
    paramString = paramString.substring(bf(paramString));
    int m = paramString.indexOf('/');
    if (m == -1)
    {
      m = paramString.lastIndexOf("@");
      if (m != -1) {
        break label226;
      }
    }
    for (;;)
    {
      m = paramString.lastIndexOf(':');
      if (m != -1) {
        break label237;
      }
      return paramString;
      paramString = paramString.substring(0, m);
      break;
      label226:
      paramString = paramString.substring(m + 1);
    }
    label237:
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
      return ag(paramString);
      return ag(bM(paramString));
      return ah(paramString);
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
      localObject1 = ak.a();
    }
    localStringBuilder1.append((String)localObject1 + ":" + paramInt + "/");
    paramInt = G(paramString);
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
      String str2 = A(paramString);
      if (str2 != null)
      {
        localObject4 = g;
        if (str1 != null) {
          break label924;
        }
        label362:
        if (localObject2 != null) {
          break label954;
        }
      }
      for (;;)
      {
        label924:
        label954:
        try
        {
          g.put((String)localObject1 + "@" + (String)localObject3, bi(str2));
          paramString = a(paramString, paramInt);
          if (paramString == null) {
            break;
          }
          localStringBuilder2.append(paramString);
          if (!paramBoolean1) {
            break label1010;
          }
          localStringBuilder1.append(Uri.encode(localStringBuilder2.toString()));
          return localStringBuilder1.toString();
        }
        finally {}
        str1 = x(paramString);
        localObject1 = y(paramString);
        localObject3 = a(paramString);
        localStringBuilder2.append("smb");
        localObject2 = null;
        break label249;
        localObject2 = y(paramString);
        str1 = a(paramString);
        localObject1 = w(paramString);
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
          break label1024;
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
        localObject1 = y(paramString);
        localObject3 = an(paramString);
        localStringBuilder2.append("netdisk");
        str1 = null;
        localObject2 = null;
        break label249;
        paramString = bM(paramString);
        localObject1 = y(paramString);
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
        localObject1 = y(paramString);
        localObject3 = a(paramString);
        localStringBuilder2.append("adb");
        str1 = null;
        localObject2 = null;
        break label249;
        localObject1 = str1 + ';' + (String)localObject1;
        break label362;
        g.put((String)localObject1 + "@" + (String)localObject3 + ":" + (String)localObject2, bi(str2));
        continue;
        label1010:
        localStringBuilder1.append(localStringBuilder2.toString());
      }
      label1024:
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
    if (!bd.a(paramString2)) {
      localStringBuilder.insert(bf(paramString1), bi(paramString2) + ":" + bi(paramString3) + "@");
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return "net://" + bi(paramString2) + ":" + bi(paramString3) + "@" + paramString1 + paramString4;
  }
  
  public static final String a(boolean paramBoolean, String paramString)
  {
    String str;
    if ((paramString == null) || (!aV(paramString)))
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
          ar localar = (ar)localIterator.next();
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
      new ap("StorageInfoRefresher").start();
      return;
    }
    n();
  }
  
  public static final boolean a(int paramInt)
  {
    return (paramInt == 2) || (paramInt == 19) || (paramInt == 20) || (paramInt == 5) || (paramInt == 21) || (paramInt == 22);
  }
  
  public static boolean a(ar paramar)
  {
    if (paramar == null) {}
    while ((paramar == null) || ((!bv(c)) && (!bw(d(b))))) {
      return false;
    }
    return true;
  }
  
  public static boolean a(File paramFile)
  {
    try
    {
      if (bm(paramFile.getAbsolutePath())) {
        return false;
      }
      boolean bool = c.a(FileExplorerActivity.T(), paramFile.getAbsolutePath());
      return bool;
    }
    catch (Exception paramFile) {}
    return false;
  }
  
  public static boolean a(String paramString, TypedMap paramTypedMap)
  {
    String str = aY(paramString);
    return (aX(paramString)) && (bd.f()) && (!paramTypedMap.getBoolean("fileSystemSearch")) && ((bl(bE(str))) || ("externalstorage://".equals(str)));
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
    if ((!ba(paramString1)) || (!ba(paramString2))) {
      return false;
    }
    boolean bool3 = bl(paramString1);
    boolean bool4 = bl(paramString2);
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
        if (bp(paramString1).startsWith(str)) {
          localObject2 = str;
        }
      }
      if ((localObject1 != null) || (!bp(paramString2).startsWith(str))) {
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
    if (ax(paramString)) {
      return paramBoolean;
    }
    paramString = bE(paramString);
    Object localObject = b();
    if ((localObject != null) && (paramString != null))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        ar localar = (ar)((Iterator)localObject).next();
        if ((localar != null) && (b != null) && (paramString.startsWith(b)) && (c != null) && (((c.startsWith("/dev/block/sda")) && (c.length() - "/dev/block/sda".length() == 1)) || ((c.startsWith("/dev/sda")) && (c.length() - "/dev/sda".length() == 1)) || ((c.startsWith("/dev/block/sd")) && (c.length() - "/dev/block/sd".length() == 1)) || ((c.startsWith("/dev/sd")) && (c.length() - "/dev/sd".length() == 1)) || (c.startsWith("/dev/block/vold/8:")))) {
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
        if (l.b(paramArrayOfString))
        {
          ar localar = bt(paramArrayOfString[0]);
          if (localar != null) {
            d = paramArrayOfString[2];
          }
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (Exception paramArrayOfString)
    {
      Log.e(a, "Failed to mountFs");
    }
    return false;
  }
  
  public static final boolean aA(String paramString)
  {
    if (!az(paramString)) {
      return false;
    }
    return e(paramString, k());
  }
  
  public static final boolean aB(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("pcs://");
  }
  
  public static final String aC(String paramString)
  {
    int m = 1;
    if (paramString == null) {
      paramString = null;
    }
    for (;;)
    {
      return paramString;
      if (!aB(paramString)) {
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
  
  public static final boolean aD(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("pcs://");
  }
  
  public static final boolean aE(String paramString)
  {
    boolean bool2 = false;
    boolean bool1;
    if (!aB(paramString))
    {
      bool1 = bool2;
      if (!az(paramString)) {}
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
  
  public static final boolean aF(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("SP://");
  }
  
  public static final boolean aG(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("SP://");
  }
  
  public static final boolean aH(String paramString)
  {
    if (!aG(paramString)) {}
    do
    {
      return false;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() < 3);
    return "hot".equals(paramString.get(2));
  }
  
  public static final boolean aI(String paramString)
  {
    if (!aG(paramString)) {}
    do
    {
      return false;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() < 3);
    return "album".equals(paramString.get(2));
  }
  
  public static final boolean aJ(String paramString)
  {
    if (!aG(paramString)) {}
    do
    {
      return false;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() != 3);
    return "album".equals(paramString.get(2));
  }
  
  public static final boolean aK(String paramString)
  {
    if (!aG(paramString)) {}
    do
    {
      return false;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() != 4);
    return "album".equals(paramString.get(2));
  }
  
  public static final boolean aL(String paramString)
  {
    if (!aG(paramString)) {}
    while (com.estrongs.fs.a.a.c(paramString).size() != 2) {
      return false;
    }
    return true;
  }
  
  public static final boolean aM(String paramString)
  {
    if (!aG(paramString)) {}
    while (com.estrongs.fs.a.a.c(paramString).size() <= 2) {
      return false;
    }
    return true;
  }
  
  public static final boolean aN(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "gallery://local/buckets/".equals(bF(paramString));
  }
  
  public static final boolean aO(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("gallery://local/buckets/");
  }
  
  public static final boolean aP(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("net://");
  }
  
  public static final boolean aQ(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("cmpn://");
  }
  
  public static final String aR(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return paramString.substring("cmpn://".length());
  }
  
  public static final boolean aS(String paramString)
  {
    return (aQ(paramString)) && (paramString.indexOf('*') == -1);
  }
  
  public static final String aT(String paramString)
  {
    int m = paramString.indexOf('*');
    String str = paramString;
    if (m > 0) {
      str = paramString.substring(0, m);
    }
    return str;
  }
  
  public static final String aU(String paramString)
  {
    int m = paramString.indexOf('*');
    if (m != -1) {
      return paramString.substring(m + 1);
    }
    return null;
  }
  
  public static final boolean aV(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("bt://");
  }
  
  public static final boolean aW(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("search://");
  }
  
  public static boolean aX(String paramString)
  {
    if (!aW(paramString)) {}
    while (com.estrongs.fs.a.a.c(paramString).size() != 3) {
      return false;
    }
    return true;
  }
  
  public static String aY(String paramString)
  {
    if (!aW(paramString)) {}
    do
    {
      return null;
      paramString = com.estrongs.fs.a.a.c(paramString);
    } while (paramString.size() < 3);
    return ((String)paramString.get(2)).replaceAll("#", "/");
  }
  
  public static final boolean aZ(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("bt://");
  }
  
  public static final boolean aa(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://user".equals(paramString);
  }
  
  public static final boolean ab(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://system".equals(paramString);
  }
  
  public static final boolean ac(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://phone".equals(paramString);
  }
  
  public static final boolean ad(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://sdcard".equals(paramString);
  }
  
  public static final boolean ae(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://update".equals(paramString);
  }
  
  public static final boolean af(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "app://backuped".equals(paramString);
  }
  
  public static String ag(String paramString)
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
  
  public static String ah(String paramString)
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
  
  public static String ai(String paramString)
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
        break label122;
      }
      if ((paramString[0] == null) || (!paramString[0].contains("@"))) {
        break;
      }
      paramString = paramString[0].split("@");
      if (paramString.length < 1) {
        break;
      }
      return bj(paramString[0]);
    }
    return null;
    label122:
    return bj(paramString[0]);
  }
  
  public static String aj(String paramString)
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
    return bj(paramString[0]);
    return bj(paramString[0]);
  }
  
  public static String ak(String paramString)
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
  
  public static String al(String paramString)
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
    return bj(paramString[1].split("@")[0]);
  }
  
  public static String am(String paramString)
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
    return bj(paramString[1].split("@")[0]);
  }
  
  public static String an(String paramString)
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
        break label139;
      }
    }
    label139:
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
  
  public static String ao(String paramString)
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
  
  public static final boolean ap(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "Flickr".equals(ao(paramString));
  }
  
  public static final boolean aq(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "Instagram".equals(ao(paramString));
  }
  
  public static final boolean ar(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "Facebook".equals(ao(paramString));
  }
  
  public static final boolean as(String paramString)
  {
    if (paramString == null) {}
    while (!aG(paramString)) {
      return false;
    }
    return "pcs".equals(ao(paramString));
  }
  
  public static final boolean at(String paramString)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        return false;
      } while (!as(paramString));
      paramString = aj(paramString);
    } while ((paramString != null) && (paramString.length() != 0));
    return true;
  }
  
  public static final boolean au(String paramString)
  {
    return (as(paramString)) && (aL(paramString));
  }
  
  public static final boolean av(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "dropbox".equals(an(paramString));
  }
  
  public static final boolean aw(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("net://");
  }
  
  public static final boolean ax(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("usb://");
  }
  
  public static final boolean ay(String paramString)
  {
    return a(paramString, true);
  }
  
  public static final boolean az(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX");
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
    } while (!bb(paramString));
    if (aw(paramString))
    {
      str = an(paramString);
      return ai(paramString) + "@" + str;
    }
    if (aB(paramString))
    {
      str = an(paramString);
      return ai(paramString) + "@" + str;
    }
    if (aG(paramString))
    {
      str = ao(paramString);
      return aj(paramString) + "@" + str;
    }
    paramString = paramString.substring(bf(paramString));
    int m = paramString.indexOf('/');
    if (m == -1)
    {
      m = paramString.lastIndexOf("@");
      if (m != -1) {
        break label192;
      }
    }
    for (;;)
    {
      return paramString;
      paramString = paramString.substring(0, m);
      break;
      label192:
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
              } while (ba(paramString1));
              str1 = paramString1;
            } while (paramString1.equals("bt://"));
            str1 = paramString1;
          } while (paramString1.equals("book://"));
          str1 = paramString1;
        } while (paramString1.equals("apk://"));
        str1 = paramString1;
      } while (paramString1.equals("SP://"));
      m = G(paramString1);
      str1 = paramString1;
    } while (m == -1);
    String str2 = a(paramString1, m);
    String str3 = y(paramString1);
    String str1 = b(paramString1);
    if (aw(paramString1)) {
      str1 = an(paramString1);
    }
    if (aG(paramString1)) {
      str1 = ao(paramString1);
    }
    if (paramString1.startsWith("SP://")) {
      return "picture://" + str3 + ":" + paramString2 + "@" + str1 + str2;
    }
    if ((paramString1.startsWith("smb://")) && (br(paramString1) != null)) {
      return paramString1.substring(0, bf(paramString1)) + br(paramString1) + ";" + str3 + ":" + paramString2 + "@" + str1 + str2;
    }
    StringBuilder localStringBuilder = new StringBuilder().append(paramString1.substring(0, bf(paramString1)));
    if (str3 != null) {}
    for (paramString1 = str3 + ":" + paramString2 + "@";; paramString1 = "") {
      return paramString1 + str1 + str2;
    }
  }
  
  public static String b(String paramString1, String paramString2, String paramString3)
  {
    return "webdavs://" + bi(paramString1) + ":" + bi(paramString2) + "@webdav.yandex.ru" + paramString3;
  }
  
  public static String b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return "SP://" + bi(paramString2) + ":" + bi(paramString3) + "@" + paramString1 + paramString4;
  }
  
  public static String b(String paramString, boolean paramBoolean)
  {
    String str2 = bo(paramString);
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
  
  public static List<ar> b()
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
    return (aX(paramString)) && (!a(paramString, paramTypedMap));
  }
  
  public static String bA(String paramString)
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
  
  public static String bB(String paramString)
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
  
  public static String bC(String paramString)
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
  
  public static String bD(String paramString)
  {
    return e(paramString, true);
  }
  
  public static String bE(String paramString)
  {
    if (!ba(paramString)) {
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
        bD(paramString);
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
        return aa.a(paramString);
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
  
  public static String bF(String paramString)
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
  
  public static String bG(String paramString)
  {
    String str = A(paramString);
    if (str == null) {}
    do
    {
      do
      {
        return paramString;
        str = bd.c(str);
      } while (str == null);
      str = g(paramString, str);
    } while (str == null);
    return str;
  }
  
  public static String bH(String paramString)
  {
    String str = A(paramString);
    if (str == null) {}
    do
    {
      do
      {
        return paramString;
        str = bd.d(str);
      } while (str == null);
      str = g(paramString, bi(str));
    } while (str == null);
    return str;
  }
  
  public static boolean bI(String paramString)
  {
    return (aw(paramString)) && ("sugarsync".equals(an(paramString))) && ("/".equals(ag(paramString)));
  }
  
  public static String bJ(String paramString)
  {
    paramString = bE(paramString);
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
  
  public static String bK(String paramString)
  {
    String str = paramString;
    if (paramString.indexOf('*') >= 0) {
      str = paramString.substring(0, paramString.indexOf('*'));
    }
    return str;
  }
  
  public static String bL(String paramString)
  {
    if (bd.a(paramString)) {}
    do
    {
      return paramString;
      if (!paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
        break;
      }
      str = FexApplication.a().getText(2131428653).toString();
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files", str);
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/videos")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/videos", str + "/" + FexApplication.a().getText(2131427425));
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/music")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/music", str + "/" + FexApplication.a().getText(2131427422));
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/pictures")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/pictures", str + "/" + FexApplication.a().getText(2131427421));
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/documents")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/documents", str + "/" + FexApplication.a().getText(2131427424));
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/apps")) {
        return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/apps", str + "/" + FexApplication.a().getText(2131427423));
      }
    } while (!paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/others"));
    return paramString.replaceFirst("PCS_DRIVE_Js1a7M5e_9yAcTvFX/others", str + "/" + FexApplication.a().getText(2131427573));
    if (paramString.startsWith("flashair://")) {
      return paramString.replaceFirst("flashair://", "http://");
    }
    String str = bS(paramString);
    if (str != null) {
      return str;
    }
    return D(paramString);
  }
  
  public static String bM(String paramString)
  {
    Object localObject = paramString;
    if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX"))
    {
      localObject = paramString.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX");
      if (localObject.length > 1) {
        paramString = localObject[1];
      }
      if (r.a().g() == null) {
        break label175;
      }
      if ((paramString.startsWith("/files")) || (paramString.startsWith("/apps")) || (paramString.startsWith("/videos")) || (paramString.startsWith("/music")) || (paramString.startsWith("/pictures")) || (paramString.startsWith("/documents")) || (paramString.startsWith("/others")) || (paramString.startsWith("/files/apps/Downloads/"))) {
        localObject = r.a().g() + paramString;
      }
    }
    else
    {
      return (String)localObject;
    }
    return r.a().g() + "/files" + paramString;
    label175:
    return paramString.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX")[0];
  }
  
  public static String bN(String paramString)
  {
    if (paramString == null) {}
    String str1;
    String str2;
    do
    {
      return null;
      str1 = com.estrongs.fs.a.a.d(k());
      str2 = com.estrongs.fs.a.a.d(r.a().g());
    } while (str2 == null);
    return paramString.replaceFirst(str2, str1);
  }
  
  public static boolean bO(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.startsWith("/")) && (!paramString.contains("://"))) {
      return false;
    }
    return true;
  }
  
  public static boolean bP(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("recycle://");
  }
  
  public static boolean bQ(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("pcsres://");
  }
  
  public static boolean bR(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "mynetwork://".equals(paramString);
  }
  
  public static String bS(String paramString)
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
  
  public static String bT(String paramString)
  {
    paramString = bD(bE(paramString));
    if (paramString == null) {
      return null;
    }
    return paramString + "/.estrongs/recycle/";
  }
  
  public static String bU(String paramString)
  {
    if (paramString.endsWith("/")) {
      return paramString + ".estrongs";
    }
    return paramString + "/.estrongs";
  }
  
  public static String bV(String paramString)
  {
    if (paramString.endsWith("/")) {
      return paramString + "/.estrongs/recycle/";
    }
    return paramString + "/.estrongs/recycle/";
  }
  
  public static boolean bW(String paramString)
  {
    paramString = bE(paramString);
    String str = bD(paramString);
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
  
  public static final String bX(String paramString)
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
  
  private static ar bY(String paramString)
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
          ar localar = (ar)localIterator.next();
          if ((b != null) && (b.equalsIgnoreCase(paramString))) {
            return localar;
          }
        }
      }
    }
    return null;
  }
  
  private static boolean bZ(String paramString)
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
  
  public static final boolean ba(String paramString)
  {
    if (paramString == null) {}
    while (((!paramString.startsWith("/")) && (!paramString.startsWith("file://"))) || (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX"))) {
      return false;
    }
    return true;
  }
  
  public static final boolean bb(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.startsWith("smb://")) && (!paramString.startsWith("ftp://")) && (!paramString.startsWith("bt://")) && (!paramString.startsWith("ftps://")) && (!paramString.startsWith("ftpes://")) && (!paramString.startsWith("webdav://")) && (!paramString.startsWith("webdavs://")) && (!paramString.startsWith("net://")) && (!paramString.startsWith("pcs://")) && (!paramString.startsWith("sftp://")) && (!paramString.startsWith("SP://")) && (!paramString.startsWith("usb://")) && (!paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) && (!paramString.startsWith("mynetwork://")) && (!paramString.startsWith("flashair://")) && (!paramString.startsWith("adb://"))) {
      return false;
    }
    return true;
  }
  
  public static final String bc(String paramString)
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
  
  public static boolean bd(String paramString)
  {
    if (paramString == null) {}
    while ((!be(paramString)) && (!bg(paramString)) && (!aX(paramString)) && (!"app://".equals(paramString)) && (!"music://".equals(paramString)) && (!"pic://".equals(paramString)) && (!"video://".equals(paramString)) && (!"search://".equals(paramString)) && (!"book://".equals(paramString)) && (!"apk://".equals(paramString)) && (!"gallery://local/buckets/".equals(paramString)) && (!"SP://".equals(paramString)) && (!"pcs://".equals(paramString)) && (!Y(paramString)) && (!paramString.endsWith("://"))) {
      return false;
    }
    return true;
  }
  
  public static final boolean be(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("/");
  }
  
  public static int bf(String paramString)
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
  
  public static final boolean bg(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.equals("smb://")) && (!paramString.equals("ftp://")) && (!paramString.equals("bt://")) && (!paramString.equals("ftps://")) && (!paramString.equals("ftpes://")) && (!paramString.equals("webdav://")) && (!paramString.equals("webdavs://")) && (!paramString.equals("net://")) && (!paramString.equals("pcs://")) && (!paramString.equals("SP://")) && (!paramString.equals("sftp://")) && (!paramString.equals("usb://")) && (!paramString.equals("adb://")) && (!paramString.equals("mynetwork://")) && (!paramString.equals("scannedserver://"))) {
      return false;
    }
    return true;
  }
  
  public static final boolean bh(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("smb://");
  }
  
  public static final String bi(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    return paramString.replaceAll(":", "[\\$\\$\\$]").replaceAll("/", "[###]").replaceAll("@", "[^^^]");
  }
  
  public static final String bj(String paramString)
  {
    if (paramString == null) {
      return "";
    }
    return paramString.replaceAll("\\[\\$\\$\\$\\]", ":").replaceAll("\\[###\\]", "/").replaceAll("\\[\\^\\^\\^\\]", "@");
  }
  
  public static final String bk(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    while ((be(paramString)) || (paramString.endsWith("://"))) {
      return paramString;
    }
    if (bd(paramString)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int m = paramString.length();
    if (localStringBuilder.charAt(m - 1) == '/') {
      localStringBuilder.deleteCharAt(m - 1);
    }
    if ((aQ(paramString)) && (!aS(paramString)) && (aU(paramString).indexOf("/") == -1)) {
      return aT(paramString);
    }
    m = localStringBuilder.lastIndexOf("/");
    if (m != -1) {
      localStringBuilder.delete(m + 1, localStringBuilder.length());
    }
    paramString = localStringBuilder.toString();
    if ((paramString.equals("sftp://")) || (paramString.equals("ftps://")) || (paramString.equals("ftpes://")) || (paramString.equals("webdav://")) || (paramString.equals("webdavs://"))) {
      return "ftp://";
    }
    return localStringBuilder.toString();
  }
  
  public static final boolean bl(String paramString)
  {
    return d(paramString, true);
  }
  
  public static final boolean bm(String paramString)
  {
    return d(paramString, false);
  }
  
  public static final boolean bn(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = bo(paramString);
    } while ((paramString == null) || ((!paramString.equals("/sdcard/")) && (!paramString.equals("/mnt/sdcard/")) && (!paramString.equals("/mnt/sdcard")) && (!paramString.equals("/sdcard"))));
    return true;
  }
  
  public static String bo(String paramString)
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
  
  public static String bp(String paramString)
  {
    return bE(paramString);
  }
  
  public static String bq(String paramString)
  {
    int i1 = 1;
    if (paramString == null) {
      return null;
    }
    String str1 = ak.a();
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
        break label698;
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
          break label781;
        }
        localHashMap = g;
        if (str1 != null) {
          break label746;
        }
        localObject = paramString;
      }
      for (;;)
      {
        label698:
        label746:
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
          break label787;
        }
        str1 = paramString.substring(0, i1);
        paramString = paramString.substring(i1 + 1);
        break label220;
        localObject = str1 + ';' + paramString;
        continue;
        label781:
        localObject = null;
      }
      label787:
      str1 = null;
    }
  }
  
  public static String br(String paramString)
  {
    int m = bf(paramString);
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
  
  public static final boolean bs(String paramString)
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
      str2 = bD(paramString);
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
  
  public static ar bt(String paramString)
  {
    return c(paramString, true);
  }
  
  public static boolean bu(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = bt(paramString);
    } while ((paramString == null) || ((!bv(c)) && (!bw(d(b)))));
    return true;
  }
  
  public static boolean bv(String paramString)
  {
    if (paramString == null) {}
    while (((paramString == null) || (!paramString.startsWith("/dev/block/sd")) || (paramString.length() - "/dev/block/sd".length() != 1)) && ((!paramString.startsWith("/dev/sd")) || (paramString.length() - "/dev/sd".length() != 1)) && ((!paramString.startsWith("/dev/block/sda")) || (paramString.length() - "/dev/block/sda".length() != 1)) && ((!paramString.startsWith("/dev/sda")) || (paramString.length() - "/dev/sda".length() != 1)) && (!paramString.startsWith("/dev/block/vold/8:"))) {
      return false;
    }
    return true;
  }
  
  public static boolean bw(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.equalsIgnoreCase(e.f())) && (!paramString.equalsIgnoreCase("usbdisk")) && (!paramString.equalsIgnoreCase("usbotg")) && (!paramString.equalsIgnoreCase("usbdrive"))) {
      return false;
    }
    return true;
  }
  
  public static String bx(String paramString)
  {
    return paramString;
  }
  
  public static String by(String paramString)
  {
    int m = paramString.indexOf("://");
    if (m > 0) {
      return paramString.substring(0, m);
    }
    return null;
  }
  
  public static String bz(String paramString)
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
  
  public static ar c(String arg0, boolean paramBoolean)
  {
    String str = ???;
    if (paramBoolean) {
      str = bE(???);
    }
    synchronized (c)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        ar localar = (ar)localIterator.next();
        if (str.startsWith(b)) {
          return localar;
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
  
  public static List<ar> c()
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
    if ((!bb(paramString1)) || (!bb(paramString2))) {}
    do
    {
      return false;
      paramString1 = a(paramString1);
      paramString2 = a(paramString2);
    } while ((paramString1 == null) || (paramString2 == null));
    return paramString1.equals(paramString2);
  }
  
  private static boolean ca(String paramString)
  {
    int m;
    al localal;
    label105:
    try
    {
      Object localObject = (StorageManager)FexApplication.a().getSystemService("storage");
      if (localObject == null) {
        return false;
      }
      localObject = (Object[])new al(localObject).a("getVolumeList");
      int i1 = localObject.length;
      m = 0;
      if (m >= i1) {
        break label133;
      }
      localal = new al(localObject[m]);
      if ("mounted".equals(localal.a("getState"))) {
        break label135;
      }
      if (!"mounted_ro".equals(localal.a("getState"))) {
        break label148;
      }
    }
    catch (Exception paramString) {}
    boolean bool = paramString.equals(((File)localal.a("getPathFile")).getAbsolutePath());
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
  
  private static boolean cb(String paramString)
  {
    paramString = bY(paramString);
    return (paramString != null) && (e != null) && ("vfat".equalsIgnoreCase(e));
  }
  
  public static final String d(String paramString)
  {
    if ((bd.a(paramString)) || (bd(paramString))) {}
    do
    {
      return null;
      m = G(paramString);
    } while ((m == 12) || (m == 13) || (m == 14));
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
    int m = str.lastIndexOf("/");
    if ((m != -1) && (m != str.length() - 1)) {
      paramString = new StringBuilder(str.substring(m + 1));
    }
    for (;;)
    {
      return paramString.toString();
      if (m == str.length() - 1)
      {
        if ((bb(str)) && (str.indexOf("/", bf(str)) == str.length() - 1)) {
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
      ar localar = (ar)((Iterator)localObject).next();
      if ((a(localar)) && (!localArrayList.contains(b))) {
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
    return paramString2.equals(an(paramString1));
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
      } while (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/"));
      str = bo(paramString);
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
    if ((paramString == null) || (bg(paramString))) {
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
        str = bE(paramString);
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
        if (ba(paramString2)) {
          paramString1 = bE(paramString2);
        }
        paramString2 = str;
        if (ba(str)) {
          paramString2 = bE(str);
        }
        str = paramString1;
        if (az(paramString1)) {
          str = bM(paramString1);
        }
        paramString1 = paramString2;
        if (az(paramString2)) {
          paramString1 = bM(paramString2);
        }
        bool2 = str.equalsIgnoreCase(paramString1);
        bool1 = bool2;
      } while (bool2 != true);
      bool1 = bool2;
    } while (cb(bD(str)));
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
    if ((paramString == null) || (!aV(paramString))) {
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
    if ((paramString == null) || (!aV(paramString))) {
      return null;
    }
    paramString = new StringBuilder(paramString);
    int m = paramString.indexOf("/", 5);
    if (m != -1) {
      return paramString.substring(m);
    }
    return paramString.toString();
  }
  
  public static String g(String paramString1, String paramString2)
  {
    Object localObject1 = null;
    if (paramString1 == null) {
      return null;
    }
    int m = bf(paramString1);
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
      Log.e(a, "failed to parse host");
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
      Log.e(a, "failed to parse password");
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
    if ((paramString == null) || ((!J(paramString)) && (!I(paramString)) && (!m(paramString)) && (!p(paramString)))) {
      return null;
    }
    StringBuffer localStringBuffer = new StringBuffer(paramString);
    int m = localStringBuffer.indexOf("/", bf(paramString));
    if (m != -1) {
      return localStringBuffer.substring(0, m + 1);
    }
    return localStringBuffer.toString();
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
    if ((paramString == null) || ((!J(paramString)) && (!I(paramString)) && (!m(paramString)) && (!p(paramString)))) {
      return null;
    }
    StringBuffer localStringBuffer = new StringBuffer(paramString);
    int m = localStringBuffer.indexOf("/", bf(paramString));
    if (m != -1) {
      return localStringBuffer.substring(m);
    }
    return localStringBuffer.toString();
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
    if (!H(paramString)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int m = localStringBuilder.indexOf("/", bf(paramString));
    if (m != -1) {
      return localStringBuilder.substring(m);
    }
    return localStringBuilder.toString();
  }
  
  public static final String j(String paramString1, String paramString2)
  {
    String str2 = paramString1;
    if (bc.b(paramString1) == -1)
    {
      str2 = paramString1;
      if (paramString2 != null)
      {
        str2 = MimeTypeMap.getSingleton().getExtensionFromMimeType(paramString2);
        String str1 = str2;
        if (bd.a(str2))
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
        if (bd.b(str1))
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
    String str = ad.a(FexApplication.a()).j("Market");
    return bF(str) + "PCS_DRIVE_Js1a7M5e_9yAcTvFX";
  }
  
  public static final String k(String paramString)
  {
    if ((paramString == null) || ((!J(paramString)) && (!I(paramString)))) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    int m = localStringBuilder.indexOf("/", bf(paramString));
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
  
  public static String[] k(String paramString1, String paramString2)
  {
    Object localObject2 = null;
    String[] arrayOfString2 = null;
    Object localObject1 = localObject2;
    try
    {
      ar localar = bt(paramString1);
      String[] arrayOfString1 = arrayOfString2;
      if (localar != null)
      {
        arrayOfString1 = arrayOfString2;
        localObject1 = localObject2;
        if (!paramString2.equals(d))
        {
          localObject1 = localObject2;
          arrayOfString2 = l.b(b, paramString2);
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
      Log.e(a, "Faile to mount path: " + paramString1, paramString2);
    }
    return (String[])localObject1;
  }
  
  public static i l()
  {
    return k;
  }
  
  public static final boolean l(String paramString)
  {
    if ((paramString == null) || ((!J(paramString)) && (!I(paramString)) && (!m(paramString)) && (!p(paramString)))) {}
    while ((!paramString.startsWith("ftps://")) && (!paramString.startsWith("ftpes://"))) {
      return false;
    }
    return true;
  }
  
  private static boolean l(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString1.contains("/dev/fuse")) && (paramString2 != null) && (!paramString2.startsWith("/storage/emulated/legacy")))
    {
      if (bu(paramString2)) {}
      while ((paramString2.startsWith("/storage/")) || ((ac.a() >= 19) && (!paramString2.startsWith("/mnt/")) && (!paramString2.startsWith("/data/")))) {
        return true;
      }
    }
    return false;
  }
  
  public static final boolean m(String paramString)
  {
    return (n(paramString)) || (o(paramString));
  }
  
  /* Error */
  private static void n()
  {
    // Byte code:
    //   0: new 536	java/util/LinkedList
    //   3: dup
    //   4: invokespecial 537	java/util/LinkedList:<init>	()V
    //   7: astore_3
    //   8: new 369	java/io/File
    //   11: dup
    //   12: ldc_w 1220
    //   15: invokespecial 952	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: astore_0
    //   19: new 1222	java/io/BufferedReader
    //   22: dup
    //   23: new 1224	java/io/InputStreamReader
    //   26: dup
    //   27: new 1226	java/io/FileInputStream
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 1229	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   35: ldc_w 1231
    //   38: invokespecial 1234	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   41: invokespecial 1237	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   44: astore_1
    //   45: aload_1
    //   46: astore_0
    //   47: aload_1
    //   48: invokevirtual 1240	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   51: astore_2
    //   52: aload_2
    //   53: ifnull +229 -> 282
    //   56: aload_1
    //   57: astore_0
    //   58: aload_2
    //   59: ldc_w 1242
    //   62: invokevirtual 754	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
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
    //   83: new 552	com/estrongs/android/util/ar
    //   86: dup
    //   87: invokespecial 1243	com/estrongs/android/util/ar:<init>	()V
    //   90: astore 5
    //   92: aload_1
    //   93: astore_0
    //   94: aload 5
    //   96: aload_2
    //   97: putfield 1244	com/estrongs/android/util/ar:a	Ljava/lang/String;
    //   100: aload_1
    //   101: astore_0
    //   102: aload 5
    //   104: aload 4
    //   106: iconst_0
    //   107: aaload
    //   108: putfield 582	com/estrongs/android/util/ar:c	Ljava/lang/String;
    //   111: aload_1
    //   112: astore_0
    //   113: aload 5
    //   115: aload 4
    //   117: iconst_1
    //   118: aaload
    //   119: putfield 554	com/estrongs/android/util/ar:b	Ljava/lang/String;
    //   122: aload_1
    //   123: astore_0
    //   124: aload 5
    //   126: aload 4
    //   128: iconst_2
    //   129: aaload
    //   130: putfield 1094	com/estrongs/android/util/ar:e	Ljava/lang/String;
    //   133: aload_1
    //   134: astore_0
    //   135: aload 4
    //   137: iconst_3
    //   138: aaload
    //   139: ldc_w 1246
    //   142: invokevirtual 177	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   145: ifeq +113 -> 258
    //   148: aload_1
    //   149: astore_0
    //   150: aload 5
    //   152: ldc_w 1248
    //   155: putfield 675	com/estrongs/android/util/ar:d	Ljava/lang/String;
    //   158: aload_1
    //   159: astore_0
    //   160: aload_3
    //   161: aload 5
    //   163: invokevirtual 557	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   166: pop
    //   167: goto -122 -> 45
    //   170: astore_2
    //   171: aload_1
    //   172: astore_0
    //   173: ldc_w 1250
    //   176: ldc_w 1252
    //   179: aload_2
    //   180: invokestatic 1199	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   183: pop
    //   184: aload_1
    //   185: invokestatic 1254	com/estrongs/fs/util/j:a	(Ljava/io/Reader;)V
    //   188: aload_3
    //   189: invokevirtual 558	java/util/LinkedList:size	()I
    //   192: iconst_1
    //   193: if_icmple +32 -> 225
    //   196: aload_3
    //   197: getstatic 60	com/estrongs/android/util/am:f	Ljava/util/Comparator;
    //   200: invokestatic 641	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   203: getstatic 47	com/estrongs/android/util/am:c	Ljava/util/ArrayList;
    //   206: astore_0
    //   207: aload_0
    //   208: monitorenter
    //   209: getstatic 47	com/estrongs/android/util/am:c	Ljava/util/ArrayList;
    //   212: invokevirtual 1255	java/util/ArrayList:clear	()V
    //   215: getstatic 47	com/estrongs/android/util/am:c	Ljava/util/ArrayList;
    //   218: aload_3
    //   219: invokevirtual 1256	java/util/ArrayList:addAll	(Ljava/util/Collection;)Z
    //   222: pop
    //   223: aload_0
    //   224: monitorexit
    //   225: getstatic 40	com/estrongs/android/util/am:a	Ljava/lang/String;
    //   228: new 210	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 211	java/lang/StringBuilder:<init>	()V
    //   235: ldc_w 1258
    //   238: invokevirtual 217	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: getstatic 47	com/estrongs/android/util/am:c	Ljava/util/ArrayList;
    //   244: invokevirtual 1061	java/util/ArrayList:size	()I
    //   247: invokevirtual 447	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   250: invokevirtual 220	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: invokestatic 1260	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   256: pop
    //   257: return
    //   258: aload_1
    //   259: astore_0
    //   260: aload 5
    //   262: ldc_w 1262
    //   265: putfield 675	com/estrongs/android/util/ar:d	Ljava/lang/String;
    //   268: goto -110 -> 158
    //   271: astore_2
    //   272: aload_0
    //   273: astore_1
    //   274: aload_2
    //   275: astore_0
    //   276: aload_1
    //   277: invokestatic 1254	com/estrongs/fs/util/j:a	(Ljava/io/Reader;)V
    //   280: aload_0
    //   281: athrow
    //   282: aload_1
    //   283: invokestatic 1254	com/estrongs/fs/util/j:a	(Ljava/io/Reader;)V
    //   286: goto -98 -> 188
    //   289: astore_1
    //   290: aload_0
    //   291: monitorexit
    //   292: aload_1
    //   293: athrow
    //   294: astore_0
    //   295: aconst_null
    //   296: astore_1
    //   297: goto -21 -> 276
    //   300: astore_2
    //   301: aconst_null
    //   302: astore_1
    //   303: goto -132 -> 171
    // Local variable table:
    //   start	length	slot	name	signature
    //   294	1	0	localObject2	Object
    //   44	239	1	localObject3	Object
    //   289	4	1	localObject4	Object
    //   296	7	1	localObject5	Object
    //   51	46	2	str	String
    //   170	10	2	localException1	Exception
    //   271	4	2	localObject6	Object
    //   300	1	2	localException2	Exception
    //   7	212	3	localLinkedList	LinkedList
    //   65	71	4	arrayOfString	String[]
    //   90	171	5	localar	ar
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
    //   260	268	170	java/lang/Exception
    //   47	52	271	finally
    //   58	67	271	finally
    //   74	81	271	finally
    //   83	92	271	finally
    //   94	100	271	finally
    //   102	111	271	finally
    //   113	122	271	finally
    //   124	133	271	finally
    //   135	148	271	finally
    //   150	158	271	finally
    //   160	167	271	finally
    //   173	184	271	finally
    //   260	268	271	finally
    //   209	225	289	finally
    //   290	292	289	finally
    //   19	45	294	finally
    //   19	45	300	java/lang/Exception
  }
  
  public static final boolean n(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("webdav://");
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
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("webdavs://");
  }
  
  private static void p()
  {
    label1168:
    label1175:
    label1251:
    label1254:
    label1260:
    label1263:
    label1270:
    label1273:
    label1276:
    label1282:
    label1294:
    label1303:
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
            break label1276;
          }
          localObject7 = z.o.iterator();
          if (((Iterator)localObject7).hasNext()) {
            localObject4 = (String)((Iterator)localObject7).next();
          }
        }
        catch (Exception localException1)
        {
          Object localObject4;
          Log.e("PathUtils", "Failed to get the external storage path:", localException1);
        }
        try
        {
          localObject9 = new File((String)localObject4).getCanonicalPath();
          if (localObject9 == null) {
            break label1273;
          }
          if (localObject1 != null) {
            break label1270;
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
          ar localar = null;
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
          localObject2 = new ar();
          c = "";
          b = str1;
          e = "vfat";
          d = "rw";
          b.add(localObject2);
        }
        h = false;
        i = false;
        if ((localLinkedList.contains("/storage/sdcard1")) && (!localLinkedList.contains("/storage/sdcard0")) && (!localLinkedList.contains("/storage/emulated/0")) && (bd.k()))
        {
          if (!q()) {
            break label1175;
          }
          localLinkedList.add("/storage/sdcard0");
          localObject2 = new ar();
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
            localObject2 = new ar();
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
          break label1263;
        }
        localObject2 = a.split(" ");
        if (localObject2 == null) {
          break label1263;
        }
        m = 0;
        i1 = -1;
        n = -1;
        if (m >= localObject2.length) {
          break label1294;
        }
        if ("/proc".equalsIgnoreCase(localObject2[m]))
        {
          i3 = m;
          i2 = i1;
          break label1282;
        }
        i2 = i1;
        i3 = n;
        if (n < 0) {
          break label1282;
        }
        i2 = i1;
        i3 = n;
        if (!"proc".equalsIgnoreCase(localObject2[m])) {
          break label1282;
        }
        i2 = m;
        i3 = n;
        break label1282;
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
              break label1260;
            }
            m = 1;
            break label1303;
          }
        }
        if ((i2 == 0) && ((localObject10 == null) || ((!((String)localObject10).contains("/dev/block/vold/")) && (!((String)localObject10).startsWith("/dev/block/sd")))) && (!((String)localObject10).startsWith("/dev/sd")) && (!((String)localObject10).contains("/dev/fuse")) && ((!((String)localObject10).startsWith("/mnt/media_rw/")) || (((String)localObject10).contains("secure")) || (((String)localObject10).contains("asec")) || (((String)localObject10).equalsIgnoreCase(str1)))) {
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
          break label1254;
        }
        Object localObject7 = arrayOfString[m];
        localObject2 = localObject7;
        if (!((String)localObject7).contains("/dev/block/vold/"))
        {
          localObject2 = localObject7;
          if (!bu(str2))
          {
            if (!l((String)localObject7, str2)) {
              break label1168;
            }
            localObject2 = localObject7;
          }
        }
        if (!((String)localObject10).startsWith("/mnt/media_rw/")) {
          break label1251;
        }
        localObject2 = arrayOfString[0];
        bool = bZ(str2);
        if ((localObject2 != null) && (!"/dev/fuse".equals(localObject2)) && (localHashMap.get(localObject2) != null) && (localHashSet.contains(str2)) && (bool))
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
        localObject7 = new ar();
        c = ((String)localObject2);
        b = str2;
        d = "rw";
        if (n >= 0) {
          e = arrayOfString[n];
        }
        if (!"/dev/fuse".equals(localObject2)) {
          localHashMap.put(localObject2, str2);
        }
        b.add(localObject7);
      }
      m += 1;
      continue;
      if (r())
      {
        localLinkedList.add("/storage/emulated/0");
        localar = new ar();
        c = "";
        b = "/storage/emulated/0";
        e = "vfat";
        d = "rw";
        b.add(localar);
        i = true;
        continue;
        break label1303;
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
    if (paramString == null) {}
    while ((!paramString.startsWith("ftps://")) && (!paramString.startsWith("ftpes://"))) {
      return false;
    }
    return true;
  }
  
  private static boolean q()
  {
    return ca("/storage/sdcard0");
  }
  
  public static final boolean q(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return "remote://".equals(paramString);
  }
  
  private static boolean r()
  {
    return ca("/storage/emulated/0");
  }
  
  public static final boolean r(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("download://");
  }
  
  public static final boolean s(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("du://");
  }
  
  public static final boolean t(String paramString)
  {
    if (bd.b(paramString))
    {
      paramString = paramString.toLowerCase();
      if ((paramString.startsWith("http")) || (paramString.startsWith("https"))) {
        return true;
      }
    }
    return false;
  }
  
  public static final boolean u(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.startsWith("flashair://");
  }
  
  public static final boolean v(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.equals("flashair://flashair/");
  }
  
  public static final String w(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = paramString.substring(bf(paramString));
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
  
  public static String x(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = paramString.substring(bf(paramString));
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
  
  public static final String y(String paramString)
  {
    if (paramString == null) {}
    int m;
    int n;
    do
    {
      return null;
      m = paramString.indexOf(';', bf(paramString));
      n = paramString.indexOf(':', bf(paramString));
    } while ((n == -1) || (n < bf(paramString)));
    if ((m == -1) || (m > n)) {}
    for (paramString = paramString.substring(bf(paramString), n);; paramString = paramString.substring(m + 1, n)) {
      return bj(paramString);
    }
  }
  
  public static final String z(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return null;
      try
      {
        if (!J(paramString)) {
          continue;
        }
        paramString = paramString.substring(bf(paramString));
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
          return bj(paramString.substring(0, m));
          paramString = paramString.substring(0, m);
        }
        return null;
      }
      catch (Exception paramString) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */