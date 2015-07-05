package com.estrongs.fs.impl.j;

import android.content.Context;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.NetFsException.ERROR_CODE;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.r;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.fs.impl.pcs.PcsFileSystem.PcsFileSystemException;
import com.estrongs.fs.m;
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
    e.put("kanbox", "com.estrongs.android.pop.netfs.KanboxFileSystem");
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
    paramString = am.bM(paramString);
    Object localObject = am.an(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      paramString = am.b(am.ai(paramString), am.al(paramString), p(paramString));
      try
      {
        paramString = com.estrongs.fs.impl.r.b.a(paramString, paramLong);
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
    return ((INetFileSystem)localObject).getFileOutputStream(am.ai(paramString), am.al(paramString), p(paramString), paramLong, paramBoolean);
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
    Object localObject = am.bM(paramString1);
    paramString1 = am.ai((String)localObject);
    String str = am.al((String)localObject);
    localObject = a(am.an((String)localObject));
    if (localObject == null) {
      return null;
    }
    if ((localObject instanceof PcsFileSystem)) {
      return ((PcsFileSystem)localObject).a(paramString1, str, paramString2, paramString3, paramString4);
    }
    return null;
  }
  
  public static List<com.estrongs.fs.h> a(Context paramContext, String paramString, boolean paramBoolean, i parami, TypedMap paramTypedMap)
  {
    String str5 = am.bM(paramString);
    String str1 = am.ai(str5);
    String str2 = am.al(str5);
    String str6 = p(str5);
    String str3 = am.an(str5);
    if ((str1 == null) || (str2 == null) || (str6 == null)) {
      throw new NetFsException("MalFormed URL", NetFsException.ERROR_CODE.NETFS_ERROR_MALFORMED_URL);
    }
    String str4 = am.an(str5);
    com.estrongs.android.util.a locala = com.estrongs.android.util.a.a();
    Object localObject = null;
    paramString = null;
    if (str4.equals("dropbox"))
    {
      localObject = "Dropbox_List";
      paramString = "Dropbox_UV";
      if ((localObject != null) && (locala != null))
      {
        locala.c((String)localObject, (String)localObject);
        locala.e(paramString, paramString);
      }
      if (!str3.equalsIgnoreCase("yandex")) {
        break label363;
      }
      paramContext = am.b(str1, str2, str6);
    }
    for (;;)
    {
      try
      {
        paramContext = com.estrongs.fs.impl.r.b.a(paramContext, parami, null, true);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        return null;
      }
      if (str4.equals("kuaipan"))
      {
        localObject = "快盘_List";
        paramString = "快盘_UV";
        break;
      }
      if (str4.equals("kanbox"))
      {
        localObject = "酷盘_List";
        paramString = "酷盘_UV";
        break;
      }
      if (str4.equals("vdisk"))
      {
        localObject = "新浪微盘_List";
        paramString = "新浪微盘_UV";
        break;
      }
      if (str4.equals("box"))
      {
        localObject = "Box_List";
        paramString = "Box_UV";
        break;
      }
      if (str4.equals("sugarsync"))
      {
        localObject = "Sugarsync_List";
        paramString = "Sugarsync_UV";
        break;
      }
      if (str4.equals("onedrive"))
      {
        localObject = "Skydrive_List";
        paramString = "Skydrive_UV";
        break;
      }
      if (str4.equals("gdrive"))
      {
        localObject = "Gdrive_List";
        paramString = "Gdrive_UV";
        break;
      }
      if (str4.equals("s3"))
      {
        localObject = "S3_List";
        paramString = "S3_UV";
        break;
      }
      if (str4.equals("yandex"))
      {
        localObject = "Yandex_List";
        paramString = "Yandex_UV";
        break;
      }
      if (!str4.equals("megacloud")) {
        break;
      }
      localObject = "Megacloud_List";
      paramString = "Megacloud_UV";
      break;
      label363:
      paramString = d(paramContext, str3);
      if (paramString == null) {
        return null;
      }
      try
      {
        localObject = new d();
        ((d)localObject).a(str5);
        if ((str6.equals("/")) && (str3.equals("sugarsync"))) {
          paramString.setPrivateContent(str1, str2, new String[] { "/" + (String)paramContext.getText(2131428271), "/" + (String)paramContext.getText(2131427614), "/" + (String)paramContext.getText(2131427615), "/" + (String)paramContext.getText(2131427616), "/" + (String)paramContext.getText(2131427617) });
        }
        paramContext = paramString.listFiles(str1, str2, str6, paramBoolean, (INetRefreshCallback)localObject, paramTypedMap);
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
              path = am.a(str3, str1, str2, path);
              localObject = new a(paramTypedMap);
              if (((str4.equals("pcs")) || (str4.equals("gdrive")) || (str4.equals("box"))) && ((String)paramTypedMap.getExtra("public_share_link") != null)) {
                ((a)localObject).putExtra("public_share_link", paramTypedMap.getExtra("public_share_link"));
              }
              if ((String)paramTypedMap.getExtra("web_file_url") != null) {
                ((a)localObject).putExtra("web_file_url", paramTypedMap.getExtra("web_file_url"));
              }
              if ((String)paramTypedMap.getExtra("mime_type") != null) {
                ((a)localObject).putExtra("mime_type", paramTypedMap.getExtra("mime_type"));
              }
              if ((String)paramTypedMap.getExtra("intent_file_url") != null) {
                ((a)localObject).putExtra("intent_file_url", paramTypedMap.getExtra("intent_file_url"));
              }
              if (parami.a((com.estrongs.fs.h)localObject))
              {
                if (isDirectory) {
                  switch (folder_type)
                  {
                  }
                }
                for (;;)
                {
                  paramContext.add(localObject);
                  break;
                  ((a)localObject).setFileType(m.p);
                  continue;
                  if (str3.equals("pcs"))
                  {
                    ((a)localObject).setFileType(m.E);
                  }
                  else
                  {
                    ((a)localObject).setFileType(m.D);
                    continue;
                    ((a)localObject).setFileType(m.o);
                    continue;
                    ((a)localObject).setFileType(m.o);
                    continue;
                    ((a)localObject).setFileType(m.D);
                    continue;
                    ((a)localObject).setFileType(m.G);
                    continue;
                    ((a)localObject).setFileType(m.D);
                    continue;
                    ((a)localObject).setFileType(m.F);
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
    paramString = am.an(am.bM(paramString));
    if ((bd.b(paramString)) && (paramString.equalsIgnoreCase("yandex"))) {}
    do
    {
      return false;
      paramContext = d(paramContext, paramString);
    } while ((paramContext == null) || (!paramContext.isPagingSupported()));
    return true;
  }
  
  public static boolean a(com.estrongs.fs.h paramh, String paramString)
  {
    int i = am.G(paramh.getAbsolutePath());
    if ((i != 0) && (i != 34)) {
      return false;
    }
    paramString = am.bM(paramString);
    INetFileSystem localINetFileSystem = a(am.an(paramString));
    if ((localINetFileSystem instanceof PcsFileSystem)) {
      return ((PcsFileSystem)localINetFileSystem).a(am.ai(paramString), am.al(paramString), paramh, p(paramString));
    }
    return false;
  }
  
  public static boolean a(String paramString, long paramLong)
  {
    boolean bool = false;
    paramString = am.bM(paramString);
    Object localObject = am.an(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex")) {
      paramString = am.b(am.ai(paramString), am.al(paramString), p(paramString));
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.r.b.a(null, paramString, null);
        return bool;
      }
      catch (Exception paramString) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).deleteFile(am.ai(paramString), am.al(paramString), p(paramString));
      }
    }
    return false;
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool = false;
    paramString = am.bM(paramString);
    Object localObject = am.an(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex")) {
      paramString = am.b(am.ai(paramString), am.al(paramString), p(paramString));
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.r.b.b(paramString, paramBoolean);
        return bool;
      }
      catch (Exception paramString) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).createFile(am.ai(paramString), am.al(paramString), p(paramString), paramBoolean);
      }
    }
    return false;
  }
  
  public static f b(Context paramContext, String paramString)
  {
    String str = am.ak(paramString);
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
    paramString = am.bM(paramString);
    Object localObject = am.an(paramString);
    if ("yandex".equals(localObject)) {
      paramString = am.b(am.ai(paramString), am.al(paramString), am.ag(paramString));
    }
    try
    {
      paramString = com.estrongs.fs.impl.r.b.a(paramString, null, null, true);
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
      String str1 = am.ai(paramString);
      String str2 = am.al(paramString);
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
      paramString = am.bM(paramString);
      localObject = am.an(paramString);
      if (localObject == null) {
        return false;
      }
      if (((String)localObject).equalsIgnoreCase("yandex")) {
        paramString = am.b(am.ai(paramString), am.al(paramString), p(paramString));
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
      paramBoolean = com.estrongs.fs.impl.r.b.d(paramString);
      return paramBoolean;
    }
    catch (Exception paramString) {}
    localObject = a((String)localObject);
    if (localObject != null)
    {
      paramBoolean = ((INetFileSystem)localObject).exists(am.ai(paramString), am.al(paramString), p(paramString), paramBoolean);
      return paramBoolean;
    }
    return false;
  }
  
  public static NetFileInfo c(String paramString, boolean paramBoolean)
  {
    NetFileInfo localNetFileInfo = null;
    String str = am.bM(paramString);
    paramString = am.an(str);
    if (paramString.equalsIgnoreCase("yandex"))
    {
      paramString = am.b(am.ai(str), am.al(str), p(str));
      try
      {
        paramString = com.estrongs.fs.impl.r.b.a(paramString, true);
        if (paramString == null) {
          return null;
        }
        localNetFileInfo = new NetFileInfo();
        if (o != null) {}
        for (name = o;; name = am.d(b))
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
      localNetFileInfo = localINetFileSystem.getFileInfo(am.ai(str), am.al(str), p(str), paramBoolean);
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
    paramString = am.bM(paramString);
    Object localObject = am.an(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      paramString = am.b(am.ai(paramString), am.al(paramString), p(paramString));
      try
      {
        paramString = com.estrongs.fs.impl.r.b.a(paramString, paramLong, null);
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
    return ((INetFileSystem)localObject).getFileInputStream(am.ai(paramString), am.al(paramString), p(paramString), paramLong);
  }
  
  public static String c(String paramString)
  {
    paramString = am.bM(paramString);
    INetFileSystem localINetFileSystem = a(am.an(paramString));
    if (localINetFileSystem == null) {
      return null;
    }
    return localINetFileSystem.createShare(am.ai(paramString), am.al(paramString), am.ag(paramString), null);
  }
  
  public static boolean c(String paramString1, String paramString2)
  {
    boolean bool = false;
    paramString1 = am.bM(paramString1);
    paramString2 = am.bM(paramString2);
    Object localObject = am.an(paramString1);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      localObject = am.ai(paramString1);
      String str = am.al(paramString1);
      paramString1 = p(paramString1);
      paramString2 = p(paramString2);
      paramString1 = am.b((String)localObject, str, paramString1);
      paramString2 = am.b((String)localObject, str, paramString2);
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.r.b.a(paramString1, paramString2);
        return bool;
      }
      catch (Exception paramString1) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).renameFile(am.ai(paramString1), am.al(paramString1), p(paramString1), p(paramString2));
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
    paramContext = com.estrongs.android.util.h.a(paramContext, paramString, null);
    if (paramContext != null) {
      paramContext = (INetFileSystem)com.estrongs.android.util.h.a(paramContext, str, null);
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
      paramString = c(am.bM(paramString), paramBoolean);
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
    paramString = am.bM(paramString);
    INetFileSystem localINetFileSystem = a(am.an(paramString));
    if (localINetFileSystem == null) {
      return false;
    }
    return localINetFileSystem.removeShare(am.ai(paramString), am.al(paramString), am.ag(paramString), null);
  }
  
  public static boolean d(String paramString1, String paramString2)
  {
    boolean bool = false;
    paramString1 = am.bM(paramString1);
    paramString2 = am.bM(paramString2);
    Object localObject = am.an(paramString1);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      localObject = am.ai(paramString1);
      String str = am.al(paramString1);
      paramString1 = p(paramString1);
      paramString2 = p(paramString2);
      paramString1 = am.b((String)localObject, str, paramString1);
      paramString2 = am.b((String)localObject, str, paramString2);
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.r.b.a(null, paramString1, paramString2);
        return bool;
      }
      catch (Exception paramString1) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).copyFile(am.ai(paramString1), am.al(paramString1), p(paramString1), p(paramString2));
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
    paramString1 = am.bM(paramString1);
    paramString2 = am.bM(paramString2);
    Object localObject = am.an(paramString1);
    if (((String)localObject).equalsIgnoreCase("yandex"))
    {
      localObject = am.ai(paramString1);
      String str = am.al(paramString1);
      paramString1 = p(paramString1);
      paramString2 = p(paramString2);
      paramString1 = am.b((String)localObject, str, paramString1);
      paramString2 = am.b((String)localObject, str, paramString2);
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.r.b.b(paramString1, paramString2);
        return bool;
      }
      catch (Exception paramString1) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).moveFile(am.ai(paramString1), am.al(paramString1), p(paramString1), p(paramString2));
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
    paramString = am.bM(paramString);
    if (am.an(paramString).equalsIgnoreCase("yandex")) {
      paramString = am.b(am.ai(paramString), am.al(paramString), p(paramString));
    }
    for (;;)
    {
      try
      {
        paramString = com.estrongs.fs.impl.r.b.a(paramString, true);
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
    paramString = g(am.bM(paramString));
    if (paramString == null) {
      return 0L;
    }
    return e;
  }
  
  public static boolean i(String paramString)
  {
    return a(am.bM(paramString), true);
  }
  
  public static boolean j(String paramString)
  {
    boolean bool = false;
    paramString = am.bM(paramString);
    Object localObject = am.an(paramString);
    if (((String)localObject).equalsIgnoreCase("yandex")) {
      paramString = am.b(am.ai(paramString), am.al(paramString), p(paramString));
    }
    for (;;)
    {
      try
      {
        bool = com.estrongs.fs.impl.r.b.c(paramString);
        return bool;
      }
      catch (Exception paramString) {}
      localObject = a((String)localObject);
      if (localObject != null) {
        return ((INetFileSystem)localObject).isDir(am.ai(paramString), am.al(paramString), p(paramString));
      }
    }
    return false;
  }
  
  public static long[] k(String paramString)
  {
    paramString = am.bM(paramString);
    INetFileSystem localINetFileSystem = a(am.an(paramString));
    if (localINetFileSystem == null) {
      return null;
    }
    if ((localINetFileSystem instanceof PcsFileSystem)) {
      return ((PcsFileSystem)localINetFileSystem).a(am.ai(paramString), am.al(paramString));
    }
    return null;
  }
  
  public static InputStream l(String paramString)
  {
    try
    {
      paramString = am.bM(paramString);
      Object localObject = am.an(paramString);
      if (((String)localObject).equalsIgnoreCase("yandex")) {
        return null;
      }
      localObject = a((String)localObject);
      if (localObject != null)
      {
        paramString = ((INetFileSystem)localObject).getThumbnail(am.ai(paramString), am.al(paramString), p(paramString));
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
      Object localObject = am.an(paramString);
      if ((((String)localObject).equalsIgnoreCase("s3")) && (p(paramString).length() >= 2)) {
        return;
      }
      if (!((String)localObject).equalsIgnoreCase("yandex"))
      {
        localObject = a((String)localObject);
        if (localObject != null)
        {
          ((INetFileSystem)localObject).delServer(am.ai(paramString), am.al(paramString));
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
    for (;;)
    {
      try
      {
        INetFileSystem localINetFileSystem = a(paramString);
        if (localINetFileSystem == null) {
          return null;
        }
        if (paramString.equalsIgnoreCase("onedrive"))
        {
          String str = e.a;
          if (str != null)
          {
            if (str.equalsIgnoreCase("cn"))
            {
              paramString = "zh_cn";
              localINetFileSystem.setPrivateContent(null, null, paramString);
            }
          }
          else {
            return localINetFileSystem.getOAuthLoginUrl();
          }
          paramString = str;
          if (!str.equalsIgnoreCase("tw")) {
            continue;
          }
          paramString = "zh_tw";
          continue;
        }
        if (paramString.equalsIgnoreCase("kanbox"))
        {
          paramString = e.a;
          if (paramString != null) {
            if (paramString.equalsIgnoreCase("cn"))
            {
              paramString = "zh";
              localINetFileSystem.setPrivateContent(null, null, paramString);
            }
            else
            {
              paramString = "en";
            }
          }
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return null;
      }
    }
  }
  
  public static boolean o(String paramString)
  {
    paramString = am.bM(paramString);
    if (am.aB(paramString)) {}
    do
    {
      return true;
      paramString = am.an(paramString);
    } while ((paramString != null) && (("dropbox".equals(paramString)) || ("onedrive".equals(paramString)) || ("gdrive".equals(paramString)) || ("box".equals(paramString))));
    return false;
  }
  
  private static String p(String paramString)
  {
    String str = am.ag(paramString);
    paramString = str;
    if (str == null) {
      paramString = null;
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.j.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */