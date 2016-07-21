package com.estrongs.fs.impl.o;

import android.content.Context;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.NetFsException.ERROR_CODE;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.g;
import com.estrongs.fs.b.r;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.fs.impl.pcs.PcsFileSystem.PcsFileSystemException;
import com.estrongs.fs.w;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class b
{
  static HashMap<String, f> a = new HashMap();
  private static String b = null;
  private static String c = null;
  private static HashMap<String, INetFileSystem> d = new HashMap();
  private static HashMap<String, String> e = new HashMap();
  
  static
  {
    e.put("dropbox", "com.estrongs.android.pop.netfs.DropboxFileSystem");
    e.put("sugarsync", "com.estrongs.android.pop.netfs.SugarsyncFileSystem");
    e.put("kuaipan", "com.estrongs.android.pop.netfs.KuaipanFileSystem");
    e.put("box", "com.estrongs.android.pop.netfs.BoxnetFileSystem");
    e.put("pcs", "com.estrongs.fs.impl.PcsFileSystem");
    e.put("vdisk", "com.estrongs.android.pop.netfs.VDiskFileSystem");
    e.put("onedrive", "com.estrongs.android.pop.netfs.SkydrvFileSystem");
    e.put("gdrive", "com.estrongs.android.pop.netfs.GdriveFileSystem");
    e.put("s3", "com.estrongs.android.pop.netfs.S3FileSystem");
    e.put("megacloud", "com.estrongs.android.pop.netfs.MegacloudFileSystem");
    e.put("mediafire", "com.estrongs.android.pop.netfs.MediaFireFileSystem");
  }
  
  public static INetFileSystem a(String paramString)
  {
    return d(null, paramString);
  }
  
  private static com.estrongs.fs.c a(NetFileInfo paramNetFileInfo)
  {
    com.estrongs.fs.c localc = new com.estrongs.fs.c(path);
    o = name;
    d = isDirectory;
    k = readable;
    l = writable;
    m = hidden;
    j = lastModifiedTime;
    e = size;
    return localc;
  }
  
  public static OutputStream a(String paramString, long paramLong, boolean paramBoolean)
  {
    paramString = ap.cd(paramString);
    Object localObject = ap.ax(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      paramString = ap.b(ap.as(paramString), ap.av(paramString), p(paramString));
      try
      {
        paramString = com.estrongs.fs.impl.w.b.a(paramString, paramLong);
        return paramString;
      }
      catch (Exception paramString)
      {
        return null;
      }
    }
    localObject = a((String)localObject);
    if (localObject == null) {
      return null;
    }
    return ((INetFileSystem)localObject).getFileOutputStream(ap.as(paramString), ap.av(paramString), p(paramString), paramLong, paramBoolean);
  }
  
  public static Object a(String paramString1, String paramString2, String paramString3)
  {
    paramString3 = a(paramString3);
    if (paramString3 == null) {
      return null;
    }
    if ((paramString3 instanceof PcsFileSystem)) {
      return ((PcsFileSystem)paramString3).c(paramString1, paramString2);
    }
    return null;
  }
  
  public static Object a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Object localObject = ap.cd(paramString1);
    paramString1 = ap.as((String)localObject);
    String str = ap.av((String)localObject);
    localObject = a(ap.ax((String)localObject));
    if (localObject == null) {
      return null;
    }
    if ((localObject instanceof PcsFileSystem)) {
      return ((PcsFileSystem)localObject).a(paramString1, str, paramString2, paramString3, paramString4);
    }
    return null;
  }
  
  public static List<h> a(Context paramContext, String paramString, boolean paramBoolean, com.estrongs.fs.i parami, TypedMap paramTypedMap)
  {
    String str5 = ap.cd(paramString);
    String str1 = ap.as(str5);
    String str2 = ap.av(str5);
    String str6 = p(str5);
    String str3 = ap.ax(str5);
    if ((str1 == null) || (str2 == null) || (str6 == null)) {
      throw new NetFsException("MalFormed URL", NetFsException.ERROR_CODE.NETFS_ERROR_MALFORMED_URL);
    }
    String str4 = ap.ax(str5);
    com.estrongs.android.j.c localc = com.estrongs.android.j.c.a(null);
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject1;
    if (str4.equals("dropbox"))
    {
      localObject1 = "Dropbox_List";
      paramString = "Dropbox_UV";
      if ((localObject1 != null) && (localc != null))
      {
        localc.a((String)localObject1);
        localc.c(paramString);
      }
      if (!str3.equalsIgnoreCase("yandex")) {
        break label337;
      }
      paramContext = ap.b(str1, str2, str6);
    }
    for (;;)
    {
      try
      {
        paramContext = com.estrongs.fs.impl.w.b.a(paramContext, parami, null, true);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        return null;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (str4.equals("kuaipan")) {
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (str4.equals("vdisk")) {
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (str4.equals("box")) {
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (str4.equals("sugarsync")) {
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (str4.equals("onedrive")) {
        break;
      }
      if (str4.equals("gdrive"))
      {
        localObject1 = "Gdrive_List";
        paramString = "Gdrive_UV";
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (str4.equals("s3")) {
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (str4.equals("yandex")) {
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (str4.equals("megacloud")) {
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      if (!str4.equals("mediafire")) {
        break;
      }
      paramString = (String)localObject3;
      localObject1 = localObject2;
      break;
      label337:
      paramString = d(paramContext, str3);
      if (paramString == null) {
        return null;
      }
      try
      {
        localObject1 = new d();
        ((d)localObject1).a(str5);
        if ((str6.equals("/")) && (str3.equals("sugarsync"))) {
          paramString.setPrivateContent(str1, str2, new String[] { "/" + (String)paramContext.getText(2131232385), "/" + (String)paramContext.getText(2131232386), "/" + (String)paramContext.getText(2131232389), "/" + (String)paramContext.getText(2131232387), "/" + (String)paramContext.getText(2131232388) });
        }
        paramContext = paramString.listFiles(str1, str2, str6, paramBoolean, (INetRefreshCallback)localObject1, paramTypedMap);
        if (paramContext == null) {
          return null;
        }
      }
      catch (NetFsException paramContext)
      {
        for (;;)
        {
          if (error == NetFsException.ERROR_CODE.NETFS_ERROR_AUTH_FAILED) {
            throw paramContext;
          }
          if (error == NetFsException.ERROR_CODE.NETFS_ERROR_NOT_LOG_IN) {
            throw paramContext;
          }
          if ((paramContext instanceof PcsFileSystem.PcsFileSystemException))
          {
            throw paramContext;
            paramString = paramContext.entrySet();
            paramContext = null;
            if (paramString == null) {
              break;
            }
            paramContext = new ArrayList();
            paramString = paramString.iterator();
            while (paramString.hasNext())
            {
              paramTypedMap = (NetFileInfo)((Map.Entry)paramString.next()).getValue();
              path = ap.a(str3, str1, str2, path);
              localObject1 = new a(paramTypedMap);
              if (((str4.equals("pcs")) || (str4.equals("gdrive")) || (str4.equals("box"))) && ((String)paramTypedMap.getExtra("public_share_link") != null)) {
                ((a)localObject1).putExtra("public_share_link", paramTypedMap.getExtra("public_share_link"));
              }
              if ((String)paramTypedMap.getExtra("web_file_url") != null) {
                ((a)localObject1).putExtra("web_file_url", paramTypedMap.getExtra("web_file_url"));
              }
              if ((String)paramTypedMap.getExtra("mime_type") != null) {
                ((a)localObject1).putExtra("mime_type", paramTypedMap.getExtra("mime_type"));
              }
              if ((String)paramTypedMap.getExtra("intent_file_url") != null) {
                ((a)localObject1).putExtra("intent_file_url", paramTypedMap.getExtra("intent_file_url"));
              }
              if (parami.a((h)localObject1))
              {
                if (isDirectory) {
                  switch (folder_type)
                  {
                  }
                }
                for (;;)
                {
                  paramContext.add(localObject1);
                  break;
                  ((a)localObject1).setFileType(w.p);
                  continue;
                  if (str3.equals("pcs"))
                  {
                    ((a)localObject1).setFileType(w.D);
                  }
                  else
                  {
                    ((a)localObject1).setFileType(w.C);
                    continue;
                    ((a)localObject1).setFileType(w.o);
                    continue;
                    ((a)localObject1).setFileType(w.o);
                    continue;
                    ((a)localObject1).setFileType(w.C);
                    continue;
                    ((a)localObject1).setFileType(w.F);
                    continue;
                    ((a)localObject1).setFileType(w.C);
                    continue;
                    ((a)localObject1).setFileType(w.E);
                  }
                }
              }
            }
            return paramContext;
          }
          paramContext = null;
        }
      }
    }
  }
  
  public static void a()
  {
    synchronized (a)
    {
      a.clear();
      return;
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    b = paramString1;
    c = paramString2;
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, Object paramObject)
  {
    paramString1 = a(paramString1);
    if (paramString1 == null) {
      return;
    }
    paramString1.setPrivateContent(paramString2, paramString3, paramObject);
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    paramString = ap.ax(ap.cd(paramString));
    if ((bk.b(paramString)) && (paramString.equalsIgnoreCase("yandex"))) {}
    do
    {
      return false;
      paramContext = d(paramContext, paramString);
    } while ((paramContext == null) || (!paramContext.isPagingSupported()));
    return true;
  }
  
  public static boolean a(h paramh, String paramString)
  {
    int i = ap.I(paramh.getAbsolutePath());
    if ((i != 0) && (i != 34)) {
      return false;
    }
    paramString = ap.cd(paramString);
    INetFileSystem localINetFileSystem = a(ap.ax(paramString));
    if ((localINetFileSystem instanceof PcsFileSystem)) {
      return ((PcsFileSystem)localINetFileSystem).a(ap.as(paramString), ap.av(paramString), paramh, p(paramString));
    }
    return false;
  }
  
  public static boolean a(String paramString, long paramLong)
  {
    boolean bool = false;
    paramString = ap.cd(paramString);
    Object localObject = ap.ax(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex")) {
      paramString = ap.b(ap.as(paramString), ap.av(paramString), p(paramString));
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.w.b.a(null, paramString, null);
        return bool;
      }
      catch (Exception paramString) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).deleteFile(ap.as(paramString), ap.av(paramString), p(paramString));
      }
    }
    return false;
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool = false;
    paramString = ap.cd(paramString);
    Object localObject = ap.ax(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex")) {
      paramString = ap.b(ap.as(paramString), ap.av(paramString), p(paramString));
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.w.b.b(paramString, paramBoolean);
        return bool;
      }
      catch (Exception paramString) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).createFile(ap.as(paramString), ap.av(paramString), p(paramString), paramBoolean);
      }
    }
    return false;
  }
  
  public static f b(Context paramContext, String paramString)
  {
    String str = ap.au(paramString);
    if (str == null) {
      ??? = null;
    }
    for (;;)
    {
      return (f)???;
      synchronized (a)
      {
        f localf = (f)a.get(str);
        ??? = localf;
        if (localf != null) {
          continue;
        }
        new c(paramString, paramContext, str).start();
        return null;
      }
    }
  }
  
  public static OutputStream b(String paramString, long paramLong)
  {
    boolean bool = false;
    if ((com.estrongs.a.a.getCurrentTask() instanceof r)) {
      bool = ((r)com.estrongs.a.a.getCurrentTask()).g();
    }
    return a(paramString, paramLong, bool);
  }
  
  public static Object b(String paramString1, String paramString2)
  {
    paramString2 = a(paramString2);
    if (paramString2 == null) {
      return null;
    }
    if ((paramString2 instanceof PcsFileSystem)) {
      return ((PcsFileSystem)paramString2).c(paramString1);
    }
    return null;
  }
  
  public static Object b(String paramString1, String paramString2, String paramString3)
  {
    paramString3 = a(paramString3);
    if (paramString3 == null) {
      return null;
    }
    if ((paramString3 instanceof PcsFileSystem)) {
      return ((PcsFileSystem)paramString3).d(paramString1, paramString2);
    }
    return null;
  }
  
  public static boolean b(String paramString)
  {
    boolean bool1 = true;
    boolean bool2 = false;
    paramString = ap.cd(paramString);
    Object localObject = ap.ax(paramString);
    if ("yandex".equals(localObject)) {
      paramString = ap.b(ap.as(paramString), ap.av(paramString), ap.aq(paramString));
    }
    try
    {
      paramString = com.estrongs.fs.impl.w.b.a(paramString, null, null, true);
      if (paramString != null) {}
      do
      {
        for (;;)
        {
          return bool1;
          bool1 = false;
        }
        localObject = a((String)localObject);
        bool1 = bool2;
      } while (localObject == null);
      String str1 = ap.as(paramString);
      String str2 = ap.av(paramString);
      p(paramString);
      return ((INetFileSystem)localObject).addServer(str1, str2);
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static boolean b(String paramString, boolean paramBoolean)
  {
    try
    {
      paramString = ap.cd(paramString);
      localObject = ap.ax(paramString);
      if (localObject == null) {
        return false;
      }
      if (((String)localObject).equalsIgnoreCase("yandex")) {
        paramString = ap.b(ap.as(paramString), ap.av(paramString), p(paramString));
      }
    }
    catch (Exception paramString)
    {
      Object localObject;
      paramString.printStackTrace();
      return false;
    }
    try
    {
      paramBoolean = com.estrongs.fs.impl.w.b.d(paramString);
      return paramBoolean;
    }
    catch (Exception paramString) {}
    localObject = a((String)localObject);
    if (localObject != null)
    {
      paramBoolean = ((INetFileSystem)localObject).exists(ap.as(paramString), ap.av(paramString), p(paramString), paramBoolean);
      return paramBoolean;
    }
    return false;
  }
  
  public static NetFileInfo c(String paramString, boolean paramBoolean)
  {
    NetFileInfo localNetFileInfo = null;
    String str = ap.cd(paramString);
    paramString = ap.ax(str);
    if (paramString.equalsIgnoreCase("yandex"))
    {
      paramString = ap.b(ap.as(str), ap.av(str), p(str));
      try
      {
        paramString = com.estrongs.fs.impl.w.b.a(paramString, true);
        if (paramString == null) {
          return null;
        }
        localNetFileInfo = new NetFileInfo();
        if (o != null) {}
        for (name = o;; name = ap.d(b))
        {
          path = b;
          isDirectory = d;
          size = e;
          createdTime = h;
          lastAccessTime = i;
          lastModifiedTime = j;
          readable = k;
          writable = l;
          hidden = m;
          return localNetFileInfo;
        }
        localINetFileSystem = a(paramString);
      }
      catch (Exception paramString)
      {
        return null;
      }
    }
    INetFileSystem localINetFileSystem;
    paramString = localNetFileInfo;
    if (localINetFileSystem != null)
    {
      localNetFileInfo = localINetFileSystem.getFileInfo(ap.as(str), ap.av(str), p(str), paramBoolean);
      paramString = localNetFileInfo;
      if (localNetFileInfo != null)
      {
        path = str;
        paramString = localNetFileInfo;
      }
    }
    return paramString;
  }
  
  public static InputStream c(String paramString, long paramLong)
  {
    paramString = ap.cd(paramString);
    Object localObject = ap.ax(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      paramString = ap.b(ap.as(paramString), ap.av(paramString), p(paramString));
      try
      {
        paramString = com.estrongs.fs.impl.w.b.a(paramString, paramLong, null);
        return paramString;
      }
      catch (Exception paramString)
      {
        return null;
      }
    }
    localObject = a((String)localObject);
    if (localObject == null) {
      return null;
    }
    return ((INetFileSystem)localObject).getFileInputStream(ap.as(paramString), ap.av(paramString), p(paramString), paramLong);
  }
  
  public static String c(String paramString)
  {
    paramString = ap.cd(paramString);
    INetFileSystem localINetFileSystem = a(ap.ax(paramString));
    if (localINetFileSystem == null) {
      return null;
    }
    return localINetFileSystem.createShare(ap.as(paramString), ap.av(paramString), ap.aq(paramString), null);
  }
  
  public static boolean c(String paramString1, String paramString2)
  {
    boolean bool = false;
    paramString1 = ap.cd(paramString1);
    paramString2 = ap.cd(paramString2);
    Object localObject = ap.ax(paramString1);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      localObject = ap.as(paramString1);
      String str = ap.av(paramString1);
      paramString1 = p(paramString1);
      paramString2 = p(paramString2);
      paramString1 = ap.b((String)localObject, str, paramString1);
      paramString2 = ap.b((String)localObject, str, paramString2);
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.w.b.a(paramString1, paramString2);
        return bool;
      }
      catch (Exception paramString1) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).renameFile(ap.as(paramString1), ap.av(paramString1), p(paramString1), p(paramString2));
      }
    }
    return false;
  }
  
  private static INetFileSystem d(Context paramContext, String paramString)
  {
    INetFileSystem localINetFileSystem = (INetFileSystem)d.get(paramString);
    String str = (String)e.get(paramString);
    if (str == null) {
      ??? = null;
    }
    do
    {
      return (INetFileSystem)???;
      ??? = localINetFileSystem;
    } while (localINetFileSystem != null);
    paramContext = g.a(paramContext, paramString, null);
    if (paramContext != null) {
      paramContext = (INetFileSystem)g.a(paramContext, str, null);
    }
    for (;;)
    {
      ??? = paramContext;
      if (paramContext == null) {
        break;
      }
      synchronized (d)
      {
        d.put(paramString, paramContext);
        paramContext.setConfigDir(b, c);
        return paramContext;
        paramContext = localINetFileSystem;
        if (!paramString.equals("pcs")) {
          continue;
        }
        paramContext = new PcsFileSystem();
      }
    }
  }
  
  public static a d(String paramString, boolean paramBoolean)
  {
    try
    {
      paramString = c(ap.cd(paramString), paramBoolean);
      if (paramString == null) {
        return null;
      }
      paramString = new a(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static boolean d(String paramString)
  {
    paramString = ap.cd(paramString);
    INetFileSystem localINetFileSystem = a(ap.ax(paramString));
    if (localINetFileSystem == null) {
      return false;
    }
    return localINetFileSystem.removeShare(ap.as(paramString), ap.av(paramString), ap.aq(paramString), null);
  }
  
  public static boolean d(String paramString1, String paramString2)
  {
    boolean bool = false;
    paramString1 = ap.cd(paramString1);
    paramString2 = ap.cd(paramString2);
    Object localObject = ap.ax(paramString1);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      localObject = ap.as(paramString1);
      String str = ap.av(paramString1);
      paramString1 = p(paramString1);
      paramString2 = p(paramString2);
      paramString1 = ap.b((String)localObject, str, paramString1);
      paramString2 = ap.b((String)localObject, str, paramString2);
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.w.b.a(null, paramString1, paramString2);
        return bool;
      }
      catch (Exception paramString1) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).copyFile(ap.as(paramString1), ap.av(paramString1), p(paramString1), p(paramString2));
      }
    }
    return false;
  }
  
  public static boolean e(String paramString)
  {
    return b(paramString, false);
  }
  
  public static boolean e(String paramString1, String paramString2)
  {
    boolean bool = false;
    paramString1 = ap.cd(paramString1);
    paramString2 = ap.cd(paramString2);
    Object localObject = ap.ax(paramString1);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      localObject = ap.as(paramString1);
      String str = ap.av(paramString1);
      paramString1 = p(paramString1);
      paramString2 = p(paramString2);
      paramString1 = ap.b((String)localObject, str, paramString1);
      paramString2 = ap.b((String)localObject, str, paramString2);
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.w.b.b(paramString1, paramString2);
        return bool;
      }
      catch (Exception paramString1) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).moveFile(ap.as(paramString1), ap.av(paramString1), p(paramString1), p(paramString2));
      }
    }
    return false;
  }
  
  public static NetFileInfo f(String paramString)
  {
    return c(paramString, false);
  }
  
  public static String f(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = a(paramString1);
      if (paramString1 == null) {
        return null;
      }
      paramString1 = paramString1.getUserLoginName(paramString2);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  public static com.estrongs.fs.c g(String paramString)
  {
    Object localObject = null;
    paramString = ap.cd(paramString);
    if (ap.ax(paramString).equalsIgnoreCase("yandex")) {
      paramString = ap.b(ap.as(paramString), ap.av(paramString), p(paramString));
    }
    for (;;)
    {
      try
      {
        paramString = com.estrongs.fs.impl.w.b.a(paramString, true);
        return paramString;
      }
      catch (Exception paramString) {}
      NetFileInfo localNetFileInfo = f(paramString);
      paramString = (String)localObject;
      if (localNetFileInfo != null) {
        return a(localNetFileInfo);
      }
    }
    return null;
  }
  
  public static long h(String paramString)
  {
    paramString = g(ap.cd(paramString));
    if (paramString == null) {
      return 0L;
    }
    return e;
  }
  
  public static boolean i(String paramString)
  {
    return a(ap.cd(paramString), true);
  }
  
  public static boolean j(String paramString)
  {
    boolean bool = false;
    paramString = ap.cd(paramString);
    Object localObject = ap.ax(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex")) {
      paramString = ap.b(ap.as(paramString), ap.av(paramString), p(paramString));
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.w.b.c(paramString);
        return bool;
      }
      catch (Exception paramString) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).isDir(ap.as(paramString), ap.av(paramString), p(paramString));
      }
    }
    return false;
  }
  
  public static long[] k(String paramString)
  {
    paramString = ap.cd(paramString);
    INetFileSystem localINetFileSystem = a(ap.ax(paramString));
    if (localINetFileSystem == null) {
      return null;
    }
    if ((localINetFileSystem instanceof PcsFileSystem)) {
      return ((PcsFileSystem)localINetFileSystem).a(ap.as(paramString), ap.av(paramString));
    }
    return null;
  }
  
  public static InputStream l(String paramString)
  {
    try
    {
      paramString = ap.cd(paramString);
      Object localObject = ap.ax(paramString);
      if (((String)localObject).equalsIgnoreCase("yandex")) {
        return null;
      }
      localObject = a((String)localObject);
      if (localObject != null)
      {
        paramString = ((INetFileSystem)localObject).getThumbnail(ap.as(paramString), ap.av(paramString), p(paramString));
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static void m(String paramString)
  {
    try
    {
      Object localObject = ap.ax(paramString);
      if ((((String)localObject).equalsIgnoreCase("s3")) && (p(paramString).length() >= 2)) {
        return;
      }
      if (!((String)localObject).equalsIgnoreCase("yandex"))
      {
        localObject = a((String)localObject);
        if (localObject != null)
        {
          ((INetFileSystem)localObject).delServer(ap.as(paramString), ap.av(paramString));
          return;
        }
      }
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static String n(String paramString)
  {
    try
    {
      INetFileSystem localINetFileSystem = a(paramString);
      if (localINetFileSystem == null) {
        return null;
      }
      String str;
      if (paramString.equalsIgnoreCase("onedrive"))
      {
        str = com.estrongs.android.pop.esclasses.i.a;
        if (str != null)
        {
          if (!str.equalsIgnoreCase("cn")) {
            break label58;
          }
          paramString = "zh_cn";
        }
      }
      for (;;)
      {
        localINetFileSystem.setPrivateContent(null, null, paramString);
        return localINetFileSystem.getOAuthLoginUrl();
        label58:
        paramString = str;
        if (str.equalsIgnoreCase("tw")) {
          paramString = "zh_tw";
        }
      }
      return null;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static boolean o(String paramString)
  {
    paramString = ap.cd(paramString);
    if (ap.aL(paramString)) {}
    do
    {
      return true;
      paramString = ap.ax(paramString);
    } while ((paramString != null) && (("dropbox".equals(paramString)) || ("onedrive".equals(paramString)) || ("gdrive".equals(paramString)) || ("box".equals(paramString))));
    return false;
  }
  
  private static String p(String paramString)
  {
    String str = ap.aq(paramString);
    paramString = str;
    if (str == null) {
      paramString = null;
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.o.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */