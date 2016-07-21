package com.estrongs.fs.impl.adb;

import android.content.Context;
import com.estrongs.a.q;
import com.estrongs.android.exception.GeneralException;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ah;
import com.estrongs.android.util.an;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.u;
import com.estrongs.fs.w;
import com.estrongs.fs.x;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.json.JSONArray;
import org.json.JSONObject;

public class c
  implements u
{
  private static final String a = c.class.getSimpleName();
  private static HashMap<String, com.a.a.b> b = new HashMap();
  private static HashMap<String, f> c = new HashMap();
  private static HashMap<String, Integer> d = new HashMap();
  private static boolean e = false;
  
  static
  {
    d.put("INSTALL_FAILED_ALREADY_EXISTS", Integer.valueOf(100));
    d.put("INSTALL_FAILED_INSUFFICIENT_STORAGE", Integer.valueOf(101));
    d.put("INSTALL_FAILED_INVALID_APK", Integer.valueOf(102));
    d.put("INSTALL_FAILED_REPLACE_COULDNT_DELETE", Integer.valueOf(103));
  }
  
  private static int a(com.a.a.b paramb, String paramString, boolean paramBoolean)
  {
    Object localObject = "shell:pm install ";
    if (paramBoolean) {
      localObject = "shell:pm install " + " -r ";
    }
    paramb = paramb.a((String)localObject + paramString);
    for (;;)
    {
      try
      {
        paramString = new String(paramb.d());
        if (e) {
          l.b(a, "########install result " + paramString);
        }
        paramBoolean = paramString.startsWith("Success");
        if (!paramBoolean) {
          continue;
        }
        i = 0;
      }
      catch (IOException paramString)
      {
        Map.Entry localEntry;
        paramString.printStackTrace();
        int i = 104;
        continue;
        i = 104;
        continue;
      }
      paramb.close();
      return i;
      if (paramString.startsWith("Failure"))
      {
        localObject = d.entrySet().iterator();
        if (!((Iterator)localObject).hasNext()) {
          continue;
        }
        localEntry = (Map.Entry)((Iterator)localObject).next();
        if (paramString.contains((String)localEntry.getKey())) {
          i = ((Integer)localEntry.getValue()).intValue();
        }
      }
    }
  }
  
  public static int a(String paramString1, String paramString2, boolean paramBoolean)
  {
    int j = 0;
    com.a.a.b localb = o(paramString2);
    if ((localb == null) || (!TypeUtils.isAndroidApp(paramString1))) {
      l.e(a, "installApk failed, get connection null");
    }
    int i;
    for (;;)
    {
      return 104;
      com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
      try
      {
        Object localObject1;
        Object localObject2;
        if ((ap.Q(paramString1)) && (ap.c(paramString1, paramString2)))
        {
          long l = com.estrongs.fs.d.a().d(paramString1);
          localObject1 = b(paramString2, false);
          if ((localObject1 == null) || (b == null)) {
            continue;
          }
          localObject2 = b;
          localObject1 = localObject2;
          if (((String)localObject2).endsWith("/")) {
            localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
          }
          j = a(localb, (String)localObject1 + l(paramString1).substring("/files".length()), paramBoolean);
          i = j;
          if (locala != null)
          {
            i = j;
            if ((locala instanceof com.estrongs.fs.b.a))
            {
              locala.sendMessage(9, new Object[] { Long.valueOf(l), Long.valueOf(l) });
              i = j;
            }
          }
        }
        while ((locala != null) && ((locala instanceof com.estrongs.fs.b.a)))
        {
          locala.sendMessage(1, new Object[] { Long.valueOf(1L), paramString1 });
          locala.sendMessage(13, new Object[] { paramString1, paramString2 });
          break;
          localObject1 = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
          ((ByteBuffer)localObject1).put("SEND".getBytes("UTF-8"));
          localObject2 = localb.a("sync:");
          String str = URLEncoder.encode("/data/local/tmp/" + ap.d(paramString1)).replace("%2F", "/").replace("+", "%20");
          ((ByteBuffer)localObject1).putInt(str.length() + 6);
          ((com.a.a.g)localObject2).b(((ByteBuffer)localObject1).array());
          if (a((com.a.a.g)localObject2, paramString1, str))
          {
            ((com.a.a.g)localObject2).close();
            i = a(localb, str, paramBoolean);
            try
            {
              localb.a("shell:rm " + str).close();
            }
            catch (Exception localException) {}
          }
          else
          {
            i = j;
            if (locala != null)
            {
              i = j;
              if ((locala instanceof com.estrongs.fs.b.a))
              {
                ((com.a.a.g)localObject2).close();
                locala.setTaskResult(10000, new q(FexApplication.a().getString(2131230969), null));
                return 104;
              }
            }
          }
        }
      }
      catch (Exception paramString1)
      {
        if ((locala != null) && ((locala instanceof com.estrongs.fs.b.a))) {
          locala.setTaskResult(10000, new q(FexApplication.a().getString(2131230969), paramString1));
        }
        paramString1.printStackTrace();
        return 104;
      }
    }
    return i;
  }
  
  private String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return "listApps";
    case 1: 
      return "listAppsSystem";
    case 2: 
      return "listAppsPhone";
    case 3: 
      return "listAppsSdcard";
    }
    return "listAppsAll";
  }
  
  public static String a(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 100: 
      return paramContext.getString(2131230965);
    case 101: 
      return paramContext.getString(2131230966);
    case 102: 
      return paramContext.getString(2131230967);
    }
    return paramContext.getString(2131230968);
  }
  
  public static String a(e parame)
  {
    if (parame == null) {
      return null;
    }
    String str = "/appsuser";
    switch (f)
    {
    }
    for (;;)
    {
      return "adb://" + e + str + "/" + a;
      str = "/appsuser";
      continue;
      str = "/appssystem";
      continue;
      str = "/appsphone";
      continue;
      str = "/appssdcard";
    }
  }
  
  public static String a(com.estrongs.old.fs.impl.a.a parama)
  {
    if (parama == null) {
      return null;
    }
    String str2 = parama.getAbsolutePath();
    String str1 = ap.a(str2, 19);
    parama = ap.B(str2);
    String str3 = ap.C(str2);
    str2 = ap.a(str2);
    StringBuilder localStringBuilder = new StringBuilder().append("adb://");
    if (parama != null) {}
    for (parama = parama + ":" + str3 + "@";; parama = "") {
      return parama + str2 + "/files" + str1;
    }
  }
  
  public static String a(String paramString, int paramInt)
  {
    if ((paramString == null) || (!ap.M(paramString))) {
      return null;
    }
    paramString = ap.b(paramString);
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return "adb://" + paramString + "/appsuser";
    case 1: 
      return "adb://" + paramString + "/appssystem";
    case 2: 
      return "adb://" + paramString + "/appsphone";
    case 3: 
      return "adb://" + paramString + "/appssdcard";
    }
    return "adb://" + paramString + "/appsall";
  }
  
  public static String a(String paramString, HttpEntity paramHttpEntity)
  {
    try
    {
      paramString = new HttpPost(paramString);
      paramString.setEntity(paramHttpEntity);
      paramString.setHeader("Accept", "application/json");
      paramString.setHeader("Content-type", "application/json");
      paramString = HttpUtils.readResponse(ah.a(null).execute(paramString));
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static void a()
  {
    Iterator localIterator = b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      try
      {
        localObject = (com.a.a.b)((Map.Entry)localObject).getValue();
        a((com.a.a.b)localObject, "stop");
        ((com.a.a.b)localObject).close();
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    b.clear();
  }
  
  public static boolean a(com.a.a.b paramb, String paramString)
  {
    bool1 = true;
    if (paramb == null) {
      l.e(a, "installApk failed, get connection null");
    }
    do
    {
      return false;
      paramb = paramb.a("shell:am start -n com.estrongs.android.pop/.app.AdbControllerActivity -e adbRemoteIp " + an.a() + " -e adbControlMode " + paramString);
    } while (paramb.f());
    try
    {
      for (;;)
      {
        paramString = new String(paramb.e());
        if (e) {
          l.b(a, "############# invokeRemoteAdbController ret" + new String(paramString));
        }
        boolean bool2 = paramString.contains("Error");
        if (bool2) {
          bool1 = false;
        }
      }
      return bool1;
    }
    catch (IOException paramString)
    {
      paramb.close();
    }
  }
  
  private static boolean a(com.a.a.g paramg, String paramString1, String paramString2)
  {
    String str = paramString2 + ",33206";
    byte[] arrayOfByte = new byte[65536];
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    InputStream localInputStream = com.estrongs.fs.d.a().e(paramString1);
    if (localInputStream == null)
    {
      l.e(a, "sendFile error fail to get file input stream");
      return false;
    }
    int k = 1;
    long l5 = com.estrongs.fs.d.a().d(paramString1);
    long l1 = 0L;
    long l3 = 0L;
    ByteBuffer localByteBuffer = ByteBuffer.allocate(4096).order(ByteOrder.LITTLE_ENDIAN);
    int i2;
    int m;
    int j;
    int n;
    int i;
    long l2;
    label262:
    do
    {
      long l4;
      do
      {
        i2 = localInputStream.read(arrayOfByte, 0, 65536);
        if ((i2 == -1) || ((locala != null) && (locala.taskStopped())))
        {
          paramString1 = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);
          paramString1.put("DONE".getBytes("UTF-8"));
          paramString1.putInt((int)System.currentTimeMillis());
          paramg.b(paramString1.array());
          if (!new String(paramg.d(), "UTF-8").startsWith("OKAY")) {
            break label559;
          }
          if ((locala != null) && ((locala instanceof com.estrongs.fs.b.a))) {
            locala.sendMessage(9, new Object[] { Long.valueOf(l5), Long.valueOf(l5) });
          }
          return true;
        }
        l4 = l1 + i2;
        if (i2 >= 65536) {
          break;
        }
        m = i2;
        j = 1;
        n = 0;
        i = k;
        l2 = l3;
        l3 = l2;
        l1 = l4;
        k = i;
      } while (m - n <= 0);
      if (locala == null) {
        break;
      }
      l3 = l2;
      l1 = l4;
      k = i;
    } while (locala.taskStopped());
    localByteBuffer.clear();
    if (i != 0)
    {
      localByteBuffer.put(str.getBytes("UTF-8"));
      k = str.length();
      i = 0;
    }
    for (;;)
    {
      if (j != 0)
      {
        localByteBuffer.put("DATA".getBytes("UTF-8"));
        localByteBuffer.putInt(m);
        k += 8;
        j = 0;
      }
      for (;;)
      {
        int i3 = 4096 - k;
        int i1 = i3;
        if (i3 > i2 - n) {
          i1 = i2 - n;
        }
        localByteBuffer.put(arrayOfByte, n, i1);
        n += i1;
        paramString2 = localByteBuffer.array();
        if (localByteBuffer.remaining() > 0)
        {
          paramString2 = new byte[k + i1];
          System.arraycopy(localByteBuffer.array(), 0, paramString2, 0, k + i1);
        }
        paramg.b(paramString2);
        l1 = l2;
        if (locala != null)
        {
          l1 = l2;
          if ((locala instanceof com.estrongs.fs.b.a))
          {
            l1 = l2 + i1;
            locala.sendMessage(2, new Object[] { Long.valueOf(paramString2.length), paramString1 });
            locala.sendMessage(9, new Object[] { Long.valueOf(l5), Long.valueOf(l1) });
          }
        }
        l2 = l1;
        break label262;
        m = 65536;
        break;
        label559:
        return false;
      }
      k = 0;
    }
  }
  
  public static boolean a(h paramh)
  {
    if (!(paramh instanceof a)) {}
    for (;;)
    {
      return false;
      paramh = (a)paramh;
      try
      {
        Object localObject = new JSONObject();
        ((JSONObject)localObject).put("command", "appLaunch");
        ((JSONObject)localObject).put("appPackageName", paramh.a());
        localObject = new StringEntity(((JSONObject)localObject).toString(), "UTF-8");
        paramh = c(n(paramh.getAbsolutePath()), (HttpEntity)localObject);
        if (paramh != null)
        {
          int i = paramh.getInt("result");
          if (i == 0) {
            return true;
          }
        }
      }
      catch (Exception paramh)
      {
        paramh.printStackTrace();
      }
    }
    return false;
  }
  
  public static boolean a(String paramString, int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    for (;;)
    {
      int i = paramInt2 - 1;
      boolean bool1 = bool2;
      if (paramInt2 > 0)
      {
        if (b(paramString, paramInt1)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      if (e) {
        l.b(a, "adb list try count " + i);
      }
      try
      {
        Thread.sleep(200L);
        paramInt2 = i;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        paramInt2 = i;
      }
    }
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    boolean bool1 = true;
    Object localObject = o(paramString1);
    if ((localObject == null) || (paramString2 == null)) {
      l.e(a, "uninstallApk failed, get connection or package name null");
    }
    com.estrongs.a.a locala;
    do
    {
      return false;
      locala = com.estrongs.a.a.getCurrentTask();
      for (;;)
      {
        try
        {
          paramString2 = ((com.a.a.b)localObject).a("shell:pm uninstall " + paramString2);
          try
          {
            localObject = new String(paramString2.d());
            if (e) {
              l.b(a, "########uninstall result " + (String)localObject);
            }
            bool2 = ((String)localObject).startsWith("Success");
            if (!bool2) {
              continue;
            }
          }
          catch (IOException localIOException)
          {
            boolean bool2;
            localIOException.printStackTrace();
            bool1 = false;
            continue;
          }
          if (paramString2.f()) {
            break;
          }
          paramString2.close();
          if ((locala != null) && ((locala instanceof com.estrongs.fs.b.a)))
          {
            locala.sendMessage(1, new Object[] { Long.valueOf(1L), paramString1 });
            locala.sendMessage(13, new Object[] { paramString1, null });
          }
          return bool1;
        }
        catch (Exception paramString1)
        {
          paramString1.printStackTrace();
        }
        bool2 = ((String)localObject).startsWith("Failure");
        if (bool2) {
          bool1 = false;
        }
      }
    } while ((locala == null) || (!(locala instanceof com.estrongs.fs.b.a)));
    locala.setTaskResult(10000, new q(FexApplication.a().getString(2131230975), paramString1));
    return false;
  }
  
  public static f b(String paramString, boolean paramBoolean)
  {
    String str = ap.b(paramString);
    if ((paramBoolean) || (!c.containsKey(str)))
    {
      try
      {
        Object localObject = new JSONObject();
        ((JSONObject)localObject).put("command", "getDeviceInfo");
        localObject = new StringEntity(((JSONObject)localObject).toString(), "UTF-8");
        paramString = c(n(paramString), (HttpEntity)localObject);
        if (paramString != null)
        {
          localObject = new f(null);
          a = paramString.getString("name");
          b = paramString.getString("ftpRoot");
          c = paramString.getInt("ftpPort");
          c.put(str, localObject);
          return (f)localObject;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
      return null;
    }
    return (f)c.get(str);
  }
  
  public static InputStream b(h paramh)
  {
    if (!(paramh instanceof a)) {
      return null;
    }
    paramh = (a)paramh;
    try
    {
      Object localObject = new JSONObject();
      ((JSONObject)localObject).put("command", "getAppThumbnail");
      ((JSONObject)localObject).put("appPackageName", paramh.a());
      localObject = new StringEntity(((JSONObject)localObject).toString(), "UTF-8");
      paramh = d(n(paramh.getAbsolutePath()), (HttpEntity)localObject);
      return paramh;
    }
    catch (Exception paramh)
    {
      paramh.printStackTrace();
    }
    return null;
  }
  
  public static JSONArray b(String paramString, HttpEntity paramHttpEntity)
  {
    try
    {
      paramString = a(paramString, paramHttpEntity);
      if ((paramString != null) && (paramString.length() != 0))
      {
        paramString = new JSONArray(paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    return null;
  }
  
  public static boolean b()
  {
    return !bk.p();
  }
  
  public static boolean b(String paramString, int paramInt)
  {
    try
    {
      Socket localSocket = new Socket();
      localSocket.connect(new InetSocketAddress(paramString, paramInt), 2000);
      localSocket.close();
      return true;
    }
    catch (Throwable paramString) {}
    return false;
  }
  
  private static com.a.a.d c()
  {
    Object localObject = new File(com.estrongs.android.pop.a.t);
    if (!((File)localObject).exists()) {
      ((File)localObject).mkdirs();
    }
    localObject = new File(com.estrongs.android.pop.a.t + "/KEY_PUBLIC");
    File localFile = new File(com.estrongs.android.pop.a.t + "/KEY_PRIVATE");
    if ((((File)localObject).exists()) && (localFile.exists())) {
      try
      {
        localObject = com.a.a.d.a(new b(), localFile, (File)localObject);
        return (com.a.a.d)localObject;
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return null;
      }
    }
    try
    {
      com.a.a.d locald = com.a.a.d.a(new b());
      locald.a(localFile, localException1);
      return locald;
    }
    catch (Exception localException2)
    {
      localException2.printStackTrace();
    }
    return null;
  }
  
  public static JSONObject c(String paramString, HttpEntity paramHttpEntity)
  {
    try
    {
      paramString = a(paramString, paramHttpEntity);
      if ((paramString != null) && (paramString.length() != 0))
      {
        paramString = new JSONObject(paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    return null;
  }
  
  public static InputStream d(String paramString, HttpEntity paramHttpEntity)
  {
    Object localObject = null;
    try
    {
      paramString = new HttpPost(paramString);
      paramString.setEntity(paramHttpEntity);
      paramString.setHeader("Accept", "application/octet-stream");
      paramString.setHeader("Content-type", "application/json");
      paramHttpEntity = ah.a(null).execute(paramString).getEntity();
      paramString = (String)localObject;
      if (paramHttpEntity != null) {
        paramString = paramHttpEntity.getContent();
      }
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static boolean e(String paramString)
  {
    if (!ap.Q(paramString)) {
      return false;
    }
    try
    {
      com.estrongs.old.fs.impl.a.c.b().c(m(paramString));
      return true;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static int f(String paramString)
  {
    int j = 0;
    int i;
    if (!ap.O(paramString)) {
      i = -1;
    }
    do
    {
      do
      {
        return i;
        paramString = l(paramString);
        i = j;
      } while (paramString.equals("/appsuser"));
      if (paramString.equals("/appssystem")) {
        return 1;
      }
      if (paramString.equals("/appsphone")) {
        return 2;
      }
      if (paramString.equals("/appssdcard")) {
        return 3;
      }
      i = j;
    } while (!paramString.equals("/appsall"));
    return 4;
  }
  
  public static boolean g(String paramString)
  {
    return o(paramString) != null;
  }
  
  public static void i(String paramString)
  {
    try
    {
      Object localObject = b(paramString, false);
      if (localObject != null)
      {
        localObject = a;
        if (localObject != null) {
          ad.a(FexApplication.a()).c(paramString, (String)localObject);
        }
      }
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static String j(String paramString)
  {
    if (!ap.Q(paramString)) {
      return null;
    }
    return paramString.substring(0, paramString.indexOf("/files") + 1);
  }
  
  public static com.estrongs.fs.c k(String paramString)
  {
    h localh = com.estrongs.fs.a.b.a().h(paramString);
    if (localh == null)
    {
      l.e(a, " fail to get file obj");
      return null;
    }
    paramString = new com.estrongs.fs.c(paramString);
    h = localh.createdTime();
    i = localh.lastAccessed();
    j = localh.lastModified();
    o = localh.getName();
    e = localh.length();
    return paramString;
  }
  
  private static String l(String paramString)
  {
    return ap.a(paramString, 36);
  }
  
  private static String m(String paramString)
  {
    String str2 = ap.a(paramString, 36);
    if (str2 == null) {
      return null;
    }
    String str1 = str2;
    if (str2.startsWith("/files")) {
      str1 = str2.substring("/files".length());
    }
    String str3 = ap.A(paramString);
    String str4 = ap.C(paramString);
    str2 = ap.a(paramString);
    paramString = b(paramString, false);
    int i = 3721;
    if (paramString != null) {
      i = c;
    }
    StringBuilder localStringBuilder = new StringBuilder().append("ftp://");
    if (str3 != null) {}
    for (paramString = str3 + ":" + str4 + "@";; paramString = "") {
      return paramString + str2 + ":" + i + str1;
    }
  }
  
  private static String n(String paramString)
  {
    return "http://" + ap.a(paramString) + ":" + 59777;
  }
  
  private static com.a.a.b o(String paramString)
  {
    String str = ap.b(paramString);
    if (str == null)
    {
      l.e(a, "getOrCreateConnection error");
      paramString = null;
    }
    Object localObject;
    do
    {
      return paramString;
      if (!b.containsKey(str)) {
        break;
      }
      localObject = (com.a.a.b)b.get(str);
      paramString = (String)localObject;
    } while (((com.a.a.b)localObject).b());
    b.remove(localObject);
    int i = 5555;
    if (str.contains(":"))
    {
      localObject = str.split(":");
      paramString = localObject[0];
      i = Integer.parseInt(localObject[1]);
    }
    for (;;)
    {
      localObject = new Socket();
      paramString = new InetSocketAddress(paramString, i);
      com.a.a.d locald = c();
      if (locald == null)
      {
        l.e(a, "fail to getAdbCrypto()");
        try
        {
          ((Socket)localObject).close();
          return null;
        }
        catch (IOException paramString)
        {
          for (;;)
          {
            paramString.printStackTrace();
          }
        }
      }
      try
      {
        ((Socket)localObject).connect(paramString, 20000);
        paramString = com.a.a.b.a((Socket)localObject, locald);
        try
        {
          paramString.a();
          b.put(str, paramString);
          return paramString;
        }
        catch (Exception localException1) {}
      }
      catch (Exception localException3)
      {
        for (;;)
        {
          paramString = null;
        }
      }
      localException1.printStackTrace();
      if (paramString != null) {
        try
        {
          paramString.close();
          return paramString;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          return paramString;
        }
      }
      ((Socket)localObject).close();
      return paramString;
      paramString = localException3;
    }
  }
  
  public h a(String paramString)
  {
    return null;
  }
  
  public OutputStream a(String paramString, TypedMap paramTypedMap)
  {
    if (!ap.Q(paramString)) {
      return null;
    }
    if (paramTypedMap != null) {}
    for (long l = paramTypedMap.getLong("length");; l = 0L)
    {
      if (l == 0L) {
        com.estrongs.old.fs.impl.a.c.b().a(m(paramString));
      }
      return com.estrongs.old.fs.impl.a.c.b().j(m(paramString));
    }
  }
  
  public OutputStream a(String paramString, boolean paramBoolean)
  {
    if (ap.Q(paramString)) {
      return com.estrongs.old.fs.impl.a.c.b().j(m(paramString));
    }
    return null;
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    int i = 0;
    paramTypedMap = paramh.getAbsolutePath();
    Object localObject1 = l(paramTypedMap);
    Object localObject2 = com.estrongs.a.a.getCurrentTask();
    ArrayList localArrayList = new ArrayList();
    paramh = ap.a(paramTypedMap);
    if (((String)localObject1).equals("/"))
    {
      boolean bool;
      try
      {
        bool = h(paramTypedMap);
        if (!bool) {
          throw new AdbFsException("ES not installed.", AdbFsException.ERROR_CODE.ADB_ERROR_ES_NOT_INSTALLED);
        }
      }
      catch (Exception paramh)
      {
        paramh.printStackTrace();
        return null;
      }
      try
      {
        bool = b(paramTypedMap, "start");
        if (!bool) {
          throw new AdbFsException("ES need to update.", AdbFsException.ERROR_CODE.ADB_ERROR_ES_NEED_UPDATE);
        }
      }
      catch (Exception paramh)
      {
        paramh.printStackTrace();
        return null;
      }
      if (!a(paramh, 59777, 10))
      {
        l.e(a, "Adb port " + 59777 + " can not be connected.");
        return null;
      }
      b(paramTypedMap, true);
      processData.r = null;
      ((com.estrongs.a.a)localObject2).onProgress(processData);
      paramh = paramTypedMap;
      if (paramTypedMap.endsWith("/")) {
        paramh = paramTypedMap.substring(0, paramTypedMap.length() - 1);
      }
      localObject1 = paramh + "/appsuser";
      localObject2 = paramh + "/files";
      parami = ad.a(FexApplication.a()).Q((String)localObject1);
      paramh = parami;
      if (parami == null) {
        paramh = FexApplication.a().getString(2131232487);
      }
      paramTypedMap = ad.a(FexApplication.a()).Q((String)localObject2);
      parami = paramTypedMap;
      if (paramTypedMap == null) {
        parami = FexApplication.a().getString(2131232462);
      }
      paramh = new x((String)localObject1, w.O, paramh);
      parami = new x((String)localObject2, w.O, parami);
      localArrayList.add(paramh);
      localArrayList.add(parami);
      return localArrayList;
    }
    if (((String)localObject1).startsWith("/apps")) {}
    label932:
    for (;;)
    {
      try
      {
        if (!b(paramh, 59777))
        {
          b(paramTypedMap, "start");
          if (!a(paramh, 59777, 10)) {
            return null;
          }
        }
        paramh = new JSONObject();
        int j = f(paramTypedMap);
        localObject1 = a(j);
        if (localObject1 == null) {
          return null;
        }
        paramh.put("command", localObject1);
        paramh = new StringEntity(paramh.toString(), "UTF-8");
        paramh = b(n(paramTypedMap), paramh);
        if (paramh != null)
        {
          int k = paramh.length();
          if (i < k) {
            try
            {
              localObject1 = paramh.getJSONObject(i);
              localObject2 = new e();
              b = ((JSONObject)localObject1).getString("packageName");
              a = ((JSONObject)localObject1).getString("label");
              if ((a == null) || (b == null)) {
                break label932;
              }
              if (!a.endsWith(".apk")) {
                a += ".apk";
              }
              f = j;
              e = ap.b(paramTypedMap);
              h = ((JSONObject)localObject1).getLong("mTime");
              g = ((JSONObject)localObject1).getLong("size");
              c = ((JSONObject)localObject1).getString("version");
              d = ((JSONObject)localObject1).getInt("versionCode");
              localObject1 = new a((e)localObject2);
              if ((parami == null) || (!parami.a((h)localObject1))) {
                break label932;
              }
              localArrayList.add(localObject1);
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        }
        return localArrayList;
      }
      catch (Exception paramh)
      {
        paramh.printStackTrace();
      }
      for (;;)
      {
        f localf = b(paramTypedMap, false);
        if (localf == null)
        {
          l.e(a, "Fail to get device info.");
          return null;
        }
        if (!a(paramh, c, 10))
        {
          l.e(a, "Ftp port " + c + " can not be connected.");
          return null;
        }
        m(paramTypedMap);
        try
        {
          paramh = com.estrongs.fs.d.a().a(m(paramTypedMap), true).iterator();
          while (paramh.hasNext())
          {
            paramTypedMap = (h)paramh.next();
            if ((paramTypedMap instanceof com.estrongs.old.fs.impl.a.a))
            {
              paramTypedMap = new g((com.estrongs.old.fs.impl.a.a)paramTypedMap);
              if ((parami != null) && (parami.a(paramTypedMap))) {
                localArrayList.add(paramTypedMap);
              }
            }
          }
          i += 1;
        }
        catch (FileSystemException paramh)
        {
          if ((paramh instanceof GeneralException)) {
            throw new AdbFsException("username or passwork error", AdbFsException.ERROR_CODE.ADB_ERROR_ES_AUTH_FAILED);
          }
          if (((com.estrongs.android.exception.a.a(paramh) instanceof IllegalArgumentException)) && (paramh.getMessage() != null) && (paramh.getMessage().equals("530"))) {
            throw new AdbFsException("username or passwork error", AdbFsException.ERROR_CODE.ADB_ERROR_ES_AUTH_FAILED);
          }
          throw paramh;
        }
      }
    }
  }
  
  public boolean a(h paramh1, h paramh2)
  {
    String str1 = paramh1.getAbsolutePath();
    String str2 = ap.d(paramh2.getAbsolutePath());
    if ((ap.P(str1)) || (ap.R(str1)))
    {
      ad.a(FexApplication.a()).j(str1, str2);
      return true;
    }
    if (ap.Q(str1)) {
      return com.estrongs.old.fs.impl.a.c.b().a(m(paramh1.getAbsolutePath()), m(paramh2.getAbsolutePath()));
    }
    return false;
  }
  
  public boolean b(String paramString)
  {
    String str = l(paramString);
    if ((str.equals("/")) || (str.equals("/apps"))) {
      return false;
    }
    return com.estrongs.old.fs.impl.a.c.b().d(m(paramString));
  }
  
  public boolean b(String paramString1, String paramString2)
  {
    return a(o(paramString1), paramString2);
  }
  
  public boolean c(String paramString)
  {
    String str = l(paramString);
    if ((str.equals("/")) || (str.equals("/apps")) || (str.equals("/files"))) {}
    while (str.startsWith("/apps")) {
      return true;
    }
    return com.estrongs.old.fs.impl.a.c.b().b(m(paramString));
  }
  
  public InputStream d(String paramString)
  {
    if (l(paramString).startsWith("/apps")) {
      try
      {
        Object localObject = new JSONObject();
        ((JSONObject)localObject).put("command", "appPull");
        paramString = com.estrongs.fs.a.b.a().h(paramString);
        if ((paramString == null) || (!(paramString instanceof a)))
        {
          l.e(a, "getInputStream fail to get file obj");
          return null;
        }
        paramString = (a)paramString;
        ((JSONObject)localObject).put("appPackageName", paramString.a());
        localObject = new StringEntity(((JSONObject)localObject).toString(), "UTF-8");
        paramString = d(n(paramString.getAbsolutePath()), (HttpEntity)localObject);
        return paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return null;
      }
    }
    return com.estrongs.old.fs.impl.a.c.b().i(m(paramString));
  }
  
  public boolean h(String paramString)
  {
    boolean bool2 = false;
    paramString = o(paramString);
    if (paramString == null)
    {
      l.e(a, "installApk failed, get connection null");
      throw new IOException();
    }
    String str = "shell:pm path " + FexApplication.a().getPackageName();
    for (;;)
    {
      try
      {
        paramString = paramString.a(str);
        if (paramString.f()) {
          return false;
        }
        str = new String(paramString.d());
        bool1 = bool2;
        if (str != null)
        {
          int i = str.length();
          if (i != 0) {
            continue;
          }
          bool1 = bool2;
        }
      }
      catch (Exception paramString)
      {
        boolean bool1 = true;
        continue;
        bool1 = true;
        continue;
      }
      try
      {
        if (e) {
          l.b(a, "########checkESInstalled result " + str);
        }
        paramString.close();
        return bool1;
      }
      catch (Exception paramString) {}
    }
    paramString.printStackTrace();
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.adb.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */