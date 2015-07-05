package com.estrongs.fs;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.estrongs.a.b.s;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.NetFsException.ERROR_CODE;
import com.estrongs.android.pop.spfs.SPFileSystem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.y;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aj;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ar;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.fs.impl.pcs.PcsFileSystem.PcsFileSystemException;
import com.estrongs.fs.util.j;
import com.estrongs.old.fs.impl.sftp.OldSFtpFileSystem;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class d
{
  private static HashMap<String, k> a = new HashMap();
  private static HashMap<String, String> b = new HashMap();
  private static d c;
  private static HashMap<String, com.estrongs.old.fs.a> f = new HashMap();
  private Context d = null;
  private Boolean e = null;
  
  private d(Context paramContext)
  {
    d = paramContext;
  }
  
  public static d a()
  {
    return a(null);
  }
  
  public static d a(Context paramContext)
  {
    if (c == null) {
      c = new d(FexApplication.a());
    }
    return c;
  }
  
  private String a(NetFsException.ERROR_CODE paramERROR_CODE)
  {
    String str = null;
    if (paramERROR_CODE == NetFsException.ERROR_CODE.NETFS_ERROR_OPERATION_NOT_SUPPORT) {
      str = d.getString(2131428093);
    }
    return str;
  }
  
  private void a(String paramString, h paramh, boolean paramBoolean)
  {
    if ((paramString == null) || (paramh == null)) {}
    com.estrongs.old.fs.a locala;
    do
    {
      return;
      switch (am.G(paramString))
      {
      default: 
        return;
      }
      try
      {
        com.estrongs.fs.impl.local.h.a(paramString, paramh, paramBoolean);
        return;
      }
      catch (Exception paramString) {}
      com.estrongs.fs.impl.p.b.a(paramString, paramh);
      return;
      locala = n(am.by(paramString));
    } while (locala == null);
    locala.a(paramString, paramh);
    return;
  }
  
  public static void a(String paramString, k paramk)
  {
    if (paramk != null) {}
    try
    {
      a.put(paramString, paramk);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private void a(List<h> paramList, String paramString, i parami, boolean paramBoolean1, boolean paramBoolean2)
  {
    label21:
    Object localObject;
    if ((am.ba(paramString)) && (am.a(new File(paramString))))
    {
      return;
    }
    else
    {
      do
      {
        localObject = a(new n(paramString), true, false, null, com.estrongs.a.b.o.a);
      } while (localObject == null);
      if ((localObject == null) || (((List)localObject).size() <= 0)) {
        break label264;
      }
    }
    label82:
    label264:
    for (paramString = new aj(paramString, Integer.MAX_VALUE);; paramString = null)
    {
      localObject = ((List)localObject).iterator();
      if (!((Iterator)localObject).hasNext()) {
        break label21;
      }
      h localh = (h)((Iterator)localObject).next();
      com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
      if ((locala != null) && (locala.taskStopped())) {
        break label21;
      }
      if (locala != null) {
        locala.sendMessage(1, new Object[] { Long.valueOf(1L), localh.getAbsolutePath() });
      }
      if ((!paramString.a(localh)) || ((paramBoolean2) && (localh.getName().startsWith(".")))) {
        break;
      }
      if ((localh.getFileType().a()) && (paramBoolean1)) {}
      try
      {
        a(paramList, localh.getAbsolutePath(), parami, paramBoolean1, paramBoolean2);
        if ((locala != null) && (locala.taskStopped())) {
          break label21;
        }
        if ((parami != null) && (!parami.a(localh))) {
          break label82;
        }
        paramList.add(localh);
      }
      catch (StackOverflowError paramList)
      {
        paramList.printStackTrace();
        return;
      }
    }
  }
  
  private boolean a(String paramString1, String paramString2, long paramLong, int paramInt1, int paramInt2)
  {
    if (e == null) {
      e = Boolean.valueOf(ad.a(FexApplication.a()).aP());
    }
    if (!e.booleanValue()) {}
    for (;;)
    {
      return false;
      if ((paramLong > (paramInt2 - 1) * paramInt1) && (!am.aV(paramString1)) && ((!am.ba(paramString1)) || (!am.ba(paramString2))) && (p(paramString2)))
      {
        if (am.t(paramString1)) {
          return com.estrongs.fs.impl.h.b.h(paramString1);
        }
        if ((!am.J(paramString1)) && (!am.p(paramString1))) {}
      }
      try
      {
        paramString2 = n(am.by(paramString1));
        if (paramString2 != null)
        {
          boolean bool = paramString2.k(paramString1);
          return bool;
        }
      }
      catch (Exception paramString1) {}
    }
    return true;
    return false;
  }
  
  private List<h> b(h paramh, boolean paramBoolean1, boolean paramBoolean2, i parami, com.estrongs.a.b.o<String> paramo, TypedMap paramTypedMap)
  {
    if (paramh == null)
    {
      parami = null;
      return parami;
    }
    Object localObject1 = paramh.getPath();
    if (localObject1 == null) {
      return null;
    }
    if ((((String)localObject1).contains("net://")) && (((String)localObject1).contains("@baidu"))) {
      throw new FileSystemException("baidu-up-to-pcs");
    }
    Object localObject2 = localObject1;
    if (!((String)localObject1).endsWith("/")) {
      localObject2 = (String)localObject1 + "/";
    }
    if (parami == null) {}
    for (localObject1 = i.c;; localObject1 = parami)
    {
      parami = com.estrongs.fs.a.b.a().f((String)localObject2);
      paramTypedMap.remove("cacheStatus");
      if ((!paramBoolean1) && (parami != null) && (com.estrongs.fs.a.b.a().e((String)localObject2)))
      {
        if (a) {
          paramTypedMap.put("cacheStatus", Integer.valueOf(1));
        }
        for (;;)
        {
          paramTypedMap.put("get_data_from_cache", Boolean.valueOf(true));
          return parami.a();
          paramTypedMap.put("cacheStatus", Integer.valueOf(2));
        }
      }
      paramTypedMap.put("get_data_from_cache", Boolean.valueOf(false));
      if (am.bg((String)localObject2))
      {
        paramh = com.estrongs.fs.impl.m.a.a(d, (String)localObject2);
        if ((am.J((String)localObject2)) || (am.p((String)localObject2)) || (am.I((String)localObject2)) || (am.n((String)localObject2)) || (am.o((String)localObject2)) || (am.K((String)localObject2))) {
          paramBoolean2 = false;
        }
        if (paramBoolean2) {
          com.estrongs.fs.a.b.a().a((String)localObject2, paramh, false);
        }
        parami = paramh;
        if (!am.aZ((String)localObject2)) {
          break;
        }
        com.estrongs.fs.impl.c.a.a(paramh);
        return paramh;
      }
      if ("externalstorage://".equals(localObject2))
      {
        parami = am.a();
        paramh = new ArrayList();
        parami = parami.iterator();
        while (parami.hasNext()) {
          paramh.add(new com.estrongs.fs.impl.local.f(new File((String)parami.next())));
        }
        return paramh;
      }
      boolean bool;
      label424:
      int i;
      if ((paramTypedMap.getInt("page", -1L) >= 2) || (paramTypedMap.getInt("offset", -1L) > 0))
      {
        bool = true;
        parami = com.estrongs.android.util.a.a();
        i = am.G((String)localObject2);
      }
      Object localObject3;
      switch (i)
      {
      case 6: 
      case 7: 
      case 8: 
      case 9: 
      case 10: 
      case 11: 
      case 15: 
      case 16: 
      case 17: 
      case 24: 
      case 25: 
      case 26: 
      case 27: 
      case 28: 
      case 29: 
      case 30: 
      case 32: 
      default: 
        paramo = am.by((String)localObject2);
        localObject3 = o(paramo);
        if (localObject3 != null) {
          if ((localObject3 instanceof com.estrongs.fs.impl.g.a))
          {
            paramh = ((com.estrongs.fs.impl.g.a)localObject3).a(paramh, paramTypedMap);
            parami = paramh;
            if (am.by("app://").equals(paramo)) {
              break;
            }
            parami = paramh;
            if (am.by("book://").equals(paramo)) {
              break;
            }
            parami = paramh;
            if (am.by("apk://").equals(paramo)) {
              break;
            }
            parami = paramh;
            if (am.by("storage://").equals(paramo)) {
              break;
            }
          }
        }
      case 0: 
      case 1: 
      case 33: 
      case 21: 
      case 22: 
      case 2: 
      case 5: 
      case 19: 
      case 20: 
      case 12: 
      case 13: 
      case 14: 
      case 3: 
      case 4: 
      case 23: 
      case 18: 
      case 31: 
        label696:
        label1873:
        label1876:
        for (;;)
        {
          if ((paramBoolean2) && (paramh != null) && ((!am.ba((String)localObject2)) || (am.bl((String)localObject2))) && (!am.aW((String)localObject2))) {
            com.estrongs.fs.a.b.a().a((String)localObject2, paramh, bool);
          }
          parami = paramh;
          if (!paramTypedMap.containsKey("offset")) {
            break;
          }
          paramo = com.estrongs.fs.a.b.a().f((String)localObject2);
          parami = paramh;
          if (paramo == null) {
            break;
          }
          if (paramTypedMap.getBoolean("loadFinished"))
          {
            a = true;
            return paramh;
            bool = false;
            break label424;
            paramh = com.estrongs.fs.impl.local.h.a((String)localObject2, (i)localObject1, paramo, paramTypedMap);
            continue;
            if (parami != null) {
              parami.c("SMB_List", "SMB_List");
            }
            paramh = com.estrongs.fs.impl.p.b.a((String)localObject2, (i)localObject1, paramo);
            continue;
            paramh = com.estrongs.fs.impl.usb.e.a((String)localObject2, (i)localObject1, paramo);
            continue;
            if (parami != null) {
              parami.c("WEBDAV_List", "WEBDAV_List");
            }
            paramh = com.estrongs.fs.impl.r.b.a((String)localObject2, (i)localObject1, paramo);
            continue;
            paramh = null;
            if (i == 2) {
              paramh = "FTP_List";
            }
            for (;;)
            {
              if ((parami != null) && (paramh != null)) {
                parami.c(paramh, paramh);
              }
              paramh = n(am.by((String)localObject2));
              if (paramh != null) {
                break;
              }
              throw new FsProviderNotFoundException(am.by((String)localObject2), com.estrongs.android.pop.b.a.a(am.by((String)localObject2)));
              if (i == 5) {
                paramh = "SFTP_List";
              } else if ((i == 19) || (20 == i)) {
                paramh = "FTPS_List";
              }
            }
            parami = new TypedMap();
            parami.put("server", am.h((String)localObject2));
            i = ad.a(FexApplication.a()).n((String)localObject2);
            if ((am.J((String)localObject2)) && (ad.a(FexApplication.a()).f((String)localObject2))) {
              parami.put("mode", Boolean.valueOf(ad.a(FexApplication.a()).m((String)localObject2)));
            }
            for (;;)
            {
              parami.put("encode", com.estrongs.android.util.f.a(i));
              paramh.a(parami);
              paramh = paramh.a((String)localObject2, (i)localObject1);
              break;
              if (am.I((String)localObject2))
              {
                paramo = ad.a(FexApplication.a()).q((String)localObject2);
                if (bd.b(paramo)) {
                  parami.put("privatekey", paramo);
                }
                paramo = ad.a(FexApplication.a()).r((String)localObject2);
                if (bd.b(paramo)) {
                  parami.put("privatekey_passphrases", paramo);
                }
              }
            }
            return com.estrongs.fs.impl.i.b.c().a(d, (String)localObject2, (i)localObject1, paramo, paramTypedMap);
            return com.estrongs.fs.impl.k.b.c().a(d, (String)localObject2, (i)localObject1, paramo, paramTypedMap);
            return com.estrongs.fs.impl.q.b.c().a(d, (String)localObject2, (i)localObject1, paramo, paramTypedMap);
            if (parami != null) {
              parami.c("Bluetooth_List", "Bluetooth_List");
            }
            paramh = com.estrongs.fs.impl.c.a.a((String)localObject2, (i)localObject1, paramo);
            continue;
          }
          for (;;)
          {
            try
            {
              paramh = com.estrongs.fs.impl.j.b.a(d, am.bM((String)localObject2), true, (i)localObject1, paramTypedMap);
              if ((am.az((String)localObject2)) && (paramh != null))
              {
                paramBoolean1 = ((String)localObject2).endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/");
                Iterator localIterator = paramh.iterator();
                if (localIterator.hasNext())
                {
                  com.estrongs.fs.impl.j.a locala = (com.estrongs.fs.impl.j.a)localIterator.next();
                  localObject3 = (String)localObject2 + locala.getName();
                  parami = null;
                  i = absolutePath.indexOf("/>");
                  if (i != -1) {
                    parami = (String)localObject2 + absolutePath.substring(i + 1);
                  }
                  paramo = (com.estrongs.a.b.o<String>)localObject3;
                  localObject1 = parami;
                  if (paramBoolean1)
                  {
                    localObject3 = ((String)localObject3).replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files");
                    paramo = (com.estrongs.a.b.o<String>)localObject3;
                    localObject1 = parami;
                    if (parami != null)
                    {
                      localObject1 = parami.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files");
                      paramo = (com.estrongs.a.b.o<String>)localObject3;
                    }
                  }
                  locala.a(paramo);
                  if (localObject1 == null)
                  {
                    locala.b(paramo);
                    locala.putExtra("user_info", com.estrongs.android.ui.pcs.r.a().e());
                    continue;
                  }
                }
              }
            }
            catch (PcsFileSystem.PcsFileSystemException paramh)
            {
              throw new FileSystemException(paramh);
              paramo = (com.estrongs.a.b.o<String>)localObject1;
              continue;
              if (!((String)localObject2).endsWith("@pcs/files/apps/Downloads/")) {
                break label1876;
              }
              parami = (PcsFileSystem)com.estrongs.fs.impl.j.b.a("pcs");
              paramo = am.ai((String)localObject2);
              localObject1 = am.al((String)localObject2);
              localObject3 = FileExplorerActivity.J();
              if (localObject3 != null) {
                parami.a(((FileExplorerActivity)localObject3).ab());
              }
              paramo = parami.a(paramo, (String)localObject1, paramTypedMap);
              Log.d("PCSD", "fos before downlist: " + paramh);
              if ((paramo == null) || (paramo.size() <= 0)) {
                break label1873;
              }
              parami = paramh;
              if (paramh == null) {
                parami = new LinkedList();
              }
              parami.addAll(paramo);
              paramh = parami;
              Log.d("PCSD", "fos after downlist: " + paramh);
            }
            catch (NetFsException paramh)
            {
              throw new FileSystemException(a(error), paramh);
            }
            try
            {
              paramh = SPFileSystem.listFiles(d, (String)localObject2, paramBoolean1, (i)localObject1, paramTypedMap);
            }
            catch (NetFsException paramh)
            {
              throw new FileSystemException(a(error), paramh);
            }
            paramh = com.estrongs.fs.impl.l.a.a((String)localObject2, (i)localObject1, paramo);
            break label696;
            if ((localObject3 instanceof com.estrongs.fs.impl.o.a))
            {
              if (paramTypedMap != null)
              {
                parami = paramTypedMap;
                if (paramTypedMap != TypedMap.EMPTY) {}
              }
              else
              {
                parami = new TypedMap();
              }
              parami.put("refresh", Boolean.valueOf(paramBoolean1));
              paramh = ((k)localObject3).a(paramh, (i)localObject1, parami);
              paramTypedMap = parami;
              break;
            }
            paramh = ((k)localObject3).a(paramh, (i)localObject1, paramTypedMap);
            break;
            throw new FileSystemException("Not result in the file system for " + paramo);
            a = false;
            return paramh;
          }
        }
      }
    }
  }
  
  public static void b()
  {
    com.estrongs.fs.impl.usb.e.d();
    new Thread(new g()).start();
  }
  
  private boolean b(h paramh)
  {
    if (paramh == null) {
      return false;
    }
    Object localObject1 = am.by(paramh.getPath());
    if (!bd.a((CharSequence)localObject1))
    {
      localObject2 = o((String)localObject1);
      if ((localObject2 != null) && ((localObject2 instanceof com.estrongs.fs.impl.g.a))) {
        return ((com.estrongs.fs.impl.g.a)localObject2).a(paramh.getPath(), paramh.getAbsolutePath());
      }
    }
    paramh = paramh.getAbsolutePath();
    if (paramh == null) {
      return false;
    }
    Object localObject2 = s.b;
    boolean bool;
    switch (am.G(paramh))
    {
    default: 
      localObject1 = o((String)localObject1);
      if (localObject1 == null) {
        break label373;
      }
      if (!(localObject1 instanceof com.estrongs.fs.impl.f.c)) {
        break label356;
      }
      return ((com.estrongs.fs.impl.f.c)localObject1).e(paramh);
    case 0: 
      return com.estrongs.fs.impl.local.h.a(d, paramh, (s)localObject2);
    case 1: 
      return com.estrongs.fs.impl.p.b.a(d, paramh, (s)localObject2);
    case 33: 
      return com.estrongs.fs.impl.usb.e.a(d, paramh, (s)localObject2);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.r.b.a(d, paramh, (s)localObject2);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      localObject1 = n(am.by(paramh));
      if (localObject1 != null) {
        return ((com.estrongs.old.fs.a)localObject1).c(paramh);
      }
    case 3: 
      return com.estrongs.fs.impl.c.a.a(d, paramh, (s)localObject2);
    case 4: 
    case 23: 
      try
      {
        bool = com.estrongs.fs.impl.j.b.a(am.bM(paramh), 0L);
        return bool;
      }
      catch (NetFsException paramh)
      {
        throw new FileSystemException(a(error), paramh);
      }
    }
    try
    {
      bool = SPFileSystem.deleteFile(paramh, 0L);
      return bool;
    }
    catch (NetFsException paramh)
    {
      throw new FileSystemException(a(error), paramh);
    }
    label356:
    if ((localObject1 instanceof com.estrongs.fs.impl.adb.c))
    {
      localObject1 = (com.estrongs.fs.impl.adb.c)localObject1;
      return com.estrongs.fs.impl.adb.c.e(paramh);
    }
    label373:
    return false;
  }
  
  private boolean b(String paramString1, String paramString2)
  {
    boolean bool = false;
    if (am.H(paramString1)) {
      bool = com.estrongs.fs.impl.p.b.b(paramString1, paramString2);
    }
    do
    {
      com.estrongs.old.fs.a locala;
      do
      {
        return bool;
        if ((!am.J(paramString1)) && (!am.I(paramString1))) {
          break;
        }
        locala = n(am.by(paramString1));
      } while (locala == null);
      return locala.b(paramString1, paramString2);
      if ((am.aw(paramString1)) || (am.aB(paramString1)) || (am.az(paramString1))) {
        try
        {
          bool = com.estrongs.fs.impl.j.b.e(am.bM(paramString1), am.bM(paramString2));
          return bool;
        }
        catch (NetFsException paramString1)
        {
          throw new FileSystemException(a(error), paramString1);
        }
      }
      if (am.m(paramString1)) {
        try
        {
          bool = com.estrongs.fs.impl.r.b.b(paramString1, paramString2);
          return bool;
        }
        catch (Exception paramString1)
        {
          throw new FileSystemException(paramString1.getMessage(), paramString1);
        }
      }
    } while (!am.ax(paramString1));
    try
    {
      bool = com.estrongs.fs.impl.usb.e.b(paramString1, paramString2);
      return bool;
    }
    catch (Exception paramString1)
    {
      throw new FileSystemException(paramString1.getMessage(), paramString1);
    }
  }
  
  public static void c()
  {
    com.estrongs.old.fs.impl.a.c.c();
    OldSFtpFileSystem.b();
    com.estrongs.fs.impl.r.b.a();
  }
  
  public static boolean i(String paramString)
  {
    int i = am.G(paramString);
    return (i == 0) || (i == 1);
  }
  
  public static h m(String paramString)
  {
    if (("mynetwork://".equalsIgnoreCase(paramString)) || ("apk://".equalsIgnoreCase(paramString)) || ("book://".equalsIgnoreCase(paramString)) || ("pic://".equalsIgnoreCase(paramString)) || ("music://".equalsIgnoreCase(paramString)) || ("video://".equalsIgnoreCase(paramString)) || (am.bg(paramString))) {
      return new f(paramString);
    }
    return new n(paramString);
  }
  
  public static com.estrongs.old.fs.a n(String paramString)
  {
    int i = com.estrongs.android.pop.b.a.a(paramString);
    if (i != -1) {
      throw new FsProviderNotFoundException(paramString, i);
    }
    Object localObject = (com.estrongs.old.fs.a)f.get(paramString);
    if (localObject == null) {
      try
      {
        if ((paramString.equals("ftp")) || (paramString.equals("ftps")) || (paramString.equals("ftpes"))) {
          return com.estrongs.old.fs.impl.a.c.b();
        }
        if (paramString.equals("sftp"))
        {
          localObject = OldSFtpFileSystem.c();
          return (com.estrongs.old.fs.a)localObject;
        }
      }
      catch (Exception localException)
      {
        throw new FsProviderNotFoundException(paramString, i);
      }
    }
    return localException;
  }
  
  private static boolean p(String paramString)
  {
    int i = am.G(paramString);
    if (i == 1) {
      return true;
    }
    if (i == 0) {
      return com.estrongs.fs.impl.local.h.k(paramString);
    }
    return false;
  }
  
  private k q(String paramString)
  {
    Object localObject;
    if (am.by("app://").equals(paramString))
    {
      localObject = new com.estrongs.fs.impl.b.d(d);
      return (k)localObject;
    }
    paramString = (String)b.get(paramString);
    if (bd.a(paramString)) {
      return null;
    }
    for (;;)
    {
      try
      {
        Class localClass = Class.forName(paramString);
        try
        {
          paramString = localClass.getMethod("getInstance", null);
          if (paramString != null)
          {
            paramString = (k)paramString.invoke(localClass, null);
            localObject = paramString;
            if (paramString != null) {
              break;
            }
            paramString = (k)k.class.cast(localClass.newInstance());
            return paramString;
          }
        }
        catch (Exception paramString)
        {
          paramString = null;
          continue;
        }
        paramString = null;
      }
      catch (Exception paramString)
      {
        return null;
      }
    }
  }
  
  public int a(String paramString1, String paramString2)
  {
    int i = 131072;
    if ((am.aV(paramString1)) || (am.aV(paramString2))) {
      i = 5120;
    }
    do
    {
      return i;
      if ((am.aw(paramString1)) || (am.aw(paramString2)) || (am.aB(paramString1)) || (am.aB(paramString2)) || (am.aB(am.bM(paramString2))) || (am.aG(paramString1)) || (am.aG(paramString2))) {
        return 32768;
      }
    } while ((!am.H(paramString1)) && (!am.H(paramString2)));
    return 61440;
  }
  
  public h a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = true;
    if (paramString == null) {
      return null;
    }
    Object localObject3;
    Object localObject1;
    if (paramBoolean2)
    {
      localObject3 = com.estrongs.fs.a.b.a().h(paramString);
      localObject1 = localObject3;
      if (localObject3 != null) {
        return (h)localObject3;
      }
    }
    else
    {
      localObject1 = null;
    }
    int j = am.G(paramString);
    for (;;)
    {
      try
      {
        localObject3 = Looper.getMainLooper().getThread();
        Thread localThread = Thread.currentThread();
        if (localObject3 != localThread) {
          break label494;
        }
        i = 1;
      }
      catch (Exception localException2)
      {
        try
        {
          ((Thread)localObject3).join();
          return localObject1[0];
        }
        catch (Exception localException1)
        {
          return new o(paramString);
        }
        localException2 = localException2;
        i = 0;
        continue;
      }
      if ((i != 0) && (am.bb(paramString)))
      {
        localObject1 = new h[1];
        localObject3 = new Thread(new e(this, (h[])localObject1, paramString));
        ((Thread)localObject3).start();
      }
      switch (j)
      {
      }
      for (;;)
      {
        Object localObject2;
        if (localException1 != null)
        {
          return localException1;
          localObject2 = com.estrongs.fs.impl.local.h.b(paramString);
          continue;
          localObject2 = com.estrongs.fs.impl.p.b.i(paramString);
          continue;
          localObject2 = com.estrongs.fs.impl.usb.e.h(paramString);
          continue;
          localObject2 = com.estrongs.fs.impl.r.b.f(paramString);
        }
        else
        {
          Object localObject4;
          try
          {
            localObject4 = n(am.by(paramString)).h(paramString);
            localObject2 = localObject4;
          }
          catch (FileSystemException localFileSystemException2) {}
          localObject2 = com.estrongs.fs.impl.c.a.i(paramString);
          continue;
          try
          {
            localObject4 = am.bM(paramString);
            if (!paramBoolean2) {}
            for (paramBoolean2 = bool;; paramBoolean2 = false)
            {
              localObject4 = com.estrongs.fs.impl.j.b.d((String)localObject4, paramBoolean2);
              if ((am.az(paramString)) && (localObject4 != null))
              {
                ((com.estrongs.fs.impl.j.a)localObject4).a(paramString);
                ((com.estrongs.fs.impl.j.a)localObject4).b(paramString);
              }
              localObject2 = localObject4;
              break;
            }
            try
            {
              localObject4 = SPFileSystem.getFileObject(paramString);
              localObject2 = localObject4;
            }
            catch (Exception localException3) {}
            localObject2 = o(am.by(paramString));
            if (localObject2 != null) {
              try
              {
                localObject2 = ((k)localObject2).a(paramString);
                if ((localObject2 == null) && (paramBoolean1))
                {
                  localObject2 = new o(paramString);
                  return (h)localObject2;
                }
                return (h)localObject2;
              }
              catch (FileSystemException localFileSystemException1)
              {
                if (paramBoolean1) {
                  return new o(paramString);
                }
              }
            }
            if (!paramBoolean1) {
              break;
            }
            return new o(paramString);
          }
          catch (Exception localException4) {}
          continue;
        }
      }
      label494:
      int i = 0;
    }
  }
  
  public InputStream a(String paramString, long paramLong)
  {
    return a(paramString, paramLong, null);
  }
  
  public InputStream a(String paramString, long paramLong, TypedMap paramTypedMap)
  {
    if (paramString == null) {
      return null;
    }
    String str;
    k localk;
    switch (am.G(paramString))
    {
    default: 
      str = am.by(paramString);
      localk = o(str);
      if (localk == null) {
        break label289;
      }
      if (!(localk instanceof com.estrongs.fs.impl.h.b)) {
        break label280;
      }
      return ((com.estrongs.fs.impl.h.b)localk).a(paramString, paramLong, paramTypedMap);
    case 0: 
      return com.estrongs.fs.impl.local.h.a(d, paramString, paramLong);
    case 1: 
      return com.estrongs.fs.impl.p.b.a(paramString, paramLong);
    case 33: 
      return com.estrongs.fs.impl.usb.e.a(paramString, paramLong);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.r.b.a(paramString, paramLong, paramTypedMap);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      paramTypedMap = n(am.by(paramString));
      if (paramTypedMap != null) {
        return paramTypedMap.a(paramString, paramLong);
      }
    case 3: 
      return com.estrongs.fs.impl.c.a.g(paramString);
    case 4: 
    case 23: 
      try
      {
        paramString = com.estrongs.fs.impl.j.b.c(am.bM(paramString), paramLong);
        return paramString;
      }
      catch (NetFsException paramString)
      {
        throw new FileSystemException(a(error), paramString);
      }
      catch (Exception paramString)
      {
        throw new FileSystemException(paramString);
      }
    }
    try
    {
      paramString = SPFileSystem.getFileInputStream(paramString, paramLong);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString);
    }
    label280:
    return localk.d(paramString);
    label289:
    throw new FileSystemException("Not result in the file system for " + str);
  }
  
  public OutputStream a(String paramString, long paramLong, boolean paramBoolean)
  {
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    switch (am.G(paramString))
    {
    default: 
      if (locala != null) {
        locala.setTaskResult(11, new com.estrongs.a.q("不支持断点上传", null));
      }
      return null;
    case 0: 
      return com.estrongs.fs.impl.local.h.a(paramString, paramLong);
    case 1: 
      return com.estrongs.fs.impl.p.b.b(paramString, paramLong);
    }
    return com.estrongs.fs.impl.usb.e.b(paramString, paramLong);
  }
  
  public String a(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    return ad.a(d).a(paramString1, paramString2, paramInt, paramString3);
  }
  
  public List<h> a(h paramh, boolean paramBoolean, i parami)
  {
    return a(paramh, paramBoolean, parami, TypedMap.EMPTY);
  }
  
  public List<h> a(h paramh, boolean paramBoolean, i parami, TypedMap paramTypedMap)
  {
    return a(paramh, paramBoolean, true, parami, com.estrongs.a.b.o.a, paramTypedMap);
  }
  
  public List<h> a(h paramh, boolean paramBoolean1, boolean paramBoolean2, i parami, com.estrongs.a.b.o<String> paramo)
  {
    return a(paramh, paramBoolean1, paramBoolean2, parami, paramo, TypedMap.EMPTY);
  }
  
  public List<h> a(h paramh, boolean paramBoolean1, boolean paramBoolean2, i parami, com.estrongs.a.b.o<String> paramo, TypedMap paramTypedMap)
  {
    Object localObject1 = null;
    int j = 0;
    Object localObject2;
    if ((parami instanceof b))
    {
      localObject2 = ((b)parami).a(aj.class);
      i = 0;
      if (i < ((List)localObject2).size()) {
        if (!((aj)((List)localObject2).get(i)).a()) {
          paramh = new ArrayList();
        }
      }
    }
    do
    {
      return paramh;
      i += 1;
      break;
      localObject2 = new ArrayList();
      paramo = b(paramh, paramBoolean1, paramBoolean2, null, paramo, paramTypedMap);
      paramh = (h)localObject1;
    } while (paramo == null);
    int i = j;
    if (parami == null) {
      return paramo;
    }
    while (i < paramo.size())
    {
      if (parami.a((h)paramo.get(i))) {
        ((List)localObject2).add(paramo.get(i));
      }
      i += 1;
    }
    return (List<h>)localObject2;
  }
  
  public List<h> a(h paramh, boolean paramBoolean1, boolean paramBoolean2, i parami, TypedMap paramTypedMap)
  {
    return a(paramh, paramBoolean1, paramBoolean2, parami, com.estrongs.a.b.o.a, paramTypedMap);
  }
  
  public List<h> a(String paramString)
  {
    return a(paramString, false);
  }
  
  public List<h> a(String paramString1, String paramString2, com.estrongs.a.b.o<String> paramo)
  {
    boolean bool2 = false;
    List localList = Collections.synchronizedList(new ArrayList());
    paramo = null;
    Map localMap = com.estrongs.android.pop.app.b.q.b(paramString2);
    paramString2 = paramo;
    if (localMap != null)
    {
      paramString2 = paramo;
      if (localMap.size() > 0) {
        paramString2 = new com.estrongs.android.pop.app.b.r(localMap, false, false);
      }
    }
    try
    {
      bool1 = Boolean.valueOf((String)localMap.get("recursion")).booleanValue();
      paramString1 = am.bE(paramString1);
      if (!ad.a(FexApplication.a()).p()) {
        bool2 = true;
      }
      a(localList, paramString1, paramString2, bool1, bool2);
      return localList;
    }
    catch (Exception paramo)
    {
      for (;;)
      {
        boolean bool1 = false;
      }
    }
  }
  
  public List<h> a(String paramString, boolean paramBoolean)
  {
    return a(new n(paramString), paramBoolean, i.c);
  }
  
  public void a(Boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  /* Error */
  public boolean a(com.estrongs.fs.b.u paramu)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   4: astore 26
    //   6: aload_1
    //   7: getfield 960	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   10: astore 21
    //   12: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   15: astore 24
    //   17: aload 24
    //   19: ifnull +426 -> 445
    //   22: aload 24
    //   24: instanceof 962
    //   27: ifeq +418 -> 445
    //   30: aload 24
    //   32: checkcast 962	com/estrongs/fs/b/r
    //   35: invokevirtual 965	com/estrongs/fs/b/r:b	()[B
    //   38: astore 20
    //   40: aload 21
    //   42: invokestatic 968	com/estrongs/android/util/am:bk	(Ljava/lang/String;)Ljava/lang/String;
    //   45: astore 17
    //   47: invokestatic 970	com/estrongs/android/util/bd:f	()Z
    //   50: ifeq +70 -> 120
    //   53: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   56: instanceof 962
    //   59: ifeq +61 -> 120
    //   62: aload 17
    //   64: invokestatic 105	com/estrongs/android/util/am:ba	(Ljava/lang/String;)Z
    //   67: ifeq +53 -> 120
    //   70: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   73: checkcast 962	com/estrongs/fs/b/r
    //   76: getfield 974	com/estrongs/fs/b/r:v	Ljava/util/Set;
    //   79: astore 18
    //   81: aload 17
    //   83: ldc_w 271
    //   86: invokevirtual 274	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   89: ifeq +380 -> 469
    //   92: aload 17
    //   94: iconst_0
    //   95: aload 17
    //   97: invokevirtual 977	java/lang/String:length	()I
    //   100: iconst_1
    //   101: isub
    //   102: invokevirtual 980	java/lang/String:substring	(II)Ljava/lang/String;
    //   105: astore 17
    //   107: aload 18
    //   109: aload 17
    //   111: invokestatic 945	com/estrongs/android/util/am:bE	(Ljava/lang/String;)Ljava/lang/String;
    //   114: invokeinterface 983 2 0
    //   119: pop
    //   120: aload 26
    //   122: invokeinterface 171 1 0
    //   127: astore 18
    //   129: new 361	java/util/ArrayList
    //   132: dup
    //   133: invokespecial 362	java/util/ArrayList:<init>	()V
    //   136: astore 25
    //   138: aconst_null
    //   139: astore 19
    //   141: aload 21
    //   143: invokestatic 105	com/estrongs/android/util/am:ba	(Ljava/lang/String;)Z
    //   146: ifeq +7273 -> 7419
    //   149: aload 21
    //   151: invokestatic 401	com/estrongs/android/util/am:bl	(Ljava/lang/String;)Z
    //   154: ifne +7265 -> 7419
    //   157: aload 21
    //   159: ldc_w 985
    //   162: invokestatic 988	com/estrongs/android/util/am:k	(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    //   165: astore 17
    //   167: aload 17
    //   169: astore 19
    //   171: aload 18
    //   173: invokestatic 73	com/estrongs/android/util/am:G	(Ljava/lang/String;)I
    //   176: istore_2
    //   177: aload 17
    //   179: astore 19
    //   181: iload_2
    //   182: aload 21
    //   184: invokestatic 73	com/estrongs/android/util/am:G	(Ljava/lang/String;)I
    //   187: if_icmpne +7223 -> 7410
    //   190: iload_2
    //   191: iconst_4
    //   192: if_icmpeq +9 -> 201
    //   195: iload_2
    //   196: bipush 23
    //   198: if_icmpne +7212 -> 7410
    //   201: aload 17
    //   203: astore 19
    //   205: aload 18
    //   207: invokestatic 991	com/estrongs/android/util/am:an	(Ljava/lang/String;)Ljava/lang/String;
    //   210: astore 22
    //   212: aload 17
    //   214: astore 19
    //   216: aload 21
    //   218: invokestatic 991	com/estrongs/android/util/am:an	(Ljava/lang/String;)Ljava/lang/String;
    //   221: astore 23
    //   223: aload 17
    //   225: astore 19
    //   227: aload 23
    //   229: ldc_w 993
    //   232: invokevirtual 358	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   235: istore 9
    //   237: aload 17
    //   239: astore 19
    //   241: aload 22
    //   243: aload 23
    //   245: invokevirtual 358	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   248: ifeq +7156 -> 7404
    //   251: aload 17
    //   253: astore 19
    //   255: aload 18
    //   257: invokestatic 995	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   260: aload 21
    //   262: invokestatic 995	com/estrongs/android/util/am:a	(Ljava/lang/String;)Ljava/lang/String;
    //   265: invokevirtual 358	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   268: ifeq +7136 -> 7404
    //   271: iconst_1
    //   272: istore 6
    //   274: aload 17
    //   276: astore 19
    //   278: aload 25
    //   280: aload_1
    //   281: invokevirtual 996	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   284: pop
    //   285: iconst_0
    //   286: istore_2
    //   287: iconst_1
    //   288: istore 4
    //   290: iconst_1
    //   291: istore_3
    //   292: aload 18
    //   294: astore_1
    //   295: aload 17
    //   297: astore 19
    //   299: aload 25
    //   301: invokevirtual 997	java/util/ArrayList:size	()I
    //   304: iconst_1
    //   305: if_icmpgt +7 -> 312
    //   308: iload_3
    //   309: ifeq +6753 -> 7062
    //   312: iload_3
    //   313: ifne +44 -> 357
    //   316: aload 24
    //   318: ifnull +28 -> 346
    //   321: aload 17
    //   323: astore 19
    //   325: aload 24
    //   327: iconst_1
    //   328: iconst_2
    //   329: anewarray 4	java/lang/Object
    //   332: dup
    //   333: iconst_0
    //   334: lconst_1
    //   335: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   338: aastore
    //   339: dup
    //   340: iconst_1
    //   341: aload_1
    //   342: aastore
    //   343: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   346: aload 17
    //   348: astore 19
    //   350: aload 25
    //   352: iconst_0
    //   353: invokevirtual 999	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   356: pop
    //   357: aload 24
    //   359: ifnull +113 -> 472
    //   362: aload 17
    //   364: astore 19
    //   366: aload 24
    //   368: invokevirtual 161	com/estrongs/a/a:taskStopped	()Z
    //   371: istore 10
    //   373: iload 10
    //   375: ifeq +97 -> 472
    //   378: aload 17
    //   380: ifnull +9 -> 389
    //   383: aload 17
    //   385: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   388: pop
    //   389: aload 24
    //   391: ifnull +52 -> 443
    //   394: aload 25
    //   396: invokevirtual 997	java/util/ArrayList:size	()I
    //   399: ifle +44 -> 443
    //   402: aload 24
    //   404: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   407: getfield 1010	com/estrongs/a/p:a	I
    //   410: bipush 16
    //   412: if_icmpeq +31 -> 443
    //   415: aload 24
    //   417: iconst_4
    //   418: iconst_1
    //   419: anewarray 4	java/lang/Object
    //   422: dup
    //   423: iconst_0
    //   424: aload 25
    //   426: aastore
    //   427: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   430: aload 25
    //   432: iconst_0
    //   433: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   436: checkcast 955	com/estrongs/fs/b/u
    //   439: iconst_1
    //   440: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   443: iconst_0
    //   444: ireturn
    //   445: aload_0
    //   446: aload_1
    //   447: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   450: invokeinterface 171 1 0
    //   455: aload_1
    //   456: getfield 960	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   459: invokevirtual 1015	com/estrongs/fs/d:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   462: newarray <illegal type>
    //   464: astore 20
    //   466: goto -426 -> 40
    //   469: goto -362 -> 107
    //   472: aload 17
    //   474: astore 19
    //   476: aload 25
    //   478: iconst_0
    //   479: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   482: checkcast 955	com/estrongs/fs/b/u
    //   485: astore 27
    //   487: aload 17
    //   489: astore 19
    //   491: aload 27
    //   493: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   496: invokeinterface 171 1 0
    //   501: astore 22
    //   503: aload 17
    //   505: astore 19
    //   507: aload 27
    //   509: getfield 960	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   512: astore_1
    //   513: aload 17
    //   515: astore 19
    //   517: aload 22
    //   519: aload_1
    //   520: invokevirtual 730	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   523: ifeq +181 -> 704
    //   526: aload 22
    //   528: astore_1
    //   529: aload 24
    //   531: ifnull -236 -> 295
    //   534: aload 17
    //   536: astore 19
    //   538: aload 24
    //   540: iconst_2
    //   541: iconst_2
    //   542: anewarray 4	java/lang/Object
    //   545: dup
    //   546: iconst_0
    //   547: aload 27
    //   549: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   552: invokeinterface 1018 1 0
    //   557: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   560: aastore
    //   561: dup
    //   562: iconst_1
    //   563: aload 22
    //   565: aastore
    //   566: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   569: aload 17
    //   571: astore 19
    //   573: aload 24
    //   575: bipush 8
    //   577: iconst_0
    //   578: anewarray 4	java/lang/Object
    //   581: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   584: aload 22
    //   586: astore_1
    //   587: goto -292 -> 295
    //   590: astore 18
    //   592: aload 17
    //   594: astore_1
    //   595: aload 18
    //   597: astore 17
    //   599: aload 17
    //   601: invokevirtual 1019	com/estrongs/fs/FileSystemException:getMessage	()Ljava/lang/String;
    //   604: astore 18
    //   606: aload 18
    //   608: ifnull +6566 -> 7174
    //   611: new 871	com/estrongs/a/q
    //   614: dup
    //   615: aload 18
    //   617: aload 17
    //   619: invokespecial 876	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   622: astore 17
    //   624: aload 24
    //   626: ifnull +13 -> 639
    //   629: aload 24
    //   631: sipush 10000
    //   634: aload 17
    //   636: invokevirtual 880	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   639: aload_1
    //   640: ifnull +8 -> 648
    //   643: aload_1
    //   644: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   647: pop
    //   648: aload 24
    //   650: ifnull +52 -> 702
    //   653: aload 25
    //   655: invokevirtual 997	java/util/ArrayList:size	()I
    //   658: ifle +44 -> 702
    //   661: aload 24
    //   663: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   666: getfield 1010	com/estrongs/a/p:a	I
    //   669: bipush 16
    //   671: if_icmpeq +31 -> 702
    //   674: aload 24
    //   676: iconst_4
    //   677: iconst_1
    //   678: anewarray 4	java/lang/Object
    //   681: dup
    //   682: iconst_0
    //   683: aload 25
    //   685: aastore
    //   686: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   689: aload 25
    //   691: iconst_0
    //   692: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   695: checkcast 955	com/estrongs/fs/b/u
    //   698: iconst_1
    //   699: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   702: iconst_0
    //   703: ireturn
    //   704: iload 4
    //   706: ifne +8 -> 714
    //   709: iload 9
    //   711: ifeq +6687 -> 7398
    //   714: aload 17
    //   716: astore 19
    //   718: aload_0
    //   719: aload_1
    //   720: invokevirtual 1021	com/estrongs/fs/d:b	(Ljava/lang/String;)Z
    //   723: istore 10
    //   725: iload 10
    //   727: ifne +6668 -> 7395
    //   730: iload_3
    //   731: ifeq +6664 -> 7395
    //   734: iconst_0
    //   735: istore 4
    //   737: iload_2
    //   738: istore 7
    //   740: iload 4
    //   742: istore_3
    //   743: iload 4
    //   745: ifeq +6601 -> 7346
    //   748: iload_2
    //   749: istore 7
    //   751: iload 4
    //   753: istore_3
    //   754: iload 10
    //   756: ifeq +6590 -> 7346
    //   759: iconst_1
    //   760: istore_3
    //   761: aload 24
    //   763: ifnull +6681 -> 7444
    //   766: aload 17
    //   768: astore 19
    //   770: aload 27
    //   772: getfield 1013	com/estrongs/fs/b/u:e	Z
    //   775: ifne +6669 -> 7444
    //   778: aload 17
    //   780: astore 19
    //   782: aload_0
    //   783: aload_1
    //   784: invokevirtual 1024	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   787: astore 18
    //   789: aload 17
    //   791: astore 19
    //   793: aload_1
    //   794: invokestatic 1026	com/estrongs/fs/d:i	(Ljava/lang/String;)Z
    //   797: ifeq +6641 -> 7438
    //   800: aload 17
    //   802: astore 19
    //   804: aload 27
    //   806: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   809: invokeinterface 256 1 0
    //   814: invokestatic 809	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   817: ifne +20 -> 837
    //   820: aload 17
    //   822: astore 19
    //   824: aload 18
    //   826: invokeinterface 256 1 0
    //   831: invokestatic 809	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   834: ifeq +6604 -> 7438
    //   837: aload 17
    //   839: astore 19
    //   841: aload 18
    //   843: invokeinterface 1018 1 0
    //   848: lconst_0
    //   849: lcmp
    //   850: ifle +6588 -> 7438
    //   853: aload 17
    //   855: astore 19
    //   857: aload 18
    //   859: invokeinterface 1018 1 0
    //   864: aload 27
    //   866: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   869: invokeinterface 1018 1 0
    //   874: lcmp
    //   875: ifge +6563 -> 7438
    //   878: iconst_1
    //   879: istore 11
    //   881: aload 17
    //   883: astore 19
    //   885: aload 24
    //   887: ldc_w 1028
    //   890: iconst_4
    //   891: anewarray 4	java/lang/Object
    //   894: dup
    //   895: iconst_0
    //   896: aload_1
    //   897: aastore
    //   898: dup
    //   899: iconst_1
    //   900: iload 11
    //   902: invokestatic 224	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   905: aastore
    //   906: dup
    //   907: iconst_2
    //   908: aload 27
    //   910: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   913: aastore
    //   914: dup
    //   915: iconst_3
    //   916: aload 18
    //   918: aastore
    //   919: invokevirtual 1032	com/estrongs/a/a:getDecision	(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;
    //   922: checkcast 1028	com/estrongs/a/a/h
    //   925: astore 18
    //   927: aload 18
    //   929: ifnull +6445 -> 7374
    //   932: iconst_0
    //   933: istore_2
    //   934: aload 17
    //   936: astore 19
    //   938: aload 18
    //   940: getfield 1034	com/estrongs/a/a/h:f	Z
    //   943: ifeq +6425 -> 7368
    //   946: aload 17
    //   948: astore 19
    //   950: aload 18
    //   952: getfield 1036	com/estrongs/a/a/h:g	I
    //   955: iconst_1
    //   956: if_icmpne +6412 -> 7368
    //   959: iconst_0
    //   960: istore_3
    //   961: iload_2
    //   962: istore 4
    //   964: aload 17
    //   966: astore 19
    //   968: aload 18
    //   970: getfield 1036	com/estrongs/a/a/h:g	I
    //   973: iconst_5
    //   974: if_icmpne +6 -> 980
    //   977: iconst_1
    //   978: istore 4
    //   980: aload 17
    //   982: astore 19
    //   984: aload 18
    //   986: getfield 1036	com/estrongs/a/a/h:g	I
    //   989: istore_2
    //   990: goto +6435 -> 7425
    //   993: iload 8
    //   995: iconst_2
    //   996: if_icmpne +135 -> 1131
    //   999: aload 24
    //   1001: ifnull +6356 -> 7357
    //   1004: aload 17
    //   1006: astore 19
    //   1008: aload 24
    //   1010: iconst_2
    //   1011: iconst_2
    //   1012: anewarray 4	java/lang/Object
    //   1015: dup
    //   1016: iconst_0
    //   1017: aload 27
    //   1019: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1022: invokeinterface 1018 1 0
    //   1027: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1030: aastore
    //   1031: dup
    //   1032: iconst_1
    //   1033: aload 22
    //   1035: aastore
    //   1036: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1039: aload 17
    //   1041: astore 19
    //   1043: aload 24
    //   1045: bipush 8
    //   1047: iconst_0
    //   1048: anewarray 4	java/lang/Object
    //   1051: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1054: aload 17
    //   1056: astore 19
    //   1058: aload 24
    //   1060: instanceof 1038
    //   1063: ifeq +6294 -> 7357
    //   1066: aload 17
    //   1068: astore 19
    //   1070: aload 24
    //   1072: checkcast 1038	com/estrongs/fs/b/ao
    //   1075: getfield 1042	com/estrongs/fs/b/ao:C	Ljava/util/List;
    //   1078: ifnonnull +22 -> 1100
    //   1081: aload 17
    //   1083: astore 19
    //   1085: aload 24
    //   1087: checkcast 1038	com/estrongs/fs/b/ao
    //   1090: new 361	java/util/ArrayList
    //   1093: dup
    //   1094: invokespecial 362	java/util/ArrayList:<init>	()V
    //   1097: putfield 1042	com/estrongs/fs/b/ao:C	Ljava/util/List;
    //   1100: aload 17
    //   1102: astore 19
    //   1104: aload 24
    //   1106: checkcast 1038	com/estrongs/fs/b/ao
    //   1109: getfield 1042	com/estrongs/fs/b/ao:C	Ljava/util/List;
    //   1112: aload 22
    //   1114: invokeinterface 205 2 0
    //   1119: pop
    //   1120: iconst_0
    //   1121: istore_3
    //   1122: aload 22
    //   1124: astore_1
    //   1125: iload 5
    //   1127: istore_2
    //   1128: goto -833 -> 295
    //   1131: iload 8
    //   1133: iconst_3
    //   1134: if_icmpne +101 -> 1235
    //   1137: aload 24
    //   1139: ifnull +29 -> 1168
    //   1142: aload 17
    //   1144: astore 19
    //   1146: aload 24
    //   1148: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1151: getfield 1010	com/estrongs/a/p:a	I
    //   1154: ifne +14 -> 1168
    //   1157: aload 17
    //   1159: astore 19
    //   1161: aload 24
    //   1163: iconst_1
    //   1164: aconst_null
    //   1165: invokevirtual 880	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1168: aload 17
    //   1170: ifnull +9 -> 1179
    //   1173: aload 17
    //   1175: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   1178: pop
    //   1179: aload 24
    //   1181: ifnull +52 -> 1233
    //   1184: aload 25
    //   1186: invokevirtual 997	java/util/ArrayList:size	()I
    //   1189: ifle +44 -> 1233
    //   1192: aload 24
    //   1194: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1197: getfield 1010	com/estrongs/a/p:a	I
    //   1200: bipush 16
    //   1202: if_icmpeq +31 -> 1233
    //   1205: aload 24
    //   1207: iconst_4
    //   1208: iconst_1
    //   1209: anewarray 4	java/lang/Object
    //   1212: dup
    //   1213: iconst_0
    //   1214: aload 25
    //   1216: aastore
    //   1217: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1220: aload 25
    //   1222: iconst_0
    //   1223: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1226: checkcast 955	com/estrongs/fs/b/u
    //   1229: iconst_1
    //   1230: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   1233: iconst_0
    //   1234: ireturn
    //   1235: iload 5
    //   1237: istore 7
    //   1239: iload 4
    //   1241: istore_3
    //   1242: iload 8
    //   1244: iconst_4
    //   1245: if_icmpne +6101 -> 7346
    //   1248: iconst_1
    //   1249: istore 7
    //   1251: iload 5
    //   1253: istore_3
    //   1254: iload 4
    //   1256: istore_2
    //   1257: iload 7
    //   1259: istore 4
    //   1261: iload 6
    //   1263: ifeq +347 -> 1610
    //   1266: iload 10
    //   1268: ifeq +13 -> 1281
    //   1271: iload 10
    //   1273: ifeq +337 -> 1610
    //   1276: iload 9
    //   1278: ifne +332 -> 1610
    //   1281: aload 17
    //   1283: astore 19
    //   1285: aload 22
    //   1287: invokestatic 510	com/estrongs/android/util/am:bM	(Ljava/lang/String;)Ljava/lang/String;
    //   1290: aload_1
    //   1291: invokestatic 510	com/estrongs/android/util/am:bM	(Ljava/lang/String;)Ljava/lang/String;
    //   1294: invokestatic 1044	com/estrongs/fs/impl/j/b:d	(Ljava/lang/String;Ljava/lang/String;)Z
    //   1297: ifne +131 -> 1428
    //   1300: aload 17
    //   1302: astore 19
    //   1304: new 871	com/estrongs/a/q
    //   1307: dup
    //   1308: aload_0
    //   1309: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   1312: ldc_w 1045
    //   1315: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   1318: iconst_1
    //   1319: anewarray 4	java/lang/Object
    //   1322: dup
    //   1323: iconst_0
    //   1324: aload 27
    //   1326: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1329: invokeinterface 181 1 0
    //   1334: aastore
    //   1335: invokestatic 1051	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1338: aconst_null
    //   1339: invokespecial 876	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1342: astore_1
    //   1343: aload 24
    //   1345: ifnull +16 -> 1361
    //   1348: aload 17
    //   1350: astore 19
    //   1352: aload 24
    //   1354: sipush 10000
    //   1357: aload_1
    //   1358: invokevirtual 880	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1361: aload 17
    //   1363: ifnull +9 -> 1372
    //   1366: aload 17
    //   1368: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   1371: pop
    //   1372: aload 24
    //   1374: ifnull +52 -> 1426
    //   1377: aload 25
    //   1379: invokevirtual 997	java/util/ArrayList:size	()I
    //   1382: ifle +44 -> 1426
    //   1385: aload 24
    //   1387: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1390: getfield 1010	com/estrongs/a/p:a	I
    //   1393: bipush 16
    //   1395: if_icmpeq +31 -> 1426
    //   1398: aload 24
    //   1400: iconst_4
    //   1401: iconst_1
    //   1402: anewarray 4	java/lang/Object
    //   1405: dup
    //   1406: iconst_0
    //   1407: aload 25
    //   1409: aastore
    //   1410: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1413: aload 25
    //   1415: iconst_0
    //   1416: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1419: checkcast 955	com/estrongs/fs/b/u
    //   1422: iconst_1
    //   1423: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   1426: iconst_0
    //   1427: ireturn
    //   1428: iload_3
    //   1429: istore 4
    //   1431: iload_2
    //   1432: istore 5
    //   1434: iconst_0
    //   1435: istore_3
    //   1436: aload 22
    //   1438: astore_1
    //   1439: iload 4
    //   1441: istore_2
    //   1442: iload 5
    //   1444: istore 4
    //   1446: goto -1151 -> 295
    //   1449: astore_1
    //   1450: aload 17
    //   1452: astore 19
    //   1454: aload_0
    //   1455: aload_1
    //   1456: getfield 617	com/estrongs/android/pop/netfs/NetFsException:error	Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
    //   1459: invokespecial 619	com/estrongs/fs/d:a	(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;
    //   1462: astore 18
    //   1464: aload 18
    //   1466: ifnull +98 -> 1564
    //   1469: aload 17
    //   1471: astore 19
    //   1473: new 871	com/estrongs/a/q
    //   1476: dup
    //   1477: aload 18
    //   1479: aload_1
    //   1480: invokespecial 876	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1483: astore_1
    //   1484: aload 17
    //   1486: astore 19
    //   1488: aload 24
    //   1490: sipush 10000
    //   1493: aload_1
    //   1494: invokevirtual 880	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1497: aload 17
    //   1499: ifnull +9 -> 1508
    //   1502: aload 17
    //   1504: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   1507: pop
    //   1508: aload 24
    //   1510: ifnull +52 -> 1562
    //   1513: aload 25
    //   1515: invokevirtual 997	java/util/ArrayList:size	()I
    //   1518: ifle +44 -> 1562
    //   1521: aload 24
    //   1523: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1526: getfield 1010	com/estrongs/a/p:a	I
    //   1529: bipush 16
    //   1531: if_icmpeq +31 -> 1562
    //   1534: aload 24
    //   1536: iconst_4
    //   1537: iconst_1
    //   1538: anewarray 4	java/lang/Object
    //   1541: dup
    //   1542: iconst_0
    //   1543: aload 25
    //   1545: aastore
    //   1546: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1549: aload 25
    //   1551: iconst_0
    //   1552: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1555: checkcast 955	com/estrongs/fs/b/u
    //   1558: iconst_1
    //   1559: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   1562: iconst_0
    //   1563: ireturn
    //   1564: aload 17
    //   1566: astore 19
    //   1568: new 871	com/estrongs/a/q
    //   1571: dup
    //   1572: aload_0
    //   1573: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   1576: ldc_w 1045
    //   1579: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   1582: iconst_1
    //   1583: anewarray 4	java/lang/Object
    //   1586: dup
    //   1587: iconst_0
    //   1588: aload 27
    //   1590: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1593: invokeinterface 181 1 0
    //   1598: aastore
    //   1599: invokestatic 1051	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1602: aload_1
    //   1603: invokespecial 876	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1606: astore_1
    //   1607: goto -123 -> 1484
    //   1610: iconst_1
    //   1611: istore 12
    //   1613: iload 12
    //   1615: istore 11
    //   1617: aload 17
    //   1619: astore 19
    //   1621: aload_1
    //   1622: invokestatic 105	com/estrongs/android/util/am:ba	(Ljava/lang/String;)Z
    //   1625: ifeq +142 -> 1767
    //   1628: iload 12
    //   1630: istore 11
    //   1632: aload 17
    //   1634: astore 19
    //   1636: aload_1
    //   1637: invokestatic 1053	com/estrongs/fs/impl/local/h:a	(Ljava/lang/String;)Z
    //   1640: ifeq +127 -> 1767
    //   1643: iconst_0
    //   1644: istore 11
    //   1646: aload 17
    //   1648: astore 19
    //   1650: aload_1
    //   1651: invokestatic 1054	com/estrongs/fs/impl/local/h:h	(Ljava/lang/String;)Z
    //   1654: aload 27
    //   1656: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1659: invokeinterface 192 1 0
    //   1664: invokevirtual 196	com/estrongs/fs/m:a	()Z
    //   1667: ixor
    //   1668: ifeq +99 -> 1767
    //   1671: aload 17
    //   1673: astore 19
    //   1675: aload 24
    //   1677: bipush 16
    //   1679: new 871	com/estrongs/a/q
    //   1682: dup
    //   1683: aload_0
    //   1684: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   1687: ldc_w 1055
    //   1690: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   1693: aconst_null
    //   1694: invokespecial 876	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1697: invokevirtual 880	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1700: aload 17
    //   1702: ifnull +9 -> 1711
    //   1705: aload 17
    //   1707: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   1710: pop
    //   1711: aload 24
    //   1713: ifnull +52 -> 1765
    //   1716: aload 25
    //   1718: invokevirtual 997	java/util/ArrayList:size	()I
    //   1721: ifle +44 -> 1765
    //   1724: aload 24
    //   1726: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1729: getfield 1010	com/estrongs/a/p:a	I
    //   1732: bipush 16
    //   1734: if_icmpeq +31 -> 1765
    //   1737: aload 24
    //   1739: iconst_4
    //   1740: iconst_1
    //   1741: anewarray 4	java/lang/Object
    //   1744: dup
    //   1745: iconst_0
    //   1746: aload 25
    //   1748: aastore
    //   1749: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1752: aload 25
    //   1754: iconst_0
    //   1755: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1758: checkcast 955	com/estrongs/fs/b/u
    //   1761: iconst_1
    //   1762: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   1765: iconst_0
    //   1766: ireturn
    //   1767: aload 17
    //   1769: astore 19
    //   1771: aload 27
    //   1773: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1776: invokeinterface 192 1 0
    //   1781: invokevirtual 196	com/estrongs/fs/m:a	()Z
    //   1784: ifeq +503 -> 2287
    //   1787: aload 17
    //   1789: astore 19
    //   1791: aload_0
    //   1792: aload 27
    //   1794: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1797: invokeinterface 171 1 0
    //   1802: invokevirtual 1057	com/estrongs/fs/d:a	(Ljava/lang/String;)Ljava/util/List;
    //   1805: astore 18
    //   1807: aload 18
    //   1809: ifnonnull +70 -> 1879
    //   1812: aload 17
    //   1814: ifnull +9 -> 1823
    //   1817: aload 17
    //   1819: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   1822: pop
    //   1823: aload 24
    //   1825: ifnull +52 -> 1877
    //   1828: aload 25
    //   1830: invokevirtual 997	java/util/ArrayList:size	()I
    //   1833: ifle +44 -> 1877
    //   1836: aload 24
    //   1838: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1841: getfield 1010	com/estrongs/a/p:a	I
    //   1844: bipush 16
    //   1846: if_icmpeq +31 -> 1877
    //   1849: aload 24
    //   1851: iconst_4
    //   1852: iconst_1
    //   1853: anewarray 4	java/lang/Object
    //   1856: dup
    //   1857: iconst_0
    //   1858: aload 25
    //   1860: aastore
    //   1861: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1864: aload 25
    //   1866: iconst_0
    //   1867: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1870: checkcast 955	com/estrongs/fs/b/u
    //   1873: iconst_1
    //   1874: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   1877: iconst_0
    //   1878: ireturn
    //   1879: aload 17
    //   1881: astore 19
    //   1883: aload_0
    //   1884: aload_1
    //   1885: iconst_0
    //   1886: invokevirtual 1060	com/estrongs/fs/d:c	(Ljava/lang/String;Z)Z
    //   1889: istore 10
    //   1891: iload 10
    //   1893: ifne +157 -> 2050
    //   1896: aload 17
    //   1898: astore 19
    //   1900: aload_0
    //   1901: aload_1
    //   1902: invokevirtual 1063	com/estrongs/fs/d:c	(Ljava/lang/String;)Lcom/estrongs/fs/c;
    //   1905: getfield 1067	com/estrongs/fs/c:d	Z
    //   1908: istore 10
    //   1910: iload 10
    //   1912: ifne +138 -> 2050
    //   1915: aload 17
    //   1917: ifnull +9 -> 1926
    //   1920: aload 17
    //   1922: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   1925: pop
    //   1926: aload 24
    //   1928: ifnull +52 -> 1980
    //   1931: aload 25
    //   1933: invokevirtual 997	java/util/ArrayList:size	()I
    //   1936: ifle +44 -> 1980
    //   1939: aload 24
    //   1941: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1944: getfield 1010	com/estrongs/a/p:a	I
    //   1947: bipush 16
    //   1949: if_icmpeq +31 -> 1980
    //   1952: aload 24
    //   1954: iconst_4
    //   1955: iconst_1
    //   1956: anewarray 4	java/lang/Object
    //   1959: dup
    //   1960: iconst_0
    //   1961: aload 25
    //   1963: aastore
    //   1964: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1967: aload 25
    //   1969: iconst_0
    //   1970: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1973: checkcast 955	com/estrongs/fs/b/u
    //   1976: iconst_1
    //   1977: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   1980: iconst_0
    //   1981: ireturn
    //   1982: astore_1
    //   1983: aload 17
    //   1985: ifnull +9 -> 1994
    //   1988: aload 17
    //   1990: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   1993: pop
    //   1994: aload 24
    //   1996: ifnull +52 -> 2048
    //   1999: aload 25
    //   2001: invokevirtual 997	java/util/ArrayList:size	()I
    //   2004: ifle +44 -> 2048
    //   2007: aload 24
    //   2009: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   2012: getfield 1010	com/estrongs/a/p:a	I
    //   2015: bipush 16
    //   2017: if_icmpeq +31 -> 2048
    //   2020: aload 24
    //   2022: iconst_4
    //   2023: iconst_1
    //   2024: anewarray 4	java/lang/Object
    //   2027: dup
    //   2028: iconst_0
    //   2029: aload 25
    //   2031: aastore
    //   2032: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2035: aload 25
    //   2037: iconst_0
    //   2038: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   2041: checkcast 955	com/estrongs/fs/b/u
    //   2044: iconst_1
    //   2045: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   2048: iconst_0
    //   2049: ireturn
    //   2050: aload 17
    //   2052: astore 19
    //   2054: aload_1
    //   2055: ldc_w 271
    //   2058: invokevirtual 274	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   2061: ifne +5282 -> 7343
    //   2064: aload 17
    //   2066: astore 19
    //   2068: new 276	java/lang/StringBuilder
    //   2071: dup
    //   2072: invokespecial 277	java/lang/StringBuilder:<init>	()V
    //   2075: aload_1
    //   2076: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2079: ldc_w 271
    //   2082: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2085: invokevirtual 284	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2088: astore_1
    //   2089: goto +5378 -> 7467
    //   2092: aload 17
    //   2094: astore 19
    //   2096: iload 4
    //   2098: aload 18
    //   2100: invokeinterface 130 1 0
    //   2105: if_icmpge +79 -> 2184
    //   2108: aload 17
    //   2110: astore 19
    //   2112: aload 25
    //   2114: new 955	com/estrongs/fs/b/u
    //   2117: dup
    //   2118: aload 18
    //   2120: iload 4
    //   2122: invokeinterface 906 2 0
    //   2127: checkcast 152	com/estrongs/fs/h
    //   2130: new 276	java/lang/StringBuilder
    //   2133: dup
    //   2134: invokespecial 277	java/lang/StringBuilder:<init>	()V
    //   2137: aload_1
    //   2138: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2141: aload 18
    //   2143: iload 4
    //   2145: invokeinterface 906 2 0
    //   2150: checkcast 152	com/estrongs/fs/h
    //   2153: invokeinterface 171 1 0
    //   2158: invokestatic 1069	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   2161: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2164: invokevirtual 284	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2167: lconst_0
    //   2168: invokespecial 1072	com/estrongs/fs/b/u:<init>	(Lcom/estrongs/fs/h;Ljava/lang/String;J)V
    //   2171: invokevirtual 996	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2174: pop
    //   2175: iload 4
    //   2177: iconst_1
    //   2178: iadd
    //   2179: istore 4
    //   2181: goto -89 -> 2092
    //   2184: aload 17
    //   2186: astore 19
    //   2188: invokestatic 970	com/estrongs/android/util/bd:f	()Z
    //   2191: ifeq +5282 -> 7473
    //   2194: aload 17
    //   2196: astore 19
    //   2198: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   2201: instanceof 962
    //   2204: ifeq +5269 -> 7473
    //   2207: aload 17
    //   2209: astore 19
    //   2211: aload_1
    //   2212: invokestatic 105	com/estrongs/android/util/am:ba	(Ljava/lang/String;)Z
    //   2215: ifeq +5258 -> 7473
    //   2218: aload 17
    //   2220: astore 19
    //   2222: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   2225: checkcast 962	com/estrongs/fs/b/r
    //   2228: getfield 974	com/estrongs/fs/b/r:v	Ljava/util/Set;
    //   2231: astore 21
    //   2233: aload_1
    //   2234: astore 18
    //   2236: aload 17
    //   2238: astore 19
    //   2240: aload_1
    //   2241: ldc_w 271
    //   2244: invokevirtual 274	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   2247: ifeq +20 -> 2267
    //   2250: aload 17
    //   2252: astore 19
    //   2254: aload_1
    //   2255: iconst_0
    //   2256: aload_1
    //   2257: invokevirtual 977	java/lang/String:length	()I
    //   2260: iconst_1
    //   2261: isub
    //   2262: invokevirtual 980	java/lang/String:substring	(II)Ljava/lang/String;
    //   2265: astore 18
    //   2267: aload 17
    //   2269: astore 19
    //   2271: aload 21
    //   2273: aload 18
    //   2275: invokestatic 945	com/estrongs/android/util/am:bE	(Ljava/lang/String;)Ljava/lang/String;
    //   2278: invokeinterface 983 2 0
    //   2283: pop
    //   2284: goto +5189 -> 7473
    //   2287: iload 6
    //   2289: ifeq +187 -> 2476
    //   2292: iload 10
    //   2294: ifeq +182 -> 2476
    //   2297: iload 9
    //   2299: ifeq +177 -> 2476
    //   2302: aload 17
    //   2304: astore 19
    //   2306: aload_1
    //   2307: invokestatic 510	com/estrongs/android/util/am:bM	(Ljava/lang/String;)Ljava/lang/String;
    //   2310: lconst_0
    //   2311: invokestatic 684	com/estrongs/fs/impl/j/b:a	(Ljava/lang/String;J)Z
    //   2314: istore 11
    //   2316: iload 11
    //   2318: istore 10
    //   2320: iload 11
    //   2322: ifeq +21 -> 2343
    //   2325: aload 17
    //   2327: astore 19
    //   2329: aload 22
    //   2331: invokestatic 510	com/estrongs/android/util/am:bM	(Ljava/lang/String;)Ljava/lang/String;
    //   2334: aload_1
    //   2335: invokestatic 510	com/estrongs/android/util/am:bM	(Ljava/lang/String;)Ljava/lang/String;
    //   2338: invokestatic 1044	com/estrongs/fs/impl/j/b:d	(Ljava/lang/String;Ljava/lang/String;)Z
    //   2341: istore 10
    //   2343: iload 10
    //   2345: ifne +70 -> 2415
    //   2348: aload 17
    //   2350: ifnull +9 -> 2359
    //   2353: aload 17
    //   2355: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   2358: pop
    //   2359: aload 24
    //   2361: ifnull +52 -> 2413
    //   2364: aload 25
    //   2366: invokevirtual 997	java/util/ArrayList:size	()I
    //   2369: ifle +44 -> 2413
    //   2372: aload 24
    //   2374: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   2377: getfield 1010	com/estrongs/a/p:a	I
    //   2380: bipush 16
    //   2382: if_icmpeq +31 -> 2413
    //   2385: aload 24
    //   2387: iconst_4
    //   2388: iconst_1
    //   2389: anewarray 4	java/lang/Object
    //   2392: dup
    //   2393: iconst_0
    //   2394: aload 25
    //   2396: aastore
    //   2397: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2400: aload 25
    //   2402: iconst_0
    //   2403: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   2406: checkcast 955	com/estrongs/fs/b/u
    //   2409: iconst_1
    //   2410: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   2413: iconst_0
    //   2414: ireturn
    //   2415: aload 24
    //   2417: ifnull +4899 -> 7316
    //   2420: aload 17
    //   2422: astore 19
    //   2424: aload 24
    //   2426: iconst_2
    //   2427: iconst_2
    //   2428: anewarray 4	java/lang/Object
    //   2431: dup
    //   2432: iconst_0
    //   2433: aload 27
    //   2435: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2438: invokeinterface 1018 1 0
    //   2443: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2446: aastore
    //   2447: dup
    //   2448: iconst_1
    //   2449: aload 22
    //   2451: aastore
    //   2452: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2455: iload_3
    //   2456: istore 4
    //   2458: iload_2
    //   2459: istore 5
    //   2461: iconst_0
    //   2462: istore_3
    //   2463: aload 22
    //   2465: astore_1
    //   2466: iload 4
    //   2468: istore_2
    //   2469: iload 5
    //   2471: istore 4
    //   2473: goto -2178 -> 295
    //   2476: aload 17
    //   2478: astore 19
    //   2480: aload 27
    //   2482: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2485: invokeinterface 1018 1 0
    //   2490: lstore 13
    //   2492: lload 13
    //   2494: lstore 15
    //   2496: lload 13
    //   2498: lconst_0
    //   2499: lcmp
    //   2500: ifgt +15 -> 2515
    //   2503: aload 17
    //   2505: astore 19
    //   2507: aload_0
    //   2508: aload 22
    //   2510: invokevirtual 1075	com/estrongs/fs/d:d	(Ljava/lang/String;)J
    //   2513: lstore 15
    //   2515: iload_3
    //   2516: ifeq +4821 -> 7337
    //   2519: aload 17
    //   2521: astore 19
    //   2523: aload_1
    //   2524: invokestatic 1079	com/estrongs/fs/util/j:m	(Ljava/lang/String;)Ljava/lang/String;
    //   2527: astore_1
    //   2528: aload_1
    //   2529: astore 21
    //   2531: aload 24
    //   2533: ifnull +38 -> 2571
    //   2536: aload 17
    //   2538: astore 19
    //   2540: aload 24
    //   2542: bipush 12
    //   2544: iconst_2
    //   2545: anewarray 4	java/lang/Object
    //   2548: dup
    //   2549: iconst_0
    //   2550: aload 27
    //   2552: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2555: invokeinterface 256 1 0
    //   2560: aastore
    //   2561: dup
    //   2562: iconst_1
    //   2563: aload_1
    //   2564: aastore
    //   2565: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2568: aload_1
    //   2569: astore 21
    //   2571: aload 24
    //   2573: ifnull +29 -> 2602
    //   2576: aload 17
    //   2578: astore 19
    //   2580: aload 24
    //   2582: iconst_2
    //   2583: iconst_2
    //   2584: anewarray 4	java/lang/Object
    //   2587: dup
    //   2588: iconst_0
    //   2589: lconst_0
    //   2590: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2593: aastore
    //   2594: dup
    //   2595: iconst_1
    //   2596: aload 22
    //   2598: aastore
    //   2599: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2602: aload 17
    //   2604: astore 19
    //   2606: aload 27
    //   2608: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2611: aload 21
    //   2613: invokestatic 1082	com/estrongs/fs/impl/j/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    //   2616: ifeq +155 -> 2771
    //   2619: aload 24
    //   2621: ifnull +4695 -> 7316
    //   2624: aload 17
    //   2626: astore 19
    //   2628: aload 24
    //   2630: iconst_2
    //   2631: iconst_2
    //   2632: anewarray 4	java/lang/Object
    //   2635: dup
    //   2636: iconst_0
    //   2637: aload 27
    //   2639: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2642: invokeinterface 1018 1 0
    //   2647: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2650: aastore
    //   2651: dup
    //   2652: iconst_1
    //   2653: aload 22
    //   2655: aastore
    //   2656: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2659: aload 17
    //   2661: astore 19
    //   2663: aload 24
    //   2665: bipush 9
    //   2667: iconst_2
    //   2668: anewarray 4	java/lang/Object
    //   2671: dup
    //   2672: iconst_0
    //   2673: lload 15
    //   2675: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2678: aastore
    //   2679: dup
    //   2680: iconst_1
    //   2681: lload 15
    //   2683: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2686: aastore
    //   2687: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2690: aload 17
    //   2692: astore 19
    //   2694: aload 24
    //   2696: bipush 13
    //   2698: iconst_2
    //   2699: anewarray 4	java/lang/Object
    //   2702: dup
    //   2703: iconst_0
    //   2704: aload 22
    //   2706: aastore
    //   2707: dup
    //   2708: iconst_1
    //   2709: aload 21
    //   2711: aastore
    //   2712: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2715: aload 17
    //   2717: astore 19
    //   2719: aload 21
    //   2721: invokestatic 1085	com/estrongs/fs/impl/media/a:a	(Ljava/lang/String;)Z
    //   2724: ifeq +4592 -> 7316
    //   2727: aload 17
    //   2729: astore 19
    //   2731: aload 21
    //   2733: invokestatic 809	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   2736: ifeq +4580 -> 7316
    //   2739: aload 17
    //   2741: astore 19
    //   2743: aload 26
    //   2745: aload 21
    //   2747: invokestatic 1090	com/estrongs/android/d/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   2750: iload_3
    //   2751: istore 4
    //   2753: iload_2
    //   2754: istore 5
    //   2756: iconst_0
    //   2757: istore_3
    //   2758: aload 22
    //   2760: astore_1
    //   2761: iload 4
    //   2763: istore_2
    //   2764: iload 5
    //   2766: istore 4
    //   2768: goto -2473 -> 295
    //   2771: aload 17
    //   2773: astore 19
    //   2775: aload_0
    //   2776: aload 22
    //   2778: aload 21
    //   2780: lload 15
    //   2782: aload 20
    //   2784: arraylength
    //   2785: iconst_3
    //   2786: invokespecial 1092	com/estrongs/fs/d:a	(Ljava/lang/String;Ljava/lang/String;JII)Z
    //   2789: ifeq +113 -> 2902
    //   2792: aload 17
    //   2794: astore 19
    //   2796: new 1094	com/estrongs/android/pop/multicopy/MultiThreadCopy
    //   2799: dup
    //   2800: invokespecial 1095	com/estrongs/android/pop/multicopy/MultiThreadCopy:<init>	()V
    //   2803: aload 24
    //   2805: aload 22
    //   2807: aload 27
    //   2809: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2812: invokeinterface 1098 1 0
    //   2817: aload 21
    //   2819: lload 15
    //   2821: aload 20
    //   2823: arraylength
    //   2824: iconst_3
    //   2825: invokevirtual 1101	com/estrongs/android/pop/multicopy/MultiThreadCopy:a	(Lcom/estrongs/a/a;Ljava/lang/String;JLjava/lang/String;JII)Z
    //   2828: istore 10
    //   2830: iload 10
    //   2832: ifne +3505 -> 6337
    //   2835: aload 17
    //   2837: ifnull +9 -> 2846
    //   2840: aload 17
    //   2842: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   2845: pop
    //   2846: aload 24
    //   2848: ifnull +52 -> 2900
    //   2851: aload 25
    //   2853: invokevirtual 997	java/util/ArrayList:size	()I
    //   2856: ifle +44 -> 2900
    //   2859: aload 24
    //   2861: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   2864: getfield 1010	com/estrongs/a/p:a	I
    //   2867: bipush 16
    //   2869: if_icmpeq +31 -> 2900
    //   2872: aload 24
    //   2874: iconst_4
    //   2875: iconst_1
    //   2876: anewarray 4	java/lang/Object
    //   2879: dup
    //   2880: iconst_0
    //   2881: aload 25
    //   2883: aastore
    //   2884: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2887: aload 25
    //   2889: iconst_0
    //   2890: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   2893: checkcast 955	com/estrongs/fs/b/u
    //   2896: iconst_1
    //   2897: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   2900: iconst_0
    //   2901: ireturn
    //   2902: aload 17
    //   2904: astore 19
    //   2906: aload 21
    //   2908: invokestatic 1104	com/estrongs/android/pop/multicopy/MultiThreadCopy:a	(Ljava/lang/String;)Ljava/io/File;
    //   2911: invokevirtual 1107	java/io/File:exists	()Z
    //   2914: ifeq +113 -> 3027
    //   2917: aload 17
    //   2919: astore 19
    //   2921: new 1094	com/estrongs/android/pop/multicopy/MultiThreadCopy
    //   2924: dup
    //   2925: invokespecial 1095	com/estrongs/android/pop/multicopy/MultiThreadCopy:<init>	()V
    //   2928: aload 24
    //   2930: aload 22
    //   2932: aload 27
    //   2934: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2937: invokeinterface 1098 1 0
    //   2942: aload 21
    //   2944: lload 15
    //   2946: aload 20
    //   2948: arraylength
    //   2949: iconst_1
    //   2950: invokevirtual 1101	com/estrongs/android/pop/multicopy/MultiThreadCopy:a	(Lcom/estrongs/a/a;Ljava/lang/String;JLjava/lang/String;JII)Z
    //   2953: istore 10
    //   2955: iload 10
    //   2957: ifne +3380 -> 6337
    //   2960: aload 17
    //   2962: ifnull +9 -> 2971
    //   2965: aload 17
    //   2967: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   2970: pop
    //   2971: aload 24
    //   2973: ifnull +52 -> 3025
    //   2976: aload 25
    //   2978: invokevirtual 997	java/util/ArrayList:size	()I
    //   2981: ifle +44 -> 3025
    //   2984: aload 24
    //   2986: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   2989: getfield 1010	com/estrongs/a/p:a	I
    //   2992: bipush 16
    //   2994: if_icmpeq +31 -> 3025
    //   2997: aload 24
    //   2999: iconst_4
    //   3000: iconst_1
    //   3001: anewarray 4	java/lang/Object
    //   3004: dup
    //   3005: iconst_0
    //   3006: aload 25
    //   3008: aastore
    //   3009: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3012: aload 25
    //   3014: iconst_0
    //   3015: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3018: checkcast 955	com/estrongs/fs/b/u
    //   3021: iconst_1
    //   3022: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   3025: iconst_0
    //   3026: ireturn
    //   3027: aconst_null
    //   3028: astore 18
    //   3030: aload 17
    //   3032: astore 19
    //   3034: aload 27
    //   3036: getfield 1109	com/estrongs/fs/b/u:c	J
    //   3039: lconst_0
    //   3040: lcmp
    //   3041: ifgt +8 -> 3049
    //   3044: iload 4
    //   3046: ifeq +4448 -> 7494
    //   3049: aload 17
    //   3051: astore 19
    //   3053: aload 21
    //   3055: invokestatic 1026	com/estrongs/fs/d:i	(Ljava/lang/String;)Z
    //   3058: ifeq +4436 -> 7494
    //   3061: aload 17
    //   3063: astore 19
    //   3065: aload_0
    //   3066: aload 21
    //   3068: invokevirtual 1021	com/estrongs/fs/d:b	(Ljava/lang/String;)Z
    //   3071: ifeq +4423 -> 7494
    //   3074: iconst_1
    //   3075: istore 4
    //   3077: iload 4
    //   3079: ifeq +18 -> 3097
    //   3082: aload 17
    //   3084: astore 19
    //   3086: aload 27
    //   3088: aload_0
    //   3089: aload 21
    //   3091: invokevirtual 1075	com/estrongs/fs/d:d	(Ljava/lang/String;)J
    //   3094: putfield 1109	com/estrongs/fs/b/u:c	J
    //   3097: iload 4
    //   3099: ifeq +106 -> 3205
    //   3102: aload 17
    //   3104: astore 19
    //   3106: aload 27
    //   3108: getfield 1109	com/estrongs/fs/b/u:c	J
    //   3111: lconst_0
    //   3112: lcmp
    //   3113: ifle +92 -> 3205
    //   3116: aload 24
    //   3118: ifnull +39 -> 3157
    //   3121: aload 17
    //   3123: astore 19
    //   3125: aload 24
    //   3127: iconst_2
    //   3128: iconst_3
    //   3129: anewarray 4	java/lang/Object
    //   3132: dup
    //   3133: iconst_0
    //   3134: aload 27
    //   3136: getfield 1109	com/estrongs/fs/b/u:c	J
    //   3139: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3142: aastore
    //   3143: dup
    //   3144: iconst_1
    //   3145: aload 22
    //   3147: aastore
    //   3148: dup
    //   3149: iconst_2
    //   3150: ldc_w 1111
    //   3153: aastore
    //   3154: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3157: iload 4
    //   3159: ifeq +176 -> 3335
    //   3162: aload 17
    //   3164: astore 19
    //   3166: aload 27
    //   3168: getfield 1109	com/estrongs/fs/b/u:c	J
    //   3171: lload 15
    //   3173: lcmp
    //   3174: ifne +161 -> 3335
    //   3177: lload 15
    //   3179: lconst_0
    //   3180: lcmp
    //   3181: ifeq +154 -> 3335
    //   3184: iload_3
    //   3185: istore 4
    //   3187: iload_2
    //   3188: istore 5
    //   3190: iconst_0
    //   3191: istore_3
    //   3192: aload 22
    //   3194: astore_1
    //   3195: iload 4
    //   3197: istore_2
    //   3198: iload 5
    //   3200: istore 4
    //   3202: goto -2907 -> 295
    //   3205: aload 17
    //   3207: astore 19
    //   3209: aload 27
    //   3211: lconst_0
    //   3212: putfield 1109	com/estrongs/fs/b/u:c	J
    //   3215: goto -58 -> 3157
    //   3218: astore_1
    //   3219: aload 24
    //   3221: ifnull +46 -> 3267
    //   3224: aload 17
    //   3226: astore 19
    //   3228: aload 24
    //   3230: sipush 10000
    //   3233: new 871	com/estrongs/a/q
    //   3236: dup
    //   3237: aload_0
    //   3238: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   3241: ldc_w 1045
    //   3244: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   3247: iconst_1
    //   3248: anewarray 4	java/lang/Object
    //   3251: dup
    //   3252: iconst_0
    //   3253: ldc_w 1113
    //   3256: aastore
    //   3257: invokestatic 1051	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   3260: aload_1
    //   3261: invokespecial 876	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   3264: invokevirtual 880	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   3267: aload 17
    //   3269: ifnull +9 -> 3278
    //   3272: aload 17
    //   3274: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   3277: pop
    //   3278: aload 24
    //   3280: ifnull -2578 -> 702
    //   3283: aload 25
    //   3285: invokevirtual 997	java/util/ArrayList:size	()I
    //   3288: ifle -2586 -> 702
    //   3291: aload 24
    //   3293: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3296: getfield 1010	com/estrongs/a/p:a	I
    //   3299: bipush 16
    //   3301: if_icmpeq -2599 -> 702
    //   3304: aload 24
    //   3306: iconst_4
    //   3307: iconst_1
    //   3308: anewarray 4	java/lang/Object
    //   3311: dup
    //   3312: iconst_0
    //   3313: aload 25
    //   3315: aastore
    //   3316: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3319: aload 25
    //   3321: iconst_0
    //   3322: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3325: checkcast 955	com/estrongs/fs/b/u
    //   3328: iconst_1
    //   3329: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   3332: goto -2630 -> 702
    //   3335: aload 17
    //   3337: astore 19
    //   3339: new 299	com/estrongs/android/util/TypedMap
    //   3342: dup
    //   3343: invokespecial 445	com/estrongs/android/util/TypedMap:<init>	()V
    //   3346: astore 23
    //   3348: iload 4
    //   3350: ifeq +249 -> 3599
    //   3353: aload 17
    //   3355: astore 19
    //   3357: aload 27
    //   3359: getfield 1109	com/estrongs/fs/b/u:c	J
    //   3362: lstore 13
    //   3364: aload 17
    //   3366: astore 19
    //   3368: aload_0
    //   3369: aload 22
    //   3371: lload 13
    //   3373: aload 23
    //   3375: invokevirtual 848	com/estrongs/fs/d:a	(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    //   3378: astore_1
    //   3379: iload 4
    //   3381: ifeq +94 -> 3475
    //   3384: aload 17
    //   3386: astore 19
    //   3388: aload 27
    //   3390: getfield 1109	com/estrongs/fs/b/u:c	J
    //   3393: lconst_0
    //   3394: lcmp
    //   3395: ifle +80 -> 3475
    //   3398: aload 17
    //   3400: astore 19
    //   3402: aload 23
    //   3404: ldc_w 1111
    //   3407: invokevirtual 407	com/estrongs/android/util/TypedMap:containsKey	(Ljava/lang/Object;)Z
    //   3410: ifeq +65 -> 3475
    //   3413: aload 17
    //   3415: astore 19
    //   3417: aload 23
    //   3419: ldc_w 1111
    //   3422: invokevirtual 412	com/estrongs/android/util/TypedMap:getBoolean	(Ljava/lang/String;)Z
    //   3425: ifne +50 -> 3475
    //   3428: aload 17
    //   3430: astore 19
    //   3432: aload 27
    //   3434: lconst_0
    //   3435: putfield 1109	com/estrongs/fs/b/u:c	J
    //   3438: aload 24
    //   3440: ifnull +35 -> 3475
    //   3443: aload 17
    //   3445: astore 19
    //   3447: aload 24
    //   3449: iconst_2
    //   3450: iconst_3
    //   3451: anewarray 4	java/lang/Object
    //   3454: dup
    //   3455: iconst_0
    //   3456: lconst_0
    //   3457: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3460: aastore
    //   3461: dup
    //   3462: iconst_1
    //   3463: aload 22
    //   3465: aastore
    //   3466: dup
    //   3467: iconst_2
    //   3468: ldc_w 1115
    //   3471: aastore
    //   3472: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3475: aload_1
    //   3476: ifnonnull +462 -> 3938
    //   3479: aload 24
    //   3481: ifnull +51 -> 3532
    //   3484: aload 17
    //   3486: astore 19
    //   3488: aload 24
    //   3490: iconst_2
    //   3491: new 871	com/estrongs/a/q
    //   3494: dup
    //   3495: aload_0
    //   3496: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   3499: ldc_w 1045
    //   3502: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   3505: iconst_1
    //   3506: anewarray 4	java/lang/Object
    //   3509: dup
    //   3510: iconst_0
    //   3511: aload 27
    //   3513: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   3516: invokeinterface 181 1 0
    //   3521: aastore
    //   3522: invokestatic 1051	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   3525: aconst_null
    //   3526: invokespecial 876	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   3529: invokevirtual 880	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   3532: aload 17
    //   3534: ifnull +9 -> 3543
    //   3537: aload 17
    //   3539: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   3542: pop
    //   3543: aload 24
    //   3545: ifnull +52 -> 3597
    //   3548: aload 25
    //   3550: invokevirtual 997	java/util/ArrayList:size	()I
    //   3553: ifle +44 -> 3597
    //   3556: aload 24
    //   3558: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3561: getfield 1010	com/estrongs/a/p:a	I
    //   3564: bipush 16
    //   3566: if_icmpeq +31 -> 3597
    //   3569: aload 24
    //   3571: iconst_4
    //   3572: iconst_1
    //   3573: anewarray 4	java/lang/Object
    //   3576: dup
    //   3577: iconst_0
    //   3578: aload 25
    //   3580: aastore
    //   3581: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3584: aload 25
    //   3586: iconst_0
    //   3587: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3590: checkcast 955	com/estrongs/fs/b/u
    //   3593: iconst_1
    //   3594: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   3597: iconst_0
    //   3598: ireturn
    //   3599: lconst_0
    //   3600: lstore 13
    //   3602: goto -238 -> 3364
    //   3605: astore_1
    //   3606: aload 17
    //   3608: astore 19
    //   3610: aload_1
    //   3611: invokevirtual 1019	com/estrongs/fs/FileSystemException:getMessage	()Ljava/lang/String;
    //   3614: astore 28
    //   3616: aload 18
    //   3618: astore_1
    //   3619: aload 28
    //   3621: ifnull -242 -> 3379
    //   3624: aload 17
    //   3626: astore 19
    //   3628: aload 28
    //   3630: ldc_w 1117
    //   3633: invokevirtual 262	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   3636: ifeq +183 -> 3819
    //   3639: aload 17
    //   3641: astore 19
    //   3643: aload 24
    //   3645: ldc_w 1119
    //   3648: iconst_1
    //   3649: anewarray 4	java/lang/Object
    //   3652: dup
    //   3653: iconst_0
    //   3654: aload 22
    //   3656: aastore
    //   3657: invokevirtual 1032	com/estrongs/a/a:getDecision	(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;
    //   3660: checkcast 1119	com/estrongs/a/a/c
    //   3663: astore_1
    //   3664: aload 17
    //   3666: astore 19
    //   3668: aload_1
    //   3669: getfield 1120	com/estrongs/a/a/c:d	Z
    //   3672: ifeq +79 -> 3751
    //   3675: aload 17
    //   3677: astore 19
    //   3679: aload 24
    //   3681: invokevirtual 1123	com/estrongs/a/a:requestStop	()V
    //   3684: aload 17
    //   3686: ifnull +9 -> 3695
    //   3689: aload 17
    //   3691: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   3694: pop
    //   3695: aload 24
    //   3697: ifnull +52 -> 3749
    //   3700: aload 25
    //   3702: invokevirtual 997	java/util/ArrayList:size	()I
    //   3705: ifle +44 -> 3749
    //   3708: aload 24
    //   3710: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3713: getfield 1010	com/estrongs/a/p:a	I
    //   3716: bipush 16
    //   3718: if_icmpeq +31 -> 3749
    //   3721: aload 24
    //   3723: iconst_4
    //   3724: iconst_1
    //   3725: anewarray 4	java/lang/Object
    //   3728: dup
    //   3729: iconst_0
    //   3730: aload 25
    //   3732: aastore
    //   3733: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3736: aload 25
    //   3738: iconst_0
    //   3739: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3742: checkcast 955	com/estrongs/fs/b/u
    //   3745: iconst_1
    //   3746: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   3749: iconst_0
    //   3750: ireturn
    //   3751: aload 17
    //   3753: astore 19
    //   3755: aload 23
    //   3757: ldc_w 1125
    //   3760: aload_1
    //   3761: getfield 1126	com/estrongs/a/a/c:b	Ljava/lang/String;
    //   3764: invokevirtual 318	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   3767: pop
    //   3768: aload 17
    //   3770: astore 19
    //   3772: aload 23
    //   3774: ldc_w 1128
    //   3777: aload_1
    //   3778: getfield 1130	com/estrongs/a/a/c:c	Ljava/lang/String;
    //   3781: invokevirtual 318	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   3784: pop
    //   3785: iload 4
    //   3787: ifeq +3713 -> 7500
    //   3790: aload 17
    //   3792: astore 19
    //   3794: aload 27
    //   3796: getfield 1109	com/estrongs/fs/b/u:c	J
    //   3799: lstore 13
    //   3801: aload 17
    //   3803: astore 19
    //   3805: aload_0
    //   3806: aload 22
    //   3808: lload 13
    //   3810: aload 23
    //   3812: invokevirtual 848	com/estrongs/fs/d:a	(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    //   3815: astore_1
    //   3816: goto -437 -> 3379
    //   3819: aload 18
    //   3821: astore_1
    //   3822: iload 4
    //   3824: ifeq -445 -> 3379
    //   3827: aload 18
    //   3829: astore_1
    //   3830: aload 17
    //   3832: astore 19
    //   3834: aload 28
    //   3836: ldc_w 1132
    //   3839: invokevirtual 262	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   3842: ifeq -463 -> 3379
    //   3845: aload 17
    //   3847: astore 19
    //   3849: aload 24
    //   3851: invokevirtual 1136	com/estrongs/a/a:summary	()Lorg/json/JSONObject;
    //   3854: ldc_w 1138
    //   3857: iconst_1
    //   3858: invokevirtual 1143	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   3861: pop
    //   3862: aload 17
    //   3864: astore 19
    //   3866: aload 24
    //   3868: invokevirtual 1123	com/estrongs/a/a:requestStop	()V
    //   3871: aload 17
    //   3873: ifnull +9 -> 3882
    //   3876: aload 17
    //   3878: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   3881: pop
    //   3882: aload 24
    //   3884: ifnull +52 -> 3936
    //   3887: aload 25
    //   3889: invokevirtual 997	java/util/ArrayList:size	()I
    //   3892: ifle +44 -> 3936
    //   3895: aload 24
    //   3897: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3900: getfield 1010	com/estrongs/a/p:a	I
    //   3903: bipush 16
    //   3905: if_icmpeq +31 -> 3936
    //   3908: aload 24
    //   3910: iconst_4
    //   3911: iconst_1
    //   3912: anewarray 4	java/lang/Object
    //   3915: dup
    //   3916: iconst_0
    //   3917: aload 25
    //   3919: aastore
    //   3920: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3923: aload 25
    //   3925: iconst_0
    //   3926: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3929: checkcast 955	com/estrongs/fs/b/u
    //   3932: iconst_1
    //   3933: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   3936: iconst_0
    //   3937: ireturn
    //   3938: aload 17
    //   3940: astore 19
    //   3942: aload 21
    //   3944: invokestatic 699	com/estrongs/android/util/am:aw	(Ljava/lang/String;)Z
    //   3947: ifne +27 -> 3974
    //   3950: aload 17
    //   3952: astore 19
    //   3954: aload 21
    //   3956: invokestatic 702	com/estrongs/android/util/am:aB	(Ljava/lang/String;)Z
    //   3959: ifne +15 -> 3974
    //   3962: aload 17
    //   3964: astore 19
    //   3966: aload 21
    //   3968: invokestatic 518	com/estrongs/android/util/am:az	(Ljava/lang/String;)Z
    //   3971: ifeq +172 -> 4143
    //   3974: lload 15
    //   3976: ldc2_w 370
    //   3979: lcmp
    //   3980: ifeq +3324 -> 7304
    //   3983: aload 17
    //   3985: astore 19
    //   3987: aload_0
    //   3988: aload 21
    //   3990: invokestatic 510	com/estrongs/android/util/am:bM	(Ljava/lang/String;)Ljava/lang/String;
    //   3993: lload 15
    //   3995: invokevirtual 1144	com/estrongs/fs/d:b	(Ljava/lang/String;J)Ljava/io/OutputStream;
    //   3998: astore 23
    //   4000: aload_1
    //   4001: astore 18
    //   4003: aload 23
    //   4005: astore_1
    //   4006: lload 15
    //   4008: ldc2_w 370
    //   4011: lcmp
    //   4012: ifne +29 -> 4041
    //   4015: aload 17
    //   4017: astore 19
    //   4019: aload 27
    //   4021: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   4024: invokeinterface 171 1 0
    //   4029: invokestatic 73	com/estrongs/android/util/am:G	(Ljava/lang/String;)I
    //   4032: istore 5
    //   4034: iload 5
    //   4036: bipush 18
    //   4038: if_icmpne +12 -> 4050
    //   4041: aload 18
    //   4043: ifnull +7 -> 4050
    //   4046: aload_1
    //   4047: ifnonnull +509 -> 4556
    //   4050: aload 17
    //   4052: astore 19
    //   4054: aload 27
    //   4056: getfield 1109	com/estrongs/fs/b/u:c	J
    //   4059: lconst_0
    //   4060: lcmp
    //   4061: ifne +15 -> 4076
    //   4064: aload 17
    //   4066: astore 19
    //   4068: aload_0
    //   4069: aload 21
    //   4071: aconst_null
    //   4072: invokevirtual 1147	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   4075: pop
    //   4076: aload 17
    //   4078: ifnull +9 -> 4087
    //   4081: aload 17
    //   4083: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   4086: pop
    //   4087: aload 24
    //   4089: ifnull +52 -> 4141
    //   4092: aload 25
    //   4094: invokevirtual 997	java/util/ArrayList:size	()I
    //   4097: ifle +44 -> 4141
    //   4100: aload 24
    //   4102: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4105: getfield 1010	com/estrongs/a/p:a	I
    //   4108: bipush 16
    //   4110: if_icmpeq +31 -> 4141
    //   4113: aload 24
    //   4115: iconst_4
    //   4116: iconst_1
    //   4117: anewarray 4	java/lang/Object
    //   4120: dup
    //   4121: iconst_0
    //   4122: aload 25
    //   4124: aastore
    //   4125: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4128: aload 25
    //   4130: iconst_0
    //   4131: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4134: checkcast 955	com/estrongs/fs/b/u
    //   4137: iconst_1
    //   4138: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   4141: iconst_0
    //   4142: ireturn
    //   4143: aload 17
    //   4145: astore 19
    //   4147: aload 21
    //   4149: invokestatic 788	com/estrongs/android/util/am:aG	(Ljava/lang/String;)Z
    //   4152: ifeq +264 -> 4416
    //   4155: aconst_null
    //   4156: astore 18
    //   4158: aload 17
    //   4160: astore 19
    //   4162: aload 21
    //   4164: invokestatic 1150	com/estrongs/android/util/am:as	(Ljava/lang/String;)Z
    //   4167: ifne +196 -> 4363
    //   4170: aload 24
    //   4172: ifnull +124 -> 4296
    //   4175: aload 17
    //   4177: astore 19
    //   4179: aload 24
    //   4181: ldc_w 1152
    //   4184: iconst_1
    //   4185: anewarray 4	java/lang/Object
    //   4188: dup
    //   4189: iconst_0
    //   4190: aload 21
    //   4192: aastore
    //   4193: invokevirtual 1032	com/estrongs/a/a:getDecision	(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;
    //   4196: checkcast 1152	com/estrongs/a/a/i
    //   4199: astore 23
    //   4201: aload 23
    //   4203: astore 18
    //   4205: aload 17
    //   4207: astore 19
    //   4209: aload 23
    //   4211: getfield 1153	com/estrongs/a/a/i:g	I
    //   4214: iconst_3
    //   4215: if_icmpne +148 -> 4363
    //   4218: aload 17
    //   4220: astore 19
    //   4222: aload 24
    //   4224: iconst_1
    //   4225: aconst_null
    //   4226: invokevirtual 880	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   4229: aload 17
    //   4231: ifnull +9 -> 4240
    //   4234: aload 17
    //   4236: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   4239: pop
    //   4240: aload 24
    //   4242: ifnull +52 -> 4294
    //   4245: aload 25
    //   4247: invokevirtual 997	java/util/ArrayList:size	()I
    //   4250: ifle +44 -> 4294
    //   4253: aload 24
    //   4255: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4258: getfield 1010	com/estrongs/a/p:a	I
    //   4261: bipush 16
    //   4263: if_icmpeq +31 -> 4294
    //   4266: aload 24
    //   4268: iconst_4
    //   4269: iconst_1
    //   4270: anewarray 4	java/lang/Object
    //   4273: dup
    //   4274: iconst_0
    //   4275: aload 25
    //   4277: aastore
    //   4278: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4281: aload 25
    //   4283: iconst_0
    //   4284: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4287: checkcast 955	com/estrongs/fs/b/u
    //   4290: iconst_1
    //   4291: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   4294: iconst_0
    //   4295: ireturn
    //   4296: aload 17
    //   4298: ifnull +9 -> 4307
    //   4301: aload 17
    //   4303: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   4306: pop
    //   4307: aload 24
    //   4309: ifnull +52 -> 4361
    //   4312: aload 25
    //   4314: invokevirtual 997	java/util/ArrayList:size	()I
    //   4317: ifle +44 -> 4361
    //   4320: aload 24
    //   4322: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4325: getfield 1010	com/estrongs/a/p:a	I
    //   4328: bipush 16
    //   4330: if_icmpeq +31 -> 4361
    //   4333: aload 24
    //   4335: iconst_4
    //   4336: iconst_1
    //   4337: anewarray 4	java/lang/Object
    //   4340: dup
    //   4341: iconst_0
    //   4342: aload 25
    //   4344: aastore
    //   4345: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4348: aload 25
    //   4350: iconst_0
    //   4351: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4354: checkcast 955	com/estrongs/fs/b/u
    //   4357: iconst_1
    //   4358: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   4361: iconst_0
    //   4362: ireturn
    //   4363: aload 18
    //   4365: ifnonnull +37 -> 4402
    //   4368: aload 17
    //   4370: astore 19
    //   4372: getstatic 636	com/estrongs/android/util/TypedMap:EMPTY	Lcom/estrongs/android/util/TypedMap;
    //   4375: astore 18
    //   4377: aload 17
    //   4379: astore 19
    //   4381: aload_0
    //   4382: aload 21
    //   4384: lload 15
    //   4386: aload 18
    //   4388: invokevirtual 1156	com/estrongs/fs/d:b	(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    //   4391: astore 23
    //   4393: aload_1
    //   4394: astore 18
    //   4396: aload 23
    //   4398: astore_1
    //   4399: goto -393 -> 4006
    //   4402: aload 17
    //   4404: astore 19
    //   4406: aload 18
    //   4408: getfield 1158	com/estrongs/a/a/i:b	Lcom/estrongs/android/util/TypedMap;
    //   4411: astore 18
    //   4413: goto -36 -> 4377
    //   4416: iload 4
    //   4418: ifeq +17 -> 4435
    //   4421: aload 17
    //   4423: astore 19
    //   4425: aload 27
    //   4427: getfield 1109	com/estrongs/fs/b/u:c	J
    //   4430: lconst_0
    //   4431: lcmp
    //   4432: ifne +103 -> 4535
    //   4435: aload 17
    //   4437: astore 19
    //   4439: aload_0
    //   4440: aload 21
    //   4442: lload 15
    //   4444: invokevirtual 1144	com/estrongs/fs/d:b	(Ljava/lang/String;J)Ljava/io/OutputStream;
    //   4447: astore 18
    //   4449: iload 4
    //   4451: ifeq +2840 -> 7291
    //   4454: aload 18
    //   4456: ifnonnull +2835 -> 7291
    //   4459: aload 24
    //   4461: ifnull +35 -> 4496
    //   4464: aload 17
    //   4466: astore 19
    //   4468: aload 24
    //   4470: iconst_2
    //   4471: iconst_2
    //   4472: anewarray 4	java/lang/Object
    //   4475: dup
    //   4476: iconst_0
    //   4477: lconst_0
    //   4478: aload 27
    //   4480: getfield 1109	com/estrongs/fs/b/u:c	J
    //   4483: lsub
    //   4484: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4487: aastore
    //   4488: dup
    //   4489: iconst_1
    //   4490: aload 22
    //   4492: aastore
    //   4493: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4496: aload 17
    //   4498: astore 19
    //   4500: aload 27
    //   4502: lconst_0
    //   4503: putfield 1109	com/estrongs/fs/b/u:c	J
    //   4506: aload 17
    //   4508: astore 19
    //   4510: aload_0
    //   4511: aload 21
    //   4513: lload 15
    //   4515: invokevirtual 1144	com/estrongs/fs/d:b	(Ljava/lang/String;J)Ljava/io/OutputStream;
    //   4518: astore_1
    //   4519: aload 17
    //   4521: astore 19
    //   4523: aload_0
    //   4524: aload 22
    //   4526: lconst_0
    //   4527: invokevirtual 1159	com/estrongs/fs/d:a	(Ljava/lang/String;J)Ljava/io/InputStream;
    //   4530: astore 18
    //   4532: goto -526 -> 4006
    //   4535: aload 17
    //   4537: astore 19
    //   4539: aload_0
    //   4540: aload 21
    //   4542: aload 27
    //   4544: getfield 1109	com/estrongs/fs/b/u:c	J
    //   4547: iconst_1
    //   4548: invokevirtual 1161	com/estrongs/fs/d:a	(Ljava/lang/String;JZ)Ljava/io/OutputStream;
    //   4551: astore 18
    //   4553: goto -104 -> 4449
    //   4556: aload 24
    //   4558: ifnull +37 -> 4595
    //   4561: aload 17
    //   4563: astore 19
    //   4565: aload 24
    //   4567: bipush 9
    //   4569: iconst_2
    //   4570: anewarray 4	java/lang/Object
    //   4573: dup
    //   4574: iconst_0
    //   4575: lload 15
    //   4577: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4580: aastore
    //   4581: dup
    //   4582: iconst_1
    //   4583: aload 27
    //   4585: getfield 1109	com/estrongs/fs/b/u:c	J
    //   4588: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4591: aastore
    //   4592: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4595: aload 17
    //   4597: astore 19
    //   4599: aload 27
    //   4601: getfield 1109	com/estrongs/fs/b/u:c	J
    //   4604: lstore 13
    //   4606: aload 18
    //   4608: aload 20
    //   4610: invokevirtual 1167	java/io/InputStream:read	([B)I
    //   4613: istore 5
    //   4615: iload 5
    //   4617: iconst_m1
    //   4618: if_icmpeq +1323 -> 5941
    //   4621: aload 24
    //   4623: ifnull +631 -> 5254
    //   4626: aload 24
    //   4628: invokevirtual 161	com/estrongs/a/a:taskStopped	()Z
    //   4631: ifeq +623 -> 5254
    //   4634: iload 4
    //   4636: ifne +28 -> 4664
    //   4639: aload 24
    //   4641: iconst_2
    //   4642: iconst_2
    //   4643: anewarray 4	java/lang/Object
    //   4646: dup
    //   4647: iconst_0
    //   4648: lconst_0
    //   4649: lload 13
    //   4651: lsub
    //   4652: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4655: aastore
    //   4656: dup
    //   4657: iconst_1
    //   4658: aload 22
    //   4660: aastore
    //   4661: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4664: aload_1
    //   4665: ifnull +2623 -> 7288
    //   4668: aload_1
    //   4669: invokevirtual 1172	java/io/OutputStream:close	()V
    //   4672: aconst_null
    //   4673: astore_1
    //   4674: aload 24
    //   4676: iconst_1
    //   4677: invokevirtual 1176	com/estrongs/a/a:enableTaskHide	(Z)V
    //   4680: aload_0
    //   4681: aload 21
    //   4683: aconst_null
    //   4684: invokevirtual 1147	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   4687: pop
    //   4688: aload 24
    //   4690: iconst_0
    //   4691: invokevirtual 1176	com/estrongs/a/a:enableTaskHide	(Z)V
    //   4694: aload 18
    //   4696: ifnull +12 -> 4708
    //   4699: aload 17
    //   4701: astore 19
    //   4703: aload 18
    //   4705: invokevirtual 1177	java/io/InputStream:close	()V
    //   4708: aload_1
    //   4709: ifnull +11 -> 4720
    //   4712: aload 17
    //   4714: astore 19
    //   4716: aload_1
    //   4717: invokevirtual 1172	java/io/OutputStream:close	()V
    //   4720: lload 13
    //   4722: lload 15
    //   4724: lcmp
    //   4725: ifge +233 -> 4958
    //   4728: iload 4
    //   4730: ifne +37 -> 4767
    //   4733: aload 24
    //   4735: ifnull +32 -> 4767
    //   4738: aload 17
    //   4740: astore 19
    //   4742: aload 24
    //   4744: iconst_2
    //   4745: iconst_2
    //   4746: anewarray 4	java/lang/Object
    //   4749: dup
    //   4750: iconst_0
    //   4751: lconst_0
    //   4752: lload 13
    //   4754: lsub
    //   4755: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4758: aastore
    //   4759: dup
    //   4760: iconst_1
    //   4761: aload 22
    //   4763: aastore
    //   4764: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4767: aload 17
    //   4769: ifnull +9 -> 4778
    //   4772: aload 17
    //   4774: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   4777: pop
    //   4778: aload 24
    //   4780: ifnull +52 -> 4832
    //   4783: aload 25
    //   4785: invokevirtual 997	java/util/ArrayList:size	()I
    //   4788: ifle +44 -> 4832
    //   4791: aload 24
    //   4793: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4796: getfield 1010	com/estrongs/a/p:a	I
    //   4799: bipush 16
    //   4801: if_icmpeq +31 -> 4832
    //   4804: aload 24
    //   4806: iconst_4
    //   4807: iconst_1
    //   4808: anewarray 4	java/lang/Object
    //   4811: dup
    //   4812: iconst_0
    //   4813: aload 25
    //   4815: aastore
    //   4816: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4819: aload 25
    //   4821: iconst_0
    //   4822: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4825: checkcast 955	com/estrongs/fs/b/u
    //   4828: iconst_1
    //   4829: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   4832: iconst_0
    //   4833: ireturn
    //   4834: astore 19
    //   4836: goto -162 -> 4674
    //   4839: astore 18
    //   4841: aload 17
    //   4843: astore 19
    //   4845: aload_1
    //   4846: instanceof 1179
    //   4849: ifeq -129 -> 4720
    //   4852: iload 4
    //   4854: ifne +37 -> 4891
    //   4857: aload 24
    //   4859: ifnull +32 -> 4891
    //   4862: aload 17
    //   4864: astore 19
    //   4866: aload 24
    //   4868: iconst_2
    //   4869: iconst_2
    //   4870: anewarray 4	java/lang/Object
    //   4873: dup
    //   4874: iconst_0
    //   4875: lconst_0
    //   4876: lload 13
    //   4878: lsub
    //   4879: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4882: aastore
    //   4883: dup
    //   4884: iconst_1
    //   4885: aload 22
    //   4887: aastore
    //   4888: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4891: aload 17
    //   4893: ifnull +9 -> 4902
    //   4896: aload 17
    //   4898: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   4901: pop
    //   4902: aload 24
    //   4904: ifnull +52 -> 4956
    //   4907: aload 25
    //   4909: invokevirtual 997	java/util/ArrayList:size	()I
    //   4912: ifle +44 -> 4956
    //   4915: aload 24
    //   4917: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4920: getfield 1010	com/estrongs/a/p:a	I
    //   4923: bipush 16
    //   4925: if_icmpeq +31 -> 4956
    //   4928: aload 24
    //   4930: iconst_4
    //   4931: iconst_1
    //   4932: anewarray 4	java/lang/Object
    //   4935: dup
    //   4936: iconst_0
    //   4937: aload 25
    //   4939: aastore
    //   4940: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4943: aload 25
    //   4945: iconst_0
    //   4946: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4949: checkcast 955	com/estrongs/fs/b/u
    //   4952: iconst_1
    //   4953: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   4956: iconst_0
    //   4957: ireturn
    //   4958: aload 24
    //   4960: ifnull +131 -> 5091
    //   4963: aload 17
    //   4965: astore 19
    //   4967: invokestatic 1182	com/estrongs/android/util/bd:l	()Z
    //   4970: ifeq +188 -> 5158
    //   4973: aload 17
    //   4975: astore 19
    //   4977: aload 24
    //   4979: instanceof 962
    //   4982: ifeq +176 -> 5158
    //   4985: aload 17
    //   4987: astore 19
    //   4989: aload 21
    //   4991: invokestatic 1185	com/estrongs/android/util/am:bs	(Ljava/lang/String;)Z
    //   4994: ifeq +164 -> 5158
    //   4997: aload 17
    //   4999: astore 19
    //   5001: aload 24
    //   5003: checkcast 962	com/estrongs/fs/b/r
    //   5006: getfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5009: ifnull +149 -> 5158
    //   5012: aload 17
    //   5014: astore 19
    //   5016: aload 24
    //   5018: bipush 13
    //   5020: iconst_2
    //   5021: anewarray 4	java/lang/Object
    //   5024: dup
    //   5025: iconst_0
    //   5026: aload 22
    //   5028: aastore
    //   5029: dup
    //   5030: iconst_1
    //   5031: aload 24
    //   5033: checkcast 962	com/estrongs/fs/b/r
    //   5036: getfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5039: aastore
    //   5040: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5043: aload 17
    //   5045: astore 19
    //   5047: aload 24
    //   5049: checkcast 962	com/estrongs/fs/b/r
    //   5052: aconst_null
    //   5053: putfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5056: aload 17
    //   5058: astore 19
    //   5060: aload 21
    //   5062: invokestatic 1085	com/estrongs/fs/impl/media/a:a	(Ljava/lang/String;)Z
    //   5065: ifeq +26 -> 5091
    //   5068: aload 17
    //   5070: astore 19
    //   5072: aload 21
    //   5074: invokestatic 809	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   5077: ifeq +14 -> 5091
    //   5080: aload 17
    //   5082: astore 19
    //   5084: aload 26
    //   5086: aload 21
    //   5088: invokestatic 1090	com/estrongs/android/d/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   5091: aload 17
    //   5093: ifnull +9 -> 5102
    //   5096: aload 17
    //   5098: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   5101: pop
    //   5102: aload 24
    //   5104: ifnull +52 -> 5156
    //   5107: aload 25
    //   5109: invokevirtual 997	java/util/ArrayList:size	()I
    //   5112: ifle +44 -> 5156
    //   5115: aload 24
    //   5117: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5120: getfield 1010	com/estrongs/a/p:a	I
    //   5123: bipush 16
    //   5125: if_icmpeq +31 -> 5156
    //   5128: aload 24
    //   5130: iconst_4
    //   5131: iconst_1
    //   5132: anewarray 4	java/lang/Object
    //   5135: dup
    //   5136: iconst_0
    //   5137: aload 25
    //   5139: aastore
    //   5140: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5143: aload 25
    //   5145: iconst_0
    //   5146: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5149: checkcast 955	com/estrongs/fs/b/u
    //   5152: iconst_1
    //   5153: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   5156: iconst_0
    //   5157: ireturn
    //   5158: aload 17
    //   5160: astore 19
    //   5162: aload 24
    //   5164: bipush 13
    //   5166: iconst_2
    //   5167: anewarray 4	java/lang/Object
    //   5170: dup
    //   5171: iconst_0
    //   5172: aload 22
    //   5174: aastore
    //   5175: dup
    //   5176: iconst_1
    //   5177: aload 21
    //   5179: aastore
    //   5180: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5183: goto -127 -> 5056
    //   5186: astore_1
    //   5187: aload 19
    //   5189: ifnull +9 -> 5198
    //   5192: aload 19
    //   5194: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   5197: pop
    //   5198: aload 24
    //   5200: ifnull +52 -> 5252
    //   5203: aload 25
    //   5205: invokevirtual 997	java/util/ArrayList:size	()I
    //   5208: ifle +44 -> 5252
    //   5211: aload 24
    //   5213: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5216: getfield 1010	com/estrongs/a/p:a	I
    //   5219: bipush 16
    //   5221: if_icmpeq +31 -> 5252
    //   5224: aload 24
    //   5226: iconst_4
    //   5227: iconst_1
    //   5228: anewarray 4	java/lang/Object
    //   5231: dup
    //   5232: iconst_0
    //   5233: aload 25
    //   5235: aastore
    //   5236: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5239: aload 25
    //   5241: iconst_0
    //   5242: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5245: checkcast 955	com/estrongs/fs/b/u
    //   5248: iconst_1
    //   5249: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   5252: aload_1
    //   5253: athrow
    //   5254: aload_1
    //   5255: aload 20
    //   5257: iconst_0
    //   5258: iload 5
    //   5260: invokevirtual 1192	java/io/OutputStream:write	([BII)V
    //   5263: iload 5
    //   5265: i2l
    //   5266: lload 13
    //   5268: ladd
    //   5269: lstore 13
    //   5271: aload_1
    //   5272: astore 19
    //   5274: aload 27
    //   5276: aload 27
    //   5278: getfield 1109	com/estrongs/fs/b/u:c	J
    //   5281: iload 5
    //   5283: i2l
    //   5284: ladd
    //   5285: putfield 1109	com/estrongs/fs/b/u:c	J
    //   5288: aload 24
    //   5290: ifnull +65 -> 5355
    //   5293: aload_1
    //   5294: astore 19
    //   5296: aload 24
    //   5298: bipush 9
    //   5300: iconst_2
    //   5301: anewarray 4	java/lang/Object
    //   5304: dup
    //   5305: iconst_0
    //   5306: lload 15
    //   5308: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5311: aastore
    //   5312: dup
    //   5313: iconst_1
    //   5314: aload 27
    //   5316: getfield 1109	com/estrongs/fs/b/u:c	J
    //   5319: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5322: aastore
    //   5323: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5326: aload_1
    //   5327: astore 19
    //   5329: aload 24
    //   5331: iconst_2
    //   5332: iconst_2
    //   5333: anewarray 4	java/lang/Object
    //   5336: dup
    //   5337: iconst_0
    //   5338: iload 5
    //   5340: i2l
    //   5341: lconst_0
    //   5342: ladd
    //   5343: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5346: aastore
    //   5347: dup
    //   5348: iconst_1
    //   5349: aload 22
    //   5351: aastore
    //   5352: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5355: aload 24
    //   5357: ifnull +1928 -> 7285
    //   5360: aload_1
    //   5361: astore 19
    //   5363: aload 24
    //   5365: invokevirtual 161	com/estrongs/a/a:taskStopped	()Z
    //   5368: ifeq +1917 -> 7285
    //   5371: iload 4
    //   5373: ifne +31 -> 5404
    //   5376: aload_1
    //   5377: astore 19
    //   5379: aload 24
    //   5381: iconst_2
    //   5382: iconst_2
    //   5383: anewarray 4	java/lang/Object
    //   5386: dup
    //   5387: iconst_0
    //   5388: lconst_0
    //   5389: lload 13
    //   5391: lsub
    //   5392: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5395: aastore
    //   5396: dup
    //   5397: iconst_1
    //   5398: aload 22
    //   5400: aastore
    //   5401: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5404: aload_1
    //   5405: astore 20
    //   5407: aload_1
    //   5408: ifnull +44 -> 5452
    //   5411: aload_1
    //   5412: astore 19
    //   5414: aload_1
    //   5415: invokevirtual 1172	java/io/OutputStream:close	()V
    //   5418: aconst_null
    //   5419: astore_1
    //   5420: aload_1
    //   5421: astore 19
    //   5423: aload 24
    //   5425: iconst_1
    //   5426: invokevirtual 1176	com/estrongs/a/a:enableTaskHide	(Z)V
    //   5429: aload_1
    //   5430: astore 19
    //   5432: aload_0
    //   5433: aload 21
    //   5435: aconst_null
    //   5436: invokevirtual 1147	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   5439: pop
    //   5440: aload_1
    //   5441: astore 19
    //   5443: aload 24
    //   5445: iconst_0
    //   5446: invokevirtual 1176	com/estrongs/a/a:enableTaskHide	(Z)V
    //   5449: aload_1
    //   5450: astore 20
    //   5452: aload 18
    //   5454: ifnull +12 -> 5466
    //   5457: aload 17
    //   5459: astore 19
    //   5461: aload 18
    //   5463: invokevirtual 1177	java/io/InputStream:close	()V
    //   5466: aload 20
    //   5468: ifnull +12 -> 5480
    //   5471: aload 17
    //   5473: astore 19
    //   5475: aload 20
    //   5477: invokevirtual 1172	java/io/OutputStream:close	()V
    //   5480: lload 13
    //   5482: lload 15
    //   5484: lcmp
    //   5485: ifge +228 -> 5713
    //   5488: iload 4
    //   5490: ifne +37 -> 5527
    //   5493: aload 24
    //   5495: ifnull +32 -> 5527
    //   5498: aload 17
    //   5500: astore 19
    //   5502: aload 24
    //   5504: iconst_2
    //   5505: iconst_2
    //   5506: anewarray 4	java/lang/Object
    //   5509: dup
    //   5510: iconst_0
    //   5511: lconst_0
    //   5512: lload 13
    //   5514: lsub
    //   5515: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5518: aastore
    //   5519: dup
    //   5520: iconst_1
    //   5521: aload 22
    //   5523: aastore
    //   5524: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5527: aload 17
    //   5529: ifnull +9 -> 5538
    //   5532: aload 17
    //   5534: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   5537: pop
    //   5538: aload 24
    //   5540: ifnull +52 -> 5592
    //   5543: aload 25
    //   5545: invokevirtual 997	java/util/ArrayList:size	()I
    //   5548: ifle +44 -> 5592
    //   5551: aload 24
    //   5553: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5556: getfield 1010	com/estrongs/a/p:a	I
    //   5559: bipush 16
    //   5561: if_icmpeq +31 -> 5592
    //   5564: aload 24
    //   5566: iconst_4
    //   5567: iconst_1
    //   5568: anewarray 4	java/lang/Object
    //   5571: dup
    //   5572: iconst_0
    //   5573: aload 25
    //   5575: aastore
    //   5576: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5579: aload 25
    //   5581: iconst_0
    //   5582: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5585: checkcast 955	com/estrongs/fs/b/u
    //   5588: iconst_1
    //   5589: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   5592: iconst_0
    //   5593: ireturn
    //   5594: astore_1
    //   5595: aload 17
    //   5597: astore 19
    //   5599: aload 20
    //   5601: instanceof 1179
    //   5604: ifeq -124 -> 5480
    //   5607: iload 4
    //   5609: ifne +37 -> 5646
    //   5612: aload 24
    //   5614: ifnull +32 -> 5646
    //   5617: aload 17
    //   5619: astore 19
    //   5621: aload 24
    //   5623: iconst_2
    //   5624: iconst_2
    //   5625: anewarray 4	java/lang/Object
    //   5628: dup
    //   5629: iconst_0
    //   5630: lconst_0
    //   5631: lload 13
    //   5633: lsub
    //   5634: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5637: aastore
    //   5638: dup
    //   5639: iconst_1
    //   5640: aload 22
    //   5642: aastore
    //   5643: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5646: aload 17
    //   5648: ifnull +9 -> 5657
    //   5651: aload 17
    //   5653: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   5656: pop
    //   5657: aload 24
    //   5659: ifnull +52 -> 5711
    //   5662: aload 25
    //   5664: invokevirtual 997	java/util/ArrayList:size	()I
    //   5667: ifle +44 -> 5711
    //   5670: aload 24
    //   5672: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5675: getfield 1010	com/estrongs/a/p:a	I
    //   5678: bipush 16
    //   5680: if_icmpeq +31 -> 5711
    //   5683: aload 24
    //   5685: iconst_4
    //   5686: iconst_1
    //   5687: anewarray 4	java/lang/Object
    //   5690: dup
    //   5691: iconst_0
    //   5692: aload 25
    //   5694: aastore
    //   5695: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5698: aload 25
    //   5700: iconst_0
    //   5701: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5704: checkcast 955	com/estrongs/fs/b/u
    //   5707: iconst_1
    //   5708: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   5711: iconst_0
    //   5712: ireturn
    //   5713: aload 24
    //   5715: ifnull +131 -> 5846
    //   5718: aload 17
    //   5720: astore 19
    //   5722: invokestatic 1182	com/estrongs/android/util/bd:l	()Z
    //   5725: ifeq +188 -> 5913
    //   5728: aload 17
    //   5730: astore 19
    //   5732: aload 24
    //   5734: instanceof 962
    //   5737: ifeq +176 -> 5913
    //   5740: aload 17
    //   5742: astore 19
    //   5744: aload 21
    //   5746: invokestatic 1185	com/estrongs/android/util/am:bs	(Ljava/lang/String;)Z
    //   5749: ifeq +164 -> 5913
    //   5752: aload 17
    //   5754: astore 19
    //   5756: aload 24
    //   5758: checkcast 962	com/estrongs/fs/b/r
    //   5761: getfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5764: ifnull +149 -> 5913
    //   5767: aload 17
    //   5769: astore 19
    //   5771: aload 24
    //   5773: bipush 13
    //   5775: iconst_2
    //   5776: anewarray 4	java/lang/Object
    //   5779: dup
    //   5780: iconst_0
    //   5781: aload 22
    //   5783: aastore
    //   5784: dup
    //   5785: iconst_1
    //   5786: aload 24
    //   5788: checkcast 962	com/estrongs/fs/b/r
    //   5791: getfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5794: aastore
    //   5795: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5798: aload 17
    //   5800: astore 19
    //   5802: aload 24
    //   5804: checkcast 962	com/estrongs/fs/b/r
    //   5807: aconst_null
    //   5808: putfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5811: aload 17
    //   5813: astore 19
    //   5815: aload 21
    //   5817: invokestatic 1085	com/estrongs/fs/impl/media/a:a	(Ljava/lang/String;)Z
    //   5820: ifeq +26 -> 5846
    //   5823: aload 17
    //   5825: astore 19
    //   5827: aload 21
    //   5829: invokestatic 809	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   5832: ifeq +14 -> 5846
    //   5835: aload 17
    //   5837: astore 19
    //   5839: aload 26
    //   5841: aload 21
    //   5843: invokestatic 1090	com/estrongs/android/d/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   5846: aload 17
    //   5848: ifnull +9 -> 5857
    //   5851: aload 17
    //   5853: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   5856: pop
    //   5857: aload 24
    //   5859: ifnull +52 -> 5911
    //   5862: aload 25
    //   5864: invokevirtual 997	java/util/ArrayList:size	()I
    //   5867: ifle +44 -> 5911
    //   5870: aload 24
    //   5872: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5875: getfield 1010	com/estrongs/a/p:a	I
    //   5878: bipush 16
    //   5880: if_icmpeq +31 -> 5911
    //   5883: aload 24
    //   5885: iconst_4
    //   5886: iconst_1
    //   5887: anewarray 4	java/lang/Object
    //   5890: dup
    //   5891: iconst_0
    //   5892: aload 25
    //   5894: aastore
    //   5895: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5898: aload 25
    //   5900: iconst_0
    //   5901: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5904: checkcast 955	com/estrongs/fs/b/u
    //   5907: iconst_1
    //   5908: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   5911: iconst_0
    //   5912: ireturn
    //   5913: aload 17
    //   5915: astore 19
    //   5917: aload 24
    //   5919: bipush 13
    //   5921: iconst_2
    //   5922: anewarray 4	java/lang/Object
    //   5925: dup
    //   5926: iconst_0
    //   5927: aload 22
    //   5929: aastore
    //   5930: dup
    //   5931: iconst_1
    //   5932: aload 21
    //   5934: aastore
    //   5935: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5938: goto -127 -> 5811
    //   5941: aload_1
    //   5942: invokevirtual 1195	java/io/OutputStream:flush	()V
    //   5945: aload 18
    //   5947: ifnull +12 -> 5959
    //   5950: aload 17
    //   5952: astore 19
    //   5954: aload 18
    //   5956: invokevirtual 1177	java/io/InputStream:close	()V
    //   5959: aload_1
    //   5960: ifnull +11 -> 5971
    //   5963: aload 17
    //   5965: astore 19
    //   5967: aload_1
    //   5968: invokevirtual 1172	java/io/OutputStream:close	()V
    //   5971: lload 13
    //   5973: lload 15
    //   5975: lcmp
    //   5976: ifge +228 -> 6204
    //   5979: iload 4
    //   5981: ifne +37 -> 6018
    //   5984: aload 24
    //   5986: ifnull +32 -> 6018
    //   5989: aload 17
    //   5991: astore 19
    //   5993: aload 24
    //   5995: iconst_2
    //   5996: iconst_2
    //   5997: anewarray 4	java/lang/Object
    //   6000: dup
    //   6001: iconst_0
    //   6002: lconst_0
    //   6003: lload 13
    //   6005: lsub
    //   6006: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   6009: aastore
    //   6010: dup
    //   6011: iconst_1
    //   6012: aload 22
    //   6014: aastore
    //   6015: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6018: aload 17
    //   6020: ifnull +9 -> 6029
    //   6023: aload 17
    //   6025: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   6028: pop
    //   6029: aload 24
    //   6031: ifnull +52 -> 6083
    //   6034: aload 25
    //   6036: invokevirtual 997	java/util/ArrayList:size	()I
    //   6039: ifle +44 -> 6083
    //   6042: aload 24
    //   6044: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   6047: getfield 1010	com/estrongs/a/p:a	I
    //   6050: bipush 16
    //   6052: if_icmpeq +31 -> 6083
    //   6055: aload 24
    //   6057: iconst_4
    //   6058: iconst_1
    //   6059: anewarray 4	java/lang/Object
    //   6062: dup
    //   6063: iconst_0
    //   6064: aload 25
    //   6066: aastore
    //   6067: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6070: aload 25
    //   6072: iconst_0
    //   6073: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   6076: checkcast 955	com/estrongs/fs/b/u
    //   6079: iconst_1
    //   6080: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   6083: iconst_0
    //   6084: ireturn
    //   6085: astore 18
    //   6087: aload 17
    //   6089: astore 19
    //   6091: aload_1
    //   6092: instanceof 1179
    //   6095: ifeq -124 -> 5971
    //   6098: iload 4
    //   6100: ifne +37 -> 6137
    //   6103: aload 24
    //   6105: ifnull +32 -> 6137
    //   6108: aload 17
    //   6110: astore 19
    //   6112: aload 24
    //   6114: iconst_2
    //   6115: iconst_2
    //   6116: anewarray 4	java/lang/Object
    //   6119: dup
    //   6120: iconst_0
    //   6121: lconst_0
    //   6122: lload 13
    //   6124: lsub
    //   6125: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   6128: aastore
    //   6129: dup
    //   6130: iconst_1
    //   6131: aload 22
    //   6133: aastore
    //   6134: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6137: aload 17
    //   6139: ifnull +9 -> 6148
    //   6142: aload 17
    //   6144: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   6147: pop
    //   6148: aload 24
    //   6150: ifnull +52 -> 6202
    //   6153: aload 25
    //   6155: invokevirtual 997	java/util/ArrayList:size	()I
    //   6158: ifle +44 -> 6202
    //   6161: aload 24
    //   6163: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   6166: getfield 1010	com/estrongs/a/p:a	I
    //   6169: bipush 16
    //   6171: if_icmpeq +31 -> 6202
    //   6174: aload 24
    //   6176: iconst_4
    //   6177: iconst_1
    //   6178: anewarray 4	java/lang/Object
    //   6181: dup
    //   6182: iconst_0
    //   6183: aload 25
    //   6185: aastore
    //   6186: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6189: aload 25
    //   6191: iconst_0
    //   6192: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   6195: checkcast 955	com/estrongs/fs/b/u
    //   6198: iconst_1
    //   6199: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   6202: iconst_0
    //   6203: ireturn
    //   6204: aload 24
    //   6206: ifnull +131 -> 6337
    //   6209: aload 17
    //   6211: astore 19
    //   6213: invokestatic 1182	com/estrongs/android/util/bd:l	()Z
    //   6216: ifeq +272 -> 6488
    //   6219: aload 17
    //   6221: astore 19
    //   6223: aload 24
    //   6225: instanceof 962
    //   6228: ifeq +260 -> 6488
    //   6231: aload 17
    //   6233: astore 19
    //   6235: aload 21
    //   6237: invokestatic 1185	com/estrongs/android/util/am:bs	(Ljava/lang/String;)Z
    //   6240: ifeq +248 -> 6488
    //   6243: aload 17
    //   6245: astore 19
    //   6247: aload 24
    //   6249: checkcast 962	com/estrongs/fs/b/r
    //   6252: getfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6255: ifnull +233 -> 6488
    //   6258: aload 17
    //   6260: astore 19
    //   6262: aload 24
    //   6264: bipush 13
    //   6266: iconst_2
    //   6267: anewarray 4	java/lang/Object
    //   6270: dup
    //   6271: iconst_0
    //   6272: aload 22
    //   6274: aastore
    //   6275: dup
    //   6276: iconst_1
    //   6277: aload 24
    //   6279: checkcast 962	com/estrongs/fs/b/r
    //   6282: getfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6285: aastore
    //   6286: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6289: aload 17
    //   6291: astore 19
    //   6293: aload 24
    //   6295: checkcast 962	com/estrongs/fs/b/r
    //   6298: aconst_null
    //   6299: putfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6302: aload 17
    //   6304: astore 19
    //   6306: aload 21
    //   6308: invokestatic 1085	com/estrongs/fs/impl/media/a:a	(Ljava/lang/String;)Z
    //   6311: ifeq +26 -> 6337
    //   6314: aload 17
    //   6316: astore 19
    //   6318: aload 21
    //   6320: invokestatic 809	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   6323: ifeq +14 -> 6337
    //   6326: aload 17
    //   6328: astore 19
    //   6330: aload 26
    //   6332: aload 21
    //   6334: invokestatic 1090	com/estrongs/android/d/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   6337: aload 17
    //   6339: astore 19
    //   6341: aload 27
    //   6343: getfield 1196	com/estrongs/fs/b/u:d	Z
    //   6346: ifeq +122 -> 6468
    //   6349: aload 17
    //   6351: astore 19
    //   6353: aload 21
    //   6355: invokestatic 401	com/estrongs/android/util/am:bl	(Ljava/lang/String;)Z
    //   6358: ifeq +110 -> 6468
    //   6361: aload 24
    //   6363: ifnull +687 -> 7050
    //   6366: aload 17
    //   6368: astore 19
    //   6370: aload 24
    //   6372: instanceof 962
    //   6375: ifeq +675 -> 7050
    //   6378: aload 17
    //   6380: astore 19
    //   6382: aload 24
    //   6384: checkcast 962	com/estrongs/fs/b/r
    //   6387: astore_1
    //   6388: aload 17
    //   6390: astore 19
    //   6392: aload_1
    //   6393: aload_1
    //   6394: getfield 1199	com/estrongs/fs/b/r:w	I
    //   6397: aload 21
    //   6399: invokestatic 1203	com/estrongs/fs/a/a:g	(Ljava/lang/String;)I
    //   6402: ior
    //   6403: putfield 1199	com/estrongs/fs/b/r:w	I
    //   6406: aload 17
    //   6408: astore 19
    //   6410: invokestatic 970	com/estrongs/android/util/bd:f	()Z
    //   6413: ifeq +532 -> 6945
    //   6416: aload 17
    //   6418: astore 19
    //   6420: invokestatic 1182	com/estrongs/android/util/bd:l	()Z
    //   6423: ifeq +25 -> 6448
    //   6426: aload 17
    //   6428: astore 19
    //   6430: aload 24
    //   6432: checkcast 962	com/estrongs/fs/b/r
    //   6435: getfield 1205	com/estrongs/fs/b/r:t	Ljava/util/List;
    //   6438: aload 21
    //   6440: invokeinterface 1207 2 0
    //   6445: ifne +23 -> 6468
    //   6448: aload 17
    //   6450: astore 19
    //   6452: aload 24
    //   6454: checkcast 962	com/estrongs/fs/b/r
    //   6457: getfield 1210	com/estrongs/fs/b/r:s	Ljava/util/List;
    //   6460: aload 21
    //   6462: invokeinterface 205 2 0
    //   6467: pop
    //   6468: aload 17
    //   6470: astore 19
    //   6472: aload_0
    //   6473: aload 21
    //   6475: aload 27
    //   6477: getfield 958	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   6480: iload 11
    //   6482: invokespecial 1211	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/h;Z)V
    //   6485: goto +988 -> 7473
    //   6488: aload 17
    //   6490: astore 19
    //   6492: aload 24
    //   6494: bipush 13
    //   6496: iconst_2
    //   6497: anewarray 4	java/lang/Object
    //   6500: dup
    //   6501: iconst_0
    //   6502: aload 22
    //   6504: aastore
    //   6505: dup
    //   6506: iconst_1
    //   6507: aload 21
    //   6509: aastore
    //   6510: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6513: goto -211 -> 6302
    //   6516: astore 20
    //   6518: aload 18
    //   6520: ifnull +12 -> 6532
    //   6523: aload 17
    //   6525: astore 19
    //   6527: aload 18
    //   6529: invokevirtual 1177	java/io/InputStream:close	()V
    //   6532: aload_1
    //   6533: ifnull +11 -> 6544
    //   6536: aload 17
    //   6538: astore 19
    //   6540: aload_1
    //   6541: invokevirtual 1172	java/io/OutputStream:close	()V
    //   6544: lload 13
    //   6546: lload 15
    //   6548: lcmp
    //   6549: ifge +228 -> 6777
    //   6552: iload 4
    //   6554: ifne +37 -> 6591
    //   6557: aload 24
    //   6559: ifnull +32 -> 6591
    //   6562: aload 17
    //   6564: astore 19
    //   6566: aload 24
    //   6568: iconst_2
    //   6569: iconst_2
    //   6570: anewarray 4	java/lang/Object
    //   6573: dup
    //   6574: iconst_0
    //   6575: lconst_0
    //   6576: lload 13
    //   6578: lsub
    //   6579: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   6582: aastore
    //   6583: dup
    //   6584: iconst_1
    //   6585: aload 22
    //   6587: aastore
    //   6588: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6591: aload 17
    //   6593: ifnull +9 -> 6602
    //   6596: aload 17
    //   6598: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   6601: pop
    //   6602: aload 24
    //   6604: ifnull +52 -> 6656
    //   6607: aload 25
    //   6609: invokevirtual 997	java/util/ArrayList:size	()I
    //   6612: ifle +44 -> 6656
    //   6615: aload 24
    //   6617: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   6620: getfield 1010	com/estrongs/a/p:a	I
    //   6623: bipush 16
    //   6625: if_icmpeq +31 -> 6656
    //   6628: aload 24
    //   6630: iconst_4
    //   6631: iconst_1
    //   6632: anewarray 4	java/lang/Object
    //   6635: dup
    //   6636: iconst_0
    //   6637: aload 25
    //   6639: aastore
    //   6640: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6643: aload 25
    //   6645: iconst_0
    //   6646: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   6649: checkcast 955	com/estrongs/fs/b/u
    //   6652: iconst_1
    //   6653: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   6656: iconst_0
    //   6657: ireturn
    //   6658: astore 18
    //   6660: aload 17
    //   6662: astore 19
    //   6664: aload_1
    //   6665: instanceof 1179
    //   6668: ifeq -124 -> 6544
    //   6671: iload 4
    //   6673: ifne +37 -> 6710
    //   6676: aload 24
    //   6678: ifnull +32 -> 6710
    //   6681: aload 17
    //   6683: astore 19
    //   6685: aload 24
    //   6687: iconst_2
    //   6688: iconst_2
    //   6689: anewarray 4	java/lang/Object
    //   6692: dup
    //   6693: iconst_0
    //   6694: lconst_0
    //   6695: lload 13
    //   6697: lsub
    //   6698: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   6701: aastore
    //   6702: dup
    //   6703: iconst_1
    //   6704: aload 22
    //   6706: aastore
    //   6707: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6710: aload 17
    //   6712: ifnull +9 -> 6721
    //   6715: aload 17
    //   6717: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   6720: pop
    //   6721: aload 24
    //   6723: ifnull +52 -> 6775
    //   6726: aload 25
    //   6728: invokevirtual 997	java/util/ArrayList:size	()I
    //   6731: ifle +44 -> 6775
    //   6734: aload 24
    //   6736: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   6739: getfield 1010	com/estrongs/a/p:a	I
    //   6742: bipush 16
    //   6744: if_icmpeq +31 -> 6775
    //   6747: aload 24
    //   6749: iconst_4
    //   6750: iconst_1
    //   6751: anewarray 4	java/lang/Object
    //   6754: dup
    //   6755: iconst_0
    //   6756: aload 25
    //   6758: aastore
    //   6759: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6762: aload 25
    //   6764: iconst_0
    //   6765: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   6768: checkcast 955	com/estrongs/fs/b/u
    //   6771: iconst_1
    //   6772: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   6775: iconst_0
    //   6776: ireturn
    //   6777: aload 24
    //   6779: ifnull +131 -> 6910
    //   6782: aload 17
    //   6784: astore 19
    //   6786: invokestatic 1182	com/estrongs/android/util/bd:l	()Z
    //   6789: ifeq +128 -> 6917
    //   6792: aload 17
    //   6794: astore 19
    //   6796: aload 24
    //   6798: instanceof 962
    //   6801: ifeq +116 -> 6917
    //   6804: aload 17
    //   6806: astore 19
    //   6808: aload 21
    //   6810: invokestatic 1185	com/estrongs/android/util/am:bs	(Ljava/lang/String;)Z
    //   6813: ifeq +104 -> 6917
    //   6816: aload 17
    //   6818: astore 19
    //   6820: aload 24
    //   6822: checkcast 962	com/estrongs/fs/b/r
    //   6825: getfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6828: ifnull +89 -> 6917
    //   6831: aload 17
    //   6833: astore 19
    //   6835: aload 24
    //   6837: bipush 13
    //   6839: iconst_2
    //   6840: anewarray 4	java/lang/Object
    //   6843: dup
    //   6844: iconst_0
    //   6845: aload 22
    //   6847: aastore
    //   6848: dup
    //   6849: iconst_1
    //   6850: aload 24
    //   6852: checkcast 962	com/estrongs/fs/b/r
    //   6855: getfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6858: aastore
    //   6859: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6862: aload 17
    //   6864: astore 19
    //   6866: aload 24
    //   6868: checkcast 962	com/estrongs/fs/b/r
    //   6871: aconst_null
    //   6872: putfield 1188	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6875: aload 17
    //   6877: astore 19
    //   6879: aload 21
    //   6881: invokestatic 1085	com/estrongs/fs/impl/media/a:a	(Ljava/lang/String;)Z
    //   6884: ifeq +26 -> 6910
    //   6887: aload 17
    //   6889: astore 19
    //   6891: aload 21
    //   6893: invokestatic 809	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   6896: ifeq +14 -> 6910
    //   6899: aload 17
    //   6901: astore 19
    //   6903: aload 26
    //   6905: aload 21
    //   6907: invokestatic 1090	com/estrongs/android/d/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   6910: aload 17
    //   6912: astore 19
    //   6914: aload 20
    //   6916: athrow
    //   6917: aload 17
    //   6919: astore 19
    //   6921: aload 24
    //   6923: bipush 13
    //   6925: iconst_2
    //   6926: anewarray 4	java/lang/Object
    //   6929: dup
    //   6930: iconst_0
    //   6931: aload 22
    //   6933: aastore
    //   6934: dup
    //   6935: iconst_1
    //   6936: aload 21
    //   6938: aastore
    //   6939: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6942: goto -67 -> 6875
    //   6945: aload 17
    //   6947: astore 19
    //   6949: aload 21
    //   6951: invokestatic 1085	com/estrongs/fs/impl/media/a:a	(Ljava/lang/String;)Z
    //   6954: ifeq +26 -> 6980
    //   6957: aload 17
    //   6959: astore 19
    //   6961: aload 24
    //   6963: checkcast 962	com/estrongs/fs/b/r
    //   6966: getfield 1213	com/estrongs/fs/b/r:p	Ljava/util/List;
    //   6969: aload 21
    //   6971: invokeinterface 205 2 0
    //   6976: pop
    //   6977: goto -509 -> 6468
    //   6980: aload 17
    //   6982: astore 19
    //   6984: aload 21
    //   6986: invokestatic 1214	com/estrongs/fs/impl/media/a:b	(Ljava/lang/String;)Z
    //   6989: ifeq +26 -> 7015
    //   6992: aload 17
    //   6994: astore 19
    //   6996: aload 24
    //   6998: checkcast 962	com/estrongs/fs/b/r
    //   7001: getfield 1216	com/estrongs/fs/b/r:q	Ljava/util/List;
    //   7004: aload 21
    //   7006: invokeinterface 205 2 0
    //   7011: pop
    //   7012: goto -544 -> 6468
    //   7015: aload 17
    //   7017: astore 19
    //   7019: aload 21
    //   7021: invokestatic 1217	com/estrongs/fs/impl/media/a:c	(Ljava/lang/String;)Z
    //   7024: ifeq -556 -> 6468
    //   7027: aload 17
    //   7029: astore 19
    //   7031: aload 24
    //   7033: checkcast 962	com/estrongs/fs/b/r
    //   7036: getfield 1219	com/estrongs/fs/b/r:r	Ljava/util/List;
    //   7039: aload 21
    //   7041: invokeinterface 205 2 0
    //   7046: pop
    //   7047: goto -579 -> 6468
    //   7050: aload 17
    //   7052: astore 19
    //   7054: aload 21
    //   7056: invokestatic 1221	com/estrongs/fs/impl/local/h:j	(Ljava/lang/String;)V
    //   7059: goto -591 -> 6468
    //   7062: iload_3
    //   7063: ifne +44 -> 7107
    //   7066: aload 24
    //   7068: ifnull +28 -> 7096
    //   7071: aload 17
    //   7073: astore 19
    //   7075: aload 24
    //   7077: iconst_1
    //   7078: iconst_2
    //   7079: anewarray 4	java/lang/Object
    //   7082: dup
    //   7083: iconst_0
    //   7084: lconst_1
    //   7085: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   7088: aastore
    //   7089: dup
    //   7090: iconst_1
    //   7091: aload_1
    //   7092: aastore
    //   7093: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   7096: aload 17
    //   7098: astore 19
    //   7100: aload 25
    //   7102: iconst_0
    //   7103: invokevirtual 999	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   7106: pop
    //   7107: aload 17
    //   7109: ifnull +9 -> 7118
    //   7112: aload 17
    //   7114: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   7117: pop
    //   7118: aload 24
    //   7120: ifnull +52 -> 7172
    //   7123: aload 25
    //   7125: invokevirtual 997	java/util/ArrayList:size	()I
    //   7128: ifle +44 -> 7172
    //   7131: aload 24
    //   7133: invokevirtual 1006	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   7136: getfield 1010	com/estrongs/a/p:a	I
    //   7139: bipush 16
    //   7141: if_icmpeq +31 -> 7172
    //   7144: aload 24
    //   7146: iconst_4
    //   7147: iconst_1
    //   7148: anewarray 4	java/lang/Object
    //   7151: dup
    //   7152: iconst_0
    //   7153: aload 25
    //   7155: aastore
    //   7156: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   7159: aload 25
    //   7161: iconst_0
    //   7162: invokevirtual 1011	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   7165: checkcast 955	com/estrongs/fs/b/u
    //   7168: iconst_1
    //   7169: putfield 1013	com/estrongs/fs/b/u:e	Z
    //   7172: iconst_1
    //   7173: ireturn
    //   7174: new 871	com/estrongs/a/q
    //   7177: dup
    //   7178: aload_0
    //   7179: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   7182: ldc_w 1045
    //   7185: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   7188: iconst_1
    //   7189: anewarray 4	java/lang/Object
    //   7192: dup
    //   7193: iconst_0
    //   7194: ldc_w 1113
    //   7197: aastore
    //   7198: invokestatic 1051	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   7201: aload 17
    //   7203: invokespecial 876	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   7206: astore 17
    //   7208: goto -6584 -> 624
    //   7211: astore 18
    //   7213: goto -2505 -> 4708
    //   7216: astore 19
    //   7218: goto -1798 -> 5420
    //   7221: astore_1
    //   7222: goto -1756 -> 5466
    //   7225: astore 18
    //   7227: goto -1268 -> 5959
    //   7230: astore 18
    //   7232: goto -700 -> 6532
    //   7235: astore_1
    //   7236: aconst_null
    //   7237: astore 19
    //   7239: goto -2052 -> 5187
    //   7242: astore 17
    //   7244: aload_1
    //   7245: astore 19
    //   7247: aload 17
    //   7249: astore_1
    //   7250: goto -2063 -> 5187
    //   7253: astore_1
    //   7254: aconst_null
    //   7255: astore 17
    //   7257: goto -4038 -> 3219
    //   7260: astore 17
    //   7262: aload 19
    //   7264: astore_1
    //   7265: goto -6666 -> 599
    //   7268: astore 20
    //   7270: goto -752 -> 6518
    //   7273: astore 20
    //   7275: aload 19
    //   7277: astore_1
    //   7278: goto -760 -> 6518
    //   7281: astore_1
    //   7282: goto -3206 -> 4076
    //   7285: goto -2679 -> 4606
    //   7288: goto -2594 -> 4694
    //   7291: aload_1
    //   7292: astore 19
    //   7294: aload 18
    //   7296: astore_1
    //   7297: aload 19
    //   7299: astore 18
    //   7301: goto -3295 -> 4006
    //   7304: aconst_null
    //   7305: astore 19
    //   7307: aload_1
    //   7308: astore 18
    //   7310: aload 19
    //   7312: astore_1
    //   7313: goto -3307 -> 4006
    //   7316: iload_3
    //   7317: istore 4
    //   7319: iload_2
    //   7320: istore 5
    //   7322: iconst_0
    //   7323: istore_3
    //   7324: aload 22
    //   7326: astore_1
    //   7327: iload 4
    //   7329: istore_2
    //   7330: iload 5
    //   7332: istore 4
    //   7334: goto -7039 -> 295
    //   7337: aload_1
    //   7338: astore 21
    //   7340: goto -4769 -> 2571
    //   7343: goto +124 -> 7467
    //   7346: iconst_0
    //   7347: istore 4
    //   7349: iload_3
    //   7350: istore_2
    //   7351: iload 7
    //   7353: istore_3
    //   7354: goto -6093 -> 1261
    //   7357: iconst_0
    //   7358: istore_3
    //   7359: aload 22
    //   7361: astore_1
    //   7362: iload 5
    //   7364: istore_2
    //   7365: goto -7070 -> 295
    //   7368: iload 4
    //   7370: istore_3
    //   7371: goto -6410 -> 961
    //   7374: iconst_1
    //   7375: istore 7
    //   7377: iload_2
    //   7378: istore_3
    //   7379: iload 4
    //   7381: istore 5
    //   7383: iload 7
    //   7385: istore_2
    //   7386: iload_3
    //   7387: istore 4
    //   7389: iload 5
    //   7391: istore_3
    //   7392: goto +33 -> 7425
    //   7395: goto -6658 -> 737
    //   7398: iconst_0
    //   7399: istore 10
    //   7401: goto -6664 -> 737
    //   7404: iconst_0
    //   7405: istore 6
    //   7407: goto -7133 -> 274
    //   7410: iconst_0
    //   7411: istore 9
    //   7413: iconst_0
    //   7414: istore 6
    //   7416: goto -7142 -> 274
    //   7419: aconst_null
    //   7420: astore 17
    //   7422: goto -7255 -> 167
    //   7425: iload_2
    //   7426: istore 8
    //   7428: iload 4
    //   7430: istore 5
    //   7432: iload_3
    //   7433: istore 4
    //   7435: goto -6442 -> 993
    //   7438: iconst_0
    //   7439: istore 11
    //   7441: goto -6560 -> 881
    //   7444: iload_3
    //   7445: istore 8
    //   7447: iload_2
    //   7448: istore 5
    //   7450: iload 9
    //   7452: ifne -6459 -> 993
    //   7455: iconst_0
    //   7456: istore 4
    //   7458: iload_3
    //   7459: istore 8
    //   7461: iload_2
    //   7462: istore 5
    //   7464: goto -6471 -> 993
    //   7467: iconst_0
    //   7468: istore 4
    //   7470: goto -5378 -> 2092
    //   7473: iload_3
    //   7474: istore 4
    //   7476: iload_2
    //   7477: istore 5
    //   7479: iconst_0
    //   7480: istore_3
    //   7481: aload 22
    //   7483: astore_1
    //   7484: iload 4
    //   7486: istore_2
    //   7487: iload 5
    //   7489: istore 4
    //   7491: goto -7196 -> 295
    //   7494: iconst_0
    //   7495: istore 4
    //   7497: goto -4420 -> 3077
    //   7500: lconst_0
    //   7501: lstore 13
    //   7503: goto -3702 -> 3801
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	7506	0	this	d
    //   0	7506	1	paramu	com.estrongs.fs.b.u
    //   176	7311	2	i	int
    //   291	7190	3	j	int
    //   288	7208	4	k	int
    //   1125	6363	5	m	int
    //   272	7143	6	n	int
    //   738	6646	7	i1	int
    //   993	6467	8	i2	int
    //   235	7216	9	bool1	boolean
    //   371	7029	10	bool2	boolean
    //   879	6561	11	bool3	boolean
    //   1611	18	12	bool4	boolean
    //   2490	5012	13	l1	long
    //   2494	4053	15	l2	long
    //   45	7162	17	localObject1	Object
    //   7242	6	17	localObject2	Object
    //   7255	1	17	localObject3	Object
    //   7260	1	17	localFileSystemException1	FileSystemException
    //   7420	1	17	localObject4	Object
    //   79	214	18	localObject5	Object
    //   590	6	18	localFileSystemException2	FileSystemException
    //   604	4100	18	localObject6	Object
    //   4839	1116	18	localException1	Exception
    //   6085	443	18	localException2	Exception
    //   6658	1	18	localException3	Exception
    //   7211	1	18	localException4	Exception
    //   7225	1	18	localException5	Exception
    //   7230	65	18	localException6	Exception
    //   7299	10	18	localObject7	Object
    //   139	4602	19	localObject8	Object
    //   4834	1	19	localException7	Exception
    //   4843	2256	19	localObject9	Object
    //   7216	1	19	localException8	Exception
    //   7237	74	19	localu1	com.estrongs.fs.b.u
    //   38	5562	20	localObject10	Object
    //   6516	399	20	localObject11	Object
    //   7268	1	20	localObject12	Object
    //   7273	1	20	localObject13	Object
    //   10	7329	21	localObject14	Object
    //   210	7272	22	str1	String
    //   221	4176	23	localObject15	Object
    //   15	7130	24	locala	com.estrongs.a.a
    //   136	7024	25	localArrayList	ArrayList
    //   4	6900	26	localh	h
    //   485	5991	27	localu2	com.estrongs.fs.b.u
    //   3614	221	28	str2	String
    // Exception table:
    //   from	to	target	type
    //   171	177	590	com/estrongs/fs/FileSystemException
    //   181	190	590	com/estrongs/fs/FileSystemException
    //   205	212	590	com/estrongs/fs/FileSystemException
    //   216	223	590	com/estrongs/fs/FileSystemException
    //   227	237	590	com/estrongs/fs/FileSystemException
    //   241	251	590	com/estrongs/fs/FileSystemException
    //   255	271	590	com/estrongs/fs/FileSystemException
    //   278	285	590	com/estrongs/fs/FileSystemException
    //   299	308	590	com/estrongs/fs/FileSystemException
    //   325	346	590	com/estrongs/fs/FileSystemException
    //   350	357	590	com/estrongs/fs/FileSystemException
    //   366	373	590	com/estrongs/fs/FileSystemException
    //   476	487	590	com/estrongs/fs/FileSystemException
    //   491	503	590	com/estrongs/fs/FileSystemException
    //   507	513	590	com/estrongs/fs/FileSystemException
    //   517	526	590	com/estrongs/fs/FileSystemException
    //   538	569	590	com/estrongs/fs/FileSystemException
    //   573	584	590	com/estrongs/fs/FileSystemException
    //   718	725	590	com/estrongs/fs/FileSystemException
    //   770	778	590	com/estrongs/fs/FileSystemException
    //   782	789	590	com/estrongs/fs/FileSystemException
    //   793	800	590	com/estrongs/fs/FileSystemException
    //   804	820	590	com/estrongs/fs/FileSystemException
    //   824	837	590	com/estrongs/fs/FileSystemException
    //   841	853	590	com/estrongs/fs/FileSystemException
    //   857	878	590	com/estrongs/fs/FileSystemException
    //   885	927	590	com/estrongs/fs/FileSystemException
    //   938	946	590	com/estrongs/fs/FileSystemException
    //   950	959	590	com/estrongs/fs/FileSystemException
    //   968	977	590	com/estrongs/fs/FileSystemException
    //   984	990	590	com/estrongs/fs/FileSystemException
    //   1008	1039	590	com/estrongs/fs/FileSystemException
    //   1043	1054	590	com/estrongs/fs/FileSystemException
    //   1058	1066	590	com/estrongs/fs/FileSystemException
    //   1070	1081	590	com/estrongs/fs/FileSystemException
    //   1085	1100	590	com/estrongs/fs/FileSystemException
    //   1104	1120	590	com/estrongs/fs/FileSystemException
    //   1146	1157	590	com/estrongs/fs/FileSystemException
    //   1161	1168	590	com/estrongs/fs/FileSystemException
    //   1285	1300	590	com/estrongs/fs/FileSystemException
    //   1304	1343	590	com/estrongs/fs/FileSystemException
    //   1352	1361	590	com/estrongs/fs/FileSystemException
    //   1454	1464	590	com/estrongs/fs/FileSystemException
    //   1473	1484	590	com/estrongs/fs/FileSystemException
    //   1488	1497	590	com/estrongs/fs/FileSystemException
    //   1568	1607	590	com/estrongs/fs/FileSystemException
    //   1621	1628	590	com/estrongs/fs/FileSystemException
    //   1636	1643	590	com/estrongs/fs/FileSystemException
    //   1650	1671	590	com/estrongs/fs/FileSystemException
    //   1675	1700	590	com/estrongs/fs/FileSystemException
    //   1771	1787	590	com/estrongs/fs/FileSystemException
    //   1791	1807	590	com/estrongs/fs/FileSystemException
    //   1883	1891	590	com/estrongs/fs/FileSystemException
    //   1900	1910	590	com/estrongs/fs/FileSystemException
    //   2054	2064	590	com/estrongs/fs/FileSystemException
    //   2068	2089	590	com/estrongs/fs/FileSystemException
    //   2096	2108	590	com/estrongs/fs/FileSystemException
    //   2112	2175	590	com/estrongs/fs/FileSystemException
    //   2188	2194	590	com/estrongs/fs/FileSystemException
    //   2198	2207	590	com/estrongs/fs/FileSystemException
    //   2211	2218	590	com/estrongs/fs/FileSystemException
    //   2222	2233	590	com/estrongs/fs/FileSystemException
    //   2240	2250	590	com/estrongs/fs/FileSystemException
    //   2254	2267	590	com/estrongs/fs/FileSystemException
    //   2271	2284	590	com/estrongs/fs/FileSystemException
    //   2306	2316	590	com/estrongs/fs/FileSystemException
    //   2329	2343	590	com/estrongs/fs/FileSystemException
    //   2424	2455	590	com/estrongs/fs/FileSystemException
    //   2480	2492	590	com/estrongs/fs/FileSystemException
    //   2507	2515	590	com/estrongs/fs/FileSystemException
    //   2523	2528	590	com/estrongs/fs/FileSystemException
    //   2540	2568	590	com/estrongs/fs/FileSystemException
    //   2580	2602	590	com/estrongs/fs/FileSystemException
    //   2606	2619	590	com/estrongs/fs/FileSystemException
    //   2628	2659	590	com/estrongs/fs/FileSystemException
    //   2663	2690	590	com/estrongs/fs/FileSystemException
    //   2694	2715	590	com/estrongs/fs/FileSystemException
    //   2719	2727	590	com/estrongs/fs/FileSystemException
    //   2731	2739	590	com/estrongs/fs/FileSystemException
    //   2743	2750	590	com/estrongs/fs/FileSystemException
    //   2775	2792	590	com/estrongs/fs/FileSystemException
    //   2796	2830	590	com/estrongs/fs/FileSystemException
    //   2906	2917	590	com/estrongs/fs/FileSystemException
    //   2921	2955	590	com/estrongs/fs/FileSystemException
    //   3034	3044	590	com/estrongs/fs/FileSystemException
    //   3053	3061	590	com/estrongs/fs/FileSystemException
    //   3065	3074	590	com/estrongs/fs/FileSystemException
    //   3086	3097	590	com/estrongs/fs/FileSystemException
    //   3106	3116	590	com/estrongs/fs/FileSystemException
    //   3125	3157	590	com/estrongs/fs/FileSystemException
    //   3166	3177	590	com/estrongs/fs/FileSystemException
    //   3209	3215	590	com/estrongs/fs/FileSystemException
    //   3339	3348	590	com/estrongs/fs/FileSystemException
    //   3388	3398	590	com/estrongs/fs/FileSystemException
    //   3402	3413	590	com/estrongs/fs/FileSystemException
    //   3417	3428	590	com/estrongs/fs/FileSystemException
    //   3432	3438	590	com/estrongs/fs/FileSystemException
    //   3447	3475	590	com/estrongs/fs/FileSystemException
    //   3488	3532	590	com/estrongs/fs/FileSystemException
    //   3610	3616	590	com/estrongs/fs/FileSystemException
    //   3628	3639	590	com/estrongs/fs/FileSystemException
    //   3643	3664	590	com/estrongs/fs/FileSystemException
    //   3668	3675	590	com/estrongs/fs/FileSystemException
    //   3679	3684	590	com/estrongs/fs/FileSystemException
    //   3755	3768	590	com/estrongs/fs/FileSystemException
    //   3772	3785	590	com/estrongs/fs/FileSystemException
    //   3794	3801	590	com/estrongs/fs/FileSystemException
    //   3805	3816	590	com/estrongs/fs/FileSystemException
    //   3834	3845	590	com/estrongs/fs/FileSystemException
    //   3849	3862	590	com/estrongs/fs/FileSystemException
    //   3866	3871	590	com/estrongs/fs/FileSystemException
    //   3942	3950	590	com/estrongs/fs/FileSystemException
    //   3954	3962	590	com/estrongs/fs/FileSystemException
    //   3966	3974	590	com/estrongs/fs/FileSystemException
    //   3987	4000	590	com/estrongs/fs/FileSystemException
    //   4019	4034	590	com/estrongs/fs/FileSystemException
    //   4054	4064	590	com/estrongs/fs/FileSystemException
    //   4068	4076	590	com/estrongs/fs/FileSystemException
    //   4147	4155	590	com/estrongs/fs/FileSystemException
    //   4162	4170	590	com/estrongs/fs/FileSystemException
    //   4179	4201	590	com/estrongs/fs/FileSystemException
    //   4209	4218	590	com/estrongs/fs/FileSystemException
    //   4222	4229	590	com/estrongs/fs/FileSystemException
    //   4372	4377	590	com/estrongs/fs/FileSystemException
    //   4381	4393	590	com/estrongs/fs/FileSystemException
    //   4406	4413	590	com/estrongs/fs/FileSystemException
    //   4425	4435	590	com/estrongs/fs/FileSystemException
    //   4439	4449	590	com/estrongs/fs/FileSystemException
    //   4468	4496	590	com/estrongs/fs/FileSystemException
    //   4500	4506	590	com/estrongs/fs/FileSystemException
    //   4510	4519	590	com/estrongs/fs/FileSystemException
    //   4523	4532	590	com/estrongs/fs/FileSystemException
    //   4539	4553	590	com/estrongs/fs/FileSystemException
    //   4565	4595	590	com/estrongs/fs/FileSystemException
    //   4599	4606	590	com/estrongs/fs/FileSystemException
    //   4703	4708	590	com/estrongs/fs/FileSystemException
    //   4716	4720	590	com/estrongs/fs/FileSystemException
    //   4742	4767	590	com/estrongs/fs/FileSystemException
    //   4845	4852	590	com/estrongs/fs/FileSystemException
    //   4866	4891	590	com/estrongs/fs/FileSystemException
    //   4967	4973	590	com/estrongs/fs/FileSystemException
    //   4977	4985	590	com/estrongs/fs/FileSystemException
    //   4989	4997	590	com/estrongs/fs/FileSystemException
    //   5001	5012	590	com/estrongs/fs/FileSystemException
    //   5016	5043	590	com/estrongs/fs/FileSystemException
    //   5047	5056	590	com/estrongs/fs/FileSystemException
    //   5060	5068	590	com/estrongs/fs/FileSystemException
    //   5072	5080	590	com/estrongs/fs/FileSystemException
    //   5084	5091	590	com/estrongs/fs/FileSystemException
    //   5162	5183	590	com/estrongs/fs/FileSystemException
    //   5461	5466	590	com/estrongs/fs/FileSystemException
    //   5475	5480	590	com/estrongs/fs/FileSystemException
    //   5502	5527	590	com/estrongs/fs/FileSystemException
    //   5599	5607	590	com/estrongs/fs/FileSystemException
    //   5621	5646	590	com/estrongs/fs/FileSystemException
    //   5722	5728	590	com/estrongs/fs/FileSystemException
    //   5732	5740	590	com/estrongs/fs/FileSystemException
    //   5744	5752	590	com/estrongs/fs/FileSystemException
    //   5756	5767	590	com/estrongs/fs/FileSystemException
    //   5771	5798	590	com/estrongs/fs/FileSystemException
    //   5802	5811	590	com/estrongs/fs/FileSystemException
    //   5815	5823	590	com/estrongs/fs/FileSystemException
    //   5827	5835	590	com/estrongs/fs/FileSystemException
    //   5839	5846	590	com/estrongs/fs/FileSystemException
    //   5917	5938	590	com/estrongs/fs/FileSystemException
    //   5954	5959	590	com/estrongs/fs/FileSystemException
    //   5967	5971	590	com/estrongs/fs/FileSystemException
    //   5993	6018	590	com/estrongs/fs/FileSystemException
    //   6091	6098	590	com/estrongs/fs/FileSystemException
    //   6112	6137	590	com/estrongs/fs/FileSystemException
    //   6213	6219	590	com/estrongs/fs/FileSystemException
    //   6223	6231	590	com/estrongs/fs/FileSystemException
    //   6235	6243	590	com/estrongs/fs/FileSystemException
    //   6247	6258	590	com/estrongs/fs/FileSystemException
    //   6262	6289	590	com/estrongs/fs/FileSystemException
    //   6293	6302	590	com/estrongs/fs/FileSystemException
    //   6306	6314	590	com/estrongs/fs/FileSystemException
    //   6318	6326	590	com/estrongs/fs/FileSystemException
    //   6330	6337	590	com/estrongs/fs/FileSystemException
    //   6341	6349	590	com/estrongs/fs/FileSystemException
    //   6353	6361	590	com/estrongs/fs/FileSystemException
    //   6370	6378	590	com/estrongs/fs/FileSystemException
    //   6382	6388	590	com/estrongs/fs/FileSystemException
    //   6392	6406	590	com/estrongs/fs/FileSystemException
    //   6410	6416	590	com/estrongs/fs/FileSystemException
    //   6420	6426	590	com/estrongs/fs/FileSystemException
    //   6430	6448	590	com/estrongs/fs/FileSystemException
    //   6452	6468	590	com/estrongs/fs/FileSystemException
    //   6472	6485	590	com/estrongs/fs/FileSystemException
    //   6492	6513	590	com/estrongs/fs/FileSystemException
    //   6527	6532	590	com/estrongs/fs/FileSystemException
    //   6540	6544	590	com/estrongs/fs/FileSystemException
    //   6566	6591	590	com/estrongs/fs/FileSystemException
    //   6664	6671	590	com/estrongs/fs/FileSystemException
    //   6685	6710	590	com/estrongs/fs/FileSystemException
    //   6786	6792	590	com/estrongs/fs/FileSystemException
    //   6796	6804	590	com/estrongs/fs/FileSystemException
    //   6808	6816	590	com/estrongs/fs/FileSystemException
    //   6820	6831	590	com/estrongs/fs/FileSystemException
    //   6835	6862	590	com/estrongs/fs/FileSystemException
    //   6866	6875	590	com/estrongs/fs/FileSystemException
    //   6879	6887	590	com/estrongs/fs/FileSystemException
    //   6891	6899	590	com/estrongs/fs/FileSystemException
    //   6903	6910	590	com/estrongs/fs/FileSystemException
    //   6914	6917	590	com/estrongs/fs/FileSystemException
    //   6921	6942	590	com/estrongs/fs/FileSystemException
    //   6949	6957	590	com/estrongs/fs/FileSystemException
    //   6961	6977	590	com/estrongs/fs/FileSystemException
    //   6984	6992	590	com/estrongs/fs/FileSystemException
    //   6996	7012	590	com/estrongs/fs/FileSystemException
    //   7019	7027	590	com/estrongs/fs/FileSystemException
    //   7031	7047	590	com/estrongs/fs/FileSystemException
    //   7054	7059	590	com/estrongs/fs/FileSystemException
    //   7075	7096	590	com/estrongs/fs/FileSystemException
    //   7100	7107	590	com/estrongs/fs/FileSystemException
    //   1285	1300	1449	com/estrongs/android/pop/netfs/NetFsException
    //   1304	1343	1449	com/estrongs/android/pop/netfs/NetFsException
    //   1352	1361	1449	com/estrongs/android/pop/netfs/NetFsException
    //   1900	1910	1982	java/lang/Exception
    //   171	177	3218	java/lang/Exception
    //   181	190	3218	java/lang/Exception
    //   205	212	3218	java/lang/Exception
    //   216	223	3218	java/lang/Exception
    //   227	237	3218	java/lang/Exception
    //   241	251	3218	java/lang/Exception
    //   255	271	3218	java/lang/Exception
    //   278	285	3218	java/lang/Exception
    //   299	308	3218	java/lang/Exception
    //   325	346	3218	java/lang/Exception
    //   350	357	3218	java/lang/Exception
    //   366	373	3218	java/lang/Exception
    //   476	487	3218	java/lang/Exception
    //   491	503	3218	java/lang/Exception
    //   507	513	3218	java/lang/Exception
    //   517	526	3218	java/lang/Exception
    //   538	569	3218	java/lang/Exception
    //   573	584	3218	java/lang/Exception
    //   718	725	3218	java/lang/Exception
    //   770	778	3218	java/lang/Exception
    //   782	789	3218	java/lang/Exception
    //   793	800	3218	java/lang/Exception
    //   804	820	3218	java/lang/Exception
    //   824	837	3218	java/lang/Exception
    //   841	853	3218	java/lang/Exception
    //   857	878	3218	java/lang/Exception
    //   885	927	3218	java/lang/Exception
    //   938	946	3218	java/lang/Exception
    //   950	959	3218	java/lang/Exception
    //   968	977	3218	java/lang/Exception
    //   984	990	3218	java/lang/Exception
    //   1008	1039	3218	java/lang/Exception
    //   1043	1054	3218	java/lang/Exception
    //   1058	1066	3218	java/lang/Exception
    //   1070	1081	3218	java/lang/Exception
    //   1085	1100	3218	java/lang/Exception
    //   1104	1120	3218	java/lang/Exception
    //   1146	1157	3218	java/lang/Exception
    //   1161	1168	3218	java/lang/Exception
    //   1285	1300	3218	java/lang/Exception
    //   1304	1343	3218	java/lang/Exception
    //   1352	1361	3218	java/lang/Exception
    //   1454	1464	3218	java/lang/Exception
    //   1473	1484	3218	java/lang/Exception
    //   1488	1497	3218	java/lang/Exception
    //   1568	1607	3218	java/lang/Exception
    //   1621	1628	3218	java/lang/Exception
    //   1636	1643	3218	java/lang/Exception
    //   1650	1671	3218	java/lang/Exception
    //   1675	1700	3218	java/lang/Exception
    //   1771	1787	3218	java/lang/Exception
    //   1791	1807	3218	java/lang/Exception
    //   1883	1891	3218	java/lang/Exception
    //   2054	2064	3218	java/lang/Exception
    //   2068	2089	3218	java/lang/Exception
    //   2096	2108	3218	java/lang/Exception
    //   2112	2175	3218	java/lang/Exception
    //   2188	2194	3218	java/lang/Exception
    //   2198	2207	3218	java/lang/Exception
    //   2211	2218	3218	java/lang/Exception
    //   2222	2233	3218	java/lang/Exception
    //   2240	2250	3218	java/lang/Exception
    //   2254	2267	3218	java/lang/Exception
    //   2271	2284	3218	java/lang/Exception
    //   2306	2316	3218	java/lang/Exception
    //   2329	2343	3218	java/lang/Exception
    //   2424	2455	3218	java/lang/Exception
    //   2480	2492	3218	java/lang/Exception
    //   2507	2515	3218	java/lang/Exception
    //   2523	2528	3218	java/lang/Exception
    //   2540	2568	3218	java/lang/Exception
    //   2580	2602	3218	java/lang/Exception
    //   2606	2619	3218	java/lang/Exception
    //   2628	2659	3218	java/lang/Exception
    //   2663	2690	3218	java/lang/Exception
    //   2694	2715	3218	java/lang/Exception
    //   2719	2727	3218	java/lang/Exception
    //   2731	2739	3218	java/lang/Exception
    //   2743	2750	3218	java/lang/Exception
    //   2775	2792	3218	java/lang/Exception
    //   2796	2830	3218	java/lang/Exception
    //   2906	2917	3218	java/lang/Exception
    //   2921	2955	3218	java/lang/Exception
    //   3034	3044	3218	java/lang/Exception
    //   3053	3061	3218	java/lang/Exception
    //   3065	3074	3218	java/lang/Exception
    //   3086	3097	3218	java/lang/Exception
    //   3106	3116	3218	java/lang/Exception
    //   3125	3157	3218	java/lang/Exception
    //   3166	3177	3218	java/lang/Exception
    //   3209	3215	3218	java/lang/Exception
    //   3339	3348	3218	java/lang/Exception
    //   3357	3364	3218	java/lang/Exception
    //   3368	3379	3218	java/lang/Exception
    //   3388	3398	3218	java/lang/Exception
    //   3402	3413	3218	java/lang/Exception
    //   3417	3428	3218	java/lang/Exception
    //   3432	3438	3218	java/lang/Exception
    //   3447	3475	3218	java/lang/Exception
    //   3488	3532	3218	java/lang/Exception
    //   3610	3616	3218	java/lang/Exception
    //   3628	3639	3218	java/lang/Exception
    //   3643	3664	3218	java/lang/Exception
    //   3668	3675	3218	java/lang/Exception
    //   3679	3684	3218	java/lang/Exception
    //   3755	3768	3218	java/lang/Exception
    //   3772	3785	3218	java/lang/Exception
    //   3794	3801	3218	java/lang/Exception
    //   3805	3816	3218	java/lang/Exception
    //   3834	3845	3218	java/lang/Exception
    //   3849	3862	3218	java/lang/Exception
    //   3866	3871	3218	java/lang/Exception
    //   3942	3950	3218	java/lang/Exception
    //   3954	3962	3218	java/lang/Exception
    //   3966	3974	3218	java/lang/Exception
    //   3987	4000	3218	java/lang/Exception
    //   4019	4034	3218	java/lang/Exception
    //   4147	4155	3218	java/lang/Exception
    //   4162	4170	3218	java/lang/Exception
    //   4179	4201	3218	java/lang/Exception
    //   4209	4218	3218	java/lang/Exception
    //   4222	4229	3218	java/lang/Exception
    //   4372	4377	3218	java/lang/Exception
    //   4381	4393	3218	java/lang/Exception
    //   4406	4413	3218	java/lang/Exception
    //   4425	4435	3218	java/lang/Exception
    //   4439	4449	3218	java/lang/Exception
    //   4468	4496	3218	java/lang/Exception
    //   4500	4506	3218	java/lang/Exception
    //   4510	4519	3218	java/lang/Exception
    //   4523	4532	3218	java/lang/Exception
    //   4539	4553	3218	java/lang/Exception
    //   4565	4595	3218	java/lang/Exception
    //   4599	4606	3218	java/lang/Exception
    //   4742	4767	3218	java/lang/Exception
    //   4845	4852	3218	java/lang/Exception
    //   4866	4891	3218	java/lang/Exception
    //   4967	4973	3218	java/lang/Exception
    //   4977	4985	3218	java/lang/Exception
    //   4989	4997	3218	java/lang/Exception
    //   5001	5012	3218	java/lang/Exception
    //   5016	5043	3218	java/lang/Exception
    //   5047	5056	3218	java/lang/Exception
    //   5060	5068	3218	java/lang/Exception
    //   5072	5080	3218	java/lang/Exception
    //   5084	5091	3218	java/lang/Exception
    //   5162	5183	3218	java/lang/Exception
    //   5502	5527	3218	java/lang/Exception
    //   5599	5607	3218	java/lang/Exception
    //   5621	5646	3218	java/lang/Exception
    //   5722	5728	3218	java/lang/Exception
    //   5732	5740	3218	java/lang/Exception
    //   5744	5752	3218	java/lang/Exception
    //   5756	5767	3218	java/lang/Exception
    //   5771	5798	3218	java/lang/Exception
    //   5802	5811	3218	java/lang/Exception
    //   5815	5823	3218	java/lang/Exception
    //   5827	5835	3218	java/lang/Exception
    //   5839	5846	3218	java/lang/Exception
    //   5917	5938	3218	java/lang/Exception
    //   5993	6018	3218	java/lang/Exception
    //   6091	6098	3218	java/lang/Exception
    //   6112	6137	3218	java/lang/Exception
    //   6213	6219	3218	java/lang/Exception
    //   6223	6231	3218	java/lang/Exception
    //   6235	6243	3218	java/lang/Exception
    //   6247	6258	3218	java/lang/Exception
    //   6262	6289	3218	java/lang/Exception
    //   6293	6302	3218	java/lang/Exception
    //   6306	6314	3218	java/lang/Exception
    //   6318	6326	3218	java/lang/Exception
    //   6330	6337	3218	java/lang/Exception
    //   6341	6349	3218	java/lang/Exception
    //   6353	6361	3218	java/lang/Exception
    //   6370	6378	3218	java/lang/Exception
    //   6382	6388	3218	java/lang/Exception
    //   6392	6406	3218	java/lang/Exception
    //   6410	6416	3218	java/lang/Exception
    //   6420	6426	3218	java/lang/Exception
    //   6430	6448	3218	java/lang/Exception
    //   6452	6468	3218	java/lang/Exception
    //   6472	6485	3218	java/lang/Exception
    //   6492	6513	3218	java/lang/Exception
    //   6566	6591	3218	java/lang/Exception
    //   6664	6671	3218	java/lang/Exception
    //   6685	6710	3218	java/lang/Exception
    //   6786	6792	3218	java/lang/Exception
    //   6796	6804	3218	java/lang/Exception
    //   6808	6816	3218	java/lang/Exception
    //   6820	6831	3218	java/lang/Exception
    //   6835	6862	3218	java/lang/Exception
    //   6866	6875	3218	java/lang/Exception
    //   6879	6887	3218	java/lang/Exception
    //   6891	6899	3218	java/lang/Exception
    //   6903	6910	3218	java/lang/Exception
    //   6914	6917	3218	java/lang/Exception
    //   6921	6942	3218	java/lang/Exception
    //   6949	6957	3218	java/lang/Exception
    //   6961	6977	3218	java/lang/Exception
    //   6984	6992	3218	java/lang/Exception
    //   6996	7012	3218	java/lang/Exception
    //   7019	7027	3218	java/lang/Exception
    //   7031	7047	3218	java/lang/Exception
    //   7054	7059	3218	java/lang/Exception
    //   7075	7096	3218	java/lang/Exception
    //   7100	7107	3218	java/lang/Exception
    //   3357	3364	3605	com/estrongs/fs/FileSystemException
    //   3368	3379	3605	com/estrongs/fs/FileSystemException
    //   4668	4672	4834	java/lang/Exception
    //   4716	4720	4839	java/lang/Exception
    //   171	177	5186	finally
    //   181	190	5186	finally
    //   205	212	5186	finally
    //   216	223	5186	finally
    //   227	237	5186	finally
    //   241	251	5186	finally
    //   255	271	5186	finally
    //   278	285	5186	finally
    //   299	308	5186	finally
    //   325	346	5186	finally
    //   350	357	5186	finally
    //   366	373	5186	finally
    //   476	487	5186	finally
    //   491	503	5186	finally
    //   507	513	5186	finally
    //   517	526	5186	finally
    //   538	569	5186	finally
    //   573	584	5186	finally
    //   718	725	5186	finally
    //   770	778	5186	finally
    //   782	789	5186	finally
    //   793	800	5186	finally
    //   804	820	5186	finally
    //   824	837	5186	finally
    //   841	853	5186	finally
    //   857	878	5186	finally
    //   885	927	5186	finally
    //   938	946	5186	finally
    //   950	959	5186	finally
    //   968	977	5186	finally
    //   984	990	5186	finally
    //   1008	1039	5186	finally
    //   1043	1054	5186	finally
    //   1058	1066	5186	finally
    //   1070	1081	5186	finally
    //   1085	1100	5186	finally
    //   1104	1120	5186	finally
    //   1146	1157	5186	finally
    //   1161	1168	5186	finally
    //   1285	1300	5186	finally
    //   1304	1343	5186	finally
    //   1352	1361	5186	finally
    //   1454	1464	5186	finally
    //   1473	1484	5186	finally
    //   1488	1497	5186	finally
    //   1568	1607	5186	finally
    //   1621	1628	5186	finally
    //   1636	1643	5186	finally
    //   1650	1671	5186	finally
    //   1675	1700	5186	finally
    //   1771	1787	5186	finally
    //   1791	1807	5186	finally
    //   1883	1891	5186	finally
    //   1900	1910	5186	finally
    //   2054	2064	5186	finally
    //   2068	2089	5186	finally
    //   2096	2108	5186	finally
    //   2112	2175	5186	finally
    //   2188	2194	5186	finally
    //   2198	2207	5186	finally
    //   2211	2218	5186	finally
    //   2222	2233	5186	finally
    //   2240	2250	5186	finally
    //   2254	2267	5186	finally
    //   2271	2284	5186	finally
    //   2306	2316	5186	finally
    //   2329	2343	5186	finally
    //   2424	2455	5186	finally
    //   2480	2492	5186	finally
    //   2507	2515	5186	finally
    //   2523	2528	5186	finally
    //   2540	2568	5186	finally
    //   2580	2602	5186	finally
    //   2606	2619	5186	finally
    //   2628	2659	5186	finally
    //   2663	2690	5186	finally
    //   2694	2715	5186	finally
    //   2719	2727	5186	finally
    //   2731	2739	5186	finally
    //   2743	2750	5186	finally
    //   2775	2792	5186	finally
    //   2796	2830	5186	finally
    //   2906	2917	5186	finally
    //   2921	2955	5186	finally
    //   3034	3044	5186	finally
    //   3053	3061	5186	finally
    //   3065	3074	5186	finally
    //   3086	3097	5186	finally
    //   3106	3116	5186	finally
    //   3125	3157	5186	finally
    //   3166	3177	5186	finally
    //   3209	3215	5186	finally
    //   3228	3267	5186	finally
    //   3339	3348	5186	finally
    //   3357	3364	5186	finally
    //   3368	3379	5186	finally
    //   3388	3398	5186	finally
    //   3402	3413	5186	finally
    //   3417	3428	5186	finally
    //   3432	3438	5186	finally
    //   3447	3475	5186	finally
    //   3488	3532	5186	finally
    //   3610	3616	5186	finally
    //   3628	3639	5186	finally
    //   3643	3664	5186	finally
    //   3668	3675	5186	finally
    //   3679	3684	5186	finally
    //   3755	3768	5186	finally
    //   3772	3785	5186	finally
    //   3794	3801	5186	finally
    //   3805	3816	5186	finally
    //   3834	3845	5186	finally
    //   3849	3862	5186	finally
    //   3866	3871	5186	finally
    //   3942	3950	5186	finally
    //   3954	3962	5186	finally
    //   3966	3974	5186	finally
    //   3987	4000	5186	finally
    //   4019	4034	5186	finally
    //   4054	4064	5186	finally
    //   4068	4076	5186	finally
    //   4147	4155	5186	finally
    //   4162	4170	5186	finally
    //   4179	4201	5186	finally
    //   4209	4218	5186	finally
    //   4222	4229	5186	finally
    //   4372	4377	5186	finally
    //   4381	4393	5186	finally
    //   4406	4413	5186	finally
    //   4425	4435	5186	finally
    //   4439	4449	5186	finally
    //   4468	4496	5186	finally
    //   4500	4506	5186	finally
    //   4510	4519	5186	finally
    //   4523	4532	5186	finally
    //   4539	4553	5186	finally
    //   4565	4595	5186	finally
    //   4599	4606	5186	finally
    //   4703	4708	5186	finally
    //   4716	4720	5186	finally
    //   4742	4767	5186	finally
    //   4845	4852	5186	finally
    //   4866	4891	5186	finally
    //   4967	4973	5186	finally
    //   4977	4985	5186	finally
    //   4989	4997	5186	finally
    //   5001	5012	5186	finally
    //   5016	5043	5186	finally
    //   5047	5056	5186	finally
    //   5060	5068	5186	finally
    //   5072	5080	5186	finally
    //   5084	5091	5186	finally
    //   5162	5183	5186	finally
    //   5461	5466	5186	finally
    //   5475	5480	5186	finally
    //   5502	5527	5186	finally
    //   5599	5607	5186	finally
    //   5621	5646	5186	finally
    //   5722	5728	5186	finally
    //   5732	5740	5186	finally
    //   5744	5752	5186	finally
    //   5756	5767	5186	finally
    //   5771	5798	5186	finally
    //   5802	5811	5186	finally
    //   5815	5823	5186	finally
    //   5827	5835	5186	finally
    //   5839	5846	5186	finally
    //   5917	5938	5186	finally
    //   5954	5959	5186	finally
    //   5967	5971	5186	finally
    //   5993	6018	5186	finally
    //   6091	6098	5186	finally
    //   6112	6137	5186	finally
    //   6213	6219	5186	finally
    //   6223	6231	5186	finally
    //   6235	6243	5186	finally
    //   6247	6258	5186	finally
    //   6262	6289	5186	finally
    //   6293	6302	5186	finally
    //   6306	6314	5186	finally
    //   6318	6326	5186	finally
    //   6330	6337	5186	finally
    //   6341	6349	5186	finally
    //   6353	6361	5186	finally
    //   6370	6378	5186	finally
    //   6382	6388	5186	finally
    //   6392	6406	5186	finally
    //   6410	6416	5186	finally
    //   6420	6426	5186	finally
    //   6430	6448	5186	finally
    //   6452	6468	5186	finally
    //   6472	6485	5186	finally
    //   6492	6513	5186	finally
    //   6527	6532	5186	finally
    //   6540	6544	5186	finally
    //   6566	6591	5186	finally
    //   6664	6671	5186	finally
    //   6685	6710	5186	finally
    //   6786	6792	5186	finally
    //   6796	6804	5186	finally
    //   6808	6816	5186	finally
    //   6820	6831	5186	finally
    //   6835	6862	5186	finally
    //   6866	6875	5186	finally
    //   6879	6887	5186	finally
    //   6891	6899	5186	finally
    //   6903	6910	5186	finally
    //   6914	6917	5186	finally
    //   6921	6942	5186	finally
    //   6949	6957	5186	finally
    //   6961	6977	5186	finally
    //   6984	6992	5186	finally
    //   6996	7012	5186	finally
    //   7019	7027	5186	finally
    //   7031	7047	5186	finally
    //   7054	7059	5186	finally
    //   7075	7096	5186	finally
    //   7100	7107	5186	finally
    //   5475	5480	5594	java/lang/Exception
    //   5967	5971	6085	java/lang/Exception
    //   4606	4615	6516	finally
    //   4626	4634	6516	finally
    //   4639	4664	6516	finally
    //   4668	4672	6516	finally
    //   5254	5263	6516	finally
    //   5941	5945	6516	finally
    //   6540	6544	6658	java/lang/Exception
    //   4703	4708	7211	java/lang/Exception
    //   5414	5418	7216	java/lang/Exception
    //   5461	5466	7221	java/lang/Exception
    //   5954	5959	7225	java/lang/Exception
    //   6527	6532	7230	java/lang/Exception
    //   141	167	7235	finally
    //   599	606	7242	finally
    //   611	624	7242	finally
    //   629	639	7242	finally
    //   7174	7208	7242	finally
    //   141	167	7253	java/lang/Exception
    //   141	167	7260	com/estrongs/fs/FileSystemException
    //   4674	4694	7268	finally
    //   5274	5288	7273	finally
    //   5296	5326	7273	finally
    //   5329	5355	7273	finally
    //   5363	5371	7273	finally
    //   5379	5404	7273	finally
    //   5414	5418	7273	finally
    //   5423	5429	7273	finally
    //   5432	5440	7273	finally
    //   5443	5449	7273	finally
    //   4054	4064	7281	java/lang/Exception
    //   4068	4076	7281	java/lang/Exception
  }
  
  public boolean a(h paramh)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramh);
    return a(localLinkedList);
  }
  
  public boolean a(h paramh, String paramString)
  {
    return a(paramh, paramString, true);
  }
  
  public boolean a(h paramh, String paramString, boolean paramBoolean)
  {
    boolean bool;
    if ((paramh == null) || (paramString == null)) {
      bool = false;
    }
    String str2;
    String str1;
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
                return bool;
                str2 = paramh.getAbsolutePath();
                String str3 = am.d(paramString);
                str1 = paramString;
                if (paramh.getFileType().a())
                {
                  str1 = paramString;
                  if (am.bb(str2))
                  {
                    str1 = paramString;
                    if (!paramString.endsWith("/")) {
                      str1 = paramString + "/";
                    }
                  }
                }
                if ((paramBoolean) && (b(str1)) && ((!am.ba(str1)) || (str1.equals(str2)) || (!str1.equalsIgnoreCase(str2)))) {
                  throw new FileExistException(am.D(str1));
                }
                paramString = o(am.by(paramh.getPath()));
                if (paramString == null) {
                  break label288;
                }
                if (!(paramString instanceof com.estrongs.fs.impl.g.a)) {
                  break;
                }
                paramBoolean = ((com.estrongs.fs.impl.g.a)paramString).a(paramh, str3);
                bool = paramBoolean;
              } while (!paramBoolean);
              bool = paramBoolean;
            } while ((com.estrongs.a.a.getCurrentTask() instanceof ar));
            bool = paramBoolean;
          } while ((com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.p));
          com.estrongs.fs.a.b.a().a(paramh, str1);
          return paramBoolean;
          if (!(paramString instanceof com.estrongs.fs.impl.adb.c)) {
            break;
          }
          paramBoolean = ((com.estrongs.fs.impl.adb.c)paramString).a(paramh, new o(str1));
          bool = paramBoolean;
        } while (!paramBoolean);
        bool = paramBoolean;
      } while ((com.estrongs.a.a.getCurrentTask() instanceof ar));
      bool = paramBoolean;
    } while ((com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.p));
    com.estrongs.fs.a.b.a().a(paramh, str1);
    return paramBoolean;
    label288:
    switch (am.G(str2))
    {
    default: 
      paramBoolean = false;
    }
    for (;;)
    {
      paramString = com.estrongs.a.a.getCurrentTask();
      bool = paramBoolean;
      if (!paramBoolean) {
        break;
      }
      bool = paramBoolean;
      if ((paramString instanceof ar)) {
        break;
      }
      bool = paramBoolean;
      if ((paramString instanceof com.estrongs.fs.b.p)) {
        break;
      }
      bool = paramBoolean;
      if ((paramString instanceof y)) {
        break;
      }
      com.estrongs.fs.a.b.a().a(paramh, str1);
      return paramBoolean;
      paramString = null;
      if (!am.bl(str1)) {
        paramString = am.k(str1, "rw");
      }
      paramBoolean = com.estrongs.fs.impl.local.h.a(str2, str1);
      if (paramString != null)
      {
        am.a(paramString);
        continue;
        paramBoolean = com.estrongs.fs.impl.p.b.a(str2, str1);
        continue;
        paramBoolean = com.estrongs.fs.impl.usb.e.a(str2, str1);
        continue;
        paramBoolean = com.estrongs.fs.impl.r.b.a(str2, str1);
        continue;
        paramString = n(am.by(str2));
        if (paramString == null) {
          throw new FsProviderNotFoundException(am.by(str2), com.estrongs.android.pop.b.a.a(am.by(str2)));
        }
        paramBoolean = paramString.a(str2, str1);
        continue;
        paramBoolean = com.estrongs.fs.impl.c.a.a(str2, str1);
        continue;
        try
        {
          paramBoolean = com.estrongs.fs.impl.j.b.c(am.bM(str2), am.bM(str1));
        }
        catch (NetFsException paramh)
        {
          throw new FileSystemException(a(error), paramh);
        }
        try
        {
          paramBoolean = SPFileSystem.renameFile(str2, str1);
        }
        catch (NetFsException paramh)
        {
          throw new FileSystemException(a(error), paramh);
        }
      }
    }
  }
  
  public boolean a(String paramString, s params)
  {
    if (paramString == null) {
      return false;
    }
    return a(j(paramString));
  }
  
  public boolean a(List<h> paramList)
  {
    return a(paramList, null);
  }
  
  public boolean a(List<h> paramList, h paramh)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return false;
    }
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    for (;;)
    {
      int i;
      try
      {
        String str = paramh.getAbsolutePath();
        if (!str.endsWith("/")) {
          break label983;
        }
        str = str.substring(0, str.length() - 1);
        com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
        boolean bool1 = am.bb(((h)paramList.get(0)).getAbsolutePath());
        j = 0;
        label119:
        h localh;
        if ((am.aw(str)) && (am.d(str, "mediafire")))
        {
          i = 1;
          break label986;
          Iterator localIterator = paramList.iterator();
          i = j;
          if (!localIterator.hasNext()) {
            break label933;
          }
          localh = (h)localIterator.next();
          localObject1 = str + "/" + localh.getName();
          localObject2 = localObject1;
          if (localh.getFileType().a())
          {
            localObject2 = localObject1;
            if (bool1) {
              localObject2 = (String)localObject1 + "/";
            }
          }
          if (locala != null)
          {
            bool2 = locala.taskStopped();
            if (bool2) {
              return false;
            }
          }
        }
        else
        {
          i = 0;
          break label986;
        }
        if (am.e(localh.getAbsolutePath(), (String)localObject2)) {
          continue;
        }
        boolean bool2 = b((String)localObject2);
        int m = 1;
        j = i;
        if (bool2)
        {
          if (locala == null) {
            break label971;
          }
          localObject1 = (com.estrongs.a.a.h)locala.getDecision(com.estrongs.a.a.h.class, new Object[] { localObject2, Boolean.valueOf(false), localh, j((String)localObject2) });
          if (localObject1 == null) {
            break label971;
          }
          i = 0;
          if (((!f) || (g != 1)) || (g == 5)) {
            i = 1;
          }
          j = g;
          if (j == 2)
          {
            locala.sendMessage(2, new Object[] { Long.valueOf(localh.length()), paramList });
            locala.sendMessage(8, new Object[0]);
            continue;
          }
          if (j == 3)
          {
            if (getTaskResulta == 0) {
              locala.setTaskResult(1, null);
            }
            return false;
          }
          m = j;
          j = i;
        }
        Object localObject1 = localObject2;
        if (j != 0)
        {
          localObject1 = j.m((String)localObject2);
          locala.sendMessage(12, new Object[] { localh.getPath(), localObject1 });
        }
        StringBuilder localStringBuilder = null;
        Object localObject2 = localStringBuilder;
        if (bool2)
        {
          localObject2 = localStringBuilder;
          if (m == 1)
          {
            localObject2 = localStringBuilder;
            if (k != 0)
            {
              localStringBuilder = new StringBuilder();
              if (((String)localObject1).endsWith("/"))
              {
                localObject2 = ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
                localObject2 = (String)localObject2 + ".bak." + System.currentTimeMillis();
                boolean bool3 = b(new n((String)localObject1), am.d((String)localObject2));
                if (!bool3) {
                  return false;
                }
              }
              else
              {
                localObject2 = localObject1;
                continue;
              }
            }
          }
        }
        if (!b(localh.getAbsolutePath(), (String)localObject1))
        {
          if ((bool2) && (m == 1) && (k != 0)) {
            b(new n((String)localObject2), am.d((String)localObject1));
          }
          return false;
        }
        if ((bool2) && (m == 1) && (k != 0)) {
          a(new n((String)localObject2));
        }
        localArrayList1.add(localh);
        localArrayList2.add(new o(paramh, localh.getName()));
        i = j;
        continue;
        if (localArrayList1.size() <= 0) {
          break label951;
        }
      }
      finally
      {
        if (localArrayList1.size() > 0) {
          com.estrongs.fs.a.b.a().d(localArrayList1);
        }
        if (localArrayList2.size() > 0) {
          com.estrongs.fs.a.b.a().b(localArrayList2);
        }
      }
      label933:
      com.estrongs.fs.a.b.a().d(localArrayList1);
      label951:
      if (localArrayList2.size() > 0) {
        com.estrongs.fs.a.b.a().b(localArrayList2);
      }
      return true;
      label971:
      int j = 1;
      continue;
      label983:
      label986:
      do
      {
        k = 1;
        break label119;
        break;
      } while (i == 0);
      int k = 0;
    }
  }
  
  public boolean a(List<h> paramList1, List<h> paramList2)
  {
    boolean bool2;
    if ((paramList1 == null) || (paramList1.size() == 0)) {
      bool2 = false;
    }
    for (;;)
    {
      return bool2;
      Object localObject1 = paramList2;
      if (paramList2 == null) {
        localObject1 = new ArrayList();
      }
      com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
      paramList2 = null;
      for (;;)
      {
        try
        {
          localObject2 = ((h)paramList1.get(0)).getAbsolutePath();
          if ((!am.ba((String)localObject2)) || (am.bl((String)localObject2))) {
            continue;
          }
          localObject2 = am.k((String)localObject2, "rw");
          paramList2 = (List<h>)localObject2;
        }
        finally
        {
          Object localObject2;
          boolean bool1;
          continue;
          int i = 1;
          continue;
          continue;
          paramList2 = null;
          continue;
          if (i != 0) {
            continue;
          }
          continue;
        }
        try
        {
          paramList1 = paramList1.iterator();
          bool1 = true;
          if (paramList1.hasNext())
          {
            localObject2 = (h)paramList1.next();
            bool1 = b((h)localObject2) & bool1;
            if (!bool1)
            {
              if (((locala instanceof ab)) && (((ab)locala).c()))
              {
                if (getDecisiong == 2)
                {
                  ab localab = (ab)locala;
                  if (j == null) {
                    j = new LinkedList();
                  }
                  j.add(((h)localObject2).getPath());
                  i = 1;
                  if (!((h)localObject2).getFileType().a()) {
                    continue;
                  }
                  com.estrongs.fs.a.b.a().d(((h)localObject2).getPath());
                  continue;
                  if ((!(locala instanceof ab)) && (!(locala instanceof y))) {
                    com.estrongs.fs.a.b.a().d((List)localObject1);
                  }
                  bool2 = bool1;
                  return bool1;
                }
                i = 0;
                continue;
              }
            }
            else
            {
              if ((!(locala instanceof ab)) || (j == null) || (!j.contains(((h)localObject2).getAbsolutePath()))) {
                ((List)localObject1).add(localObject2);
              }
              if ((locala == null) || (am.ba(((h)localObject2).getPath())) || (am.aO(((h)localObject2).getPath()))) {
                continue;
              }
              locala.sendMessage(1, new Object[] { Long.valueOf(1L), ((h)localObject2).getPath() });
              if (((h)localObject2).length() <= 0L) {
                continue;
              }
              locala.sendMessage(2, new Object[] { Long.valueOf(((h)localObject2).length()), ((h)localObject2).getPath() });
            }
          }
        }
        finally
        {
          if (paramList2 != null) {
            am.a(paramList2);
          }
        }
      }
    }
  }
  
  public OutputStream b(String paramString, long paramLong)
  {
    if (am.m(paramString)) {
      return com.estrongs.fs.impl.r.b.a(paramString, paramLong);
    }
    if (am.u(paramString))
    {
      k localk = o(am.by(paramString));
      if (localk != null) {
        return localk.a(paramString, new TypedMap().put("length", Long.valueOf(paramLong)));
      }
    }
    if ((!am.aw(paramString)) && (!am.aB(paramString)) && (!am.az(paramString))) {
      return f(paramString);
    }
    try
    {
      paramString = com.estrongs.fs.impl.j.b.b(am.bM(paramString), paramLong);
      return paramString;
    }
    catch (NetFsException paramString)
    {
      throw new FileSystemException(a(error), paramString);
    }
  }
  
  public OutputStream b(String paramString, long paramLong, TypedMap paramTypedMap)
  {
    if (!am.aG(paramString)) {
      return f(paramString);
    }
    try
    {
      paramString = SPFileSystem.getFileOutputStream(paramString, paramLong, paramTypedMap);
      return paramString;
    }
    catch (NetFsException paramString)
    {
      throw new FileSystemException(a(error), paramString);
    }
  }
  
  public boolean b(h paramh, String paramString)
  {
    return b(paramh, paramString, true);
  }
  
  public boolean b(h paramh, String paramString, boolean paramBoolean)
  {
    if ((paramh == null) || (paramString == null)) {
      return false;
    }
    String str = paramh.getAbsolutePath();
    return a(paramh, am.e(str) + "/" + paramString, paramBoolean);
  }
  
  public boolean b(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      if (am.bg(paramString)) {
        return true;
      }
      switch (am.G(paramString))
      {
      case 6: 
      case 7: 
      case 8: 
      case 9: 
      case 10: 
      case 15: 
      case 17: 
      case 24: 
      case 25: 
      case 26: 
      case 27: 
      case 28: 
      case 29: 
      case 30: 
      case 31: 
      case 32: 
      default: 
        localObject = o(am.by(paramString));
      }
    } while (localObject == null);
    return ((k)localObject).c(paramString);
    return com.estrongs.fs.impl.local.h.a(paramString);
    return com.estrongs.fs.impl.p.b.b(paramString);
    return com.estrongs.fs.impl.usb.e.d(paramString);
    return com.estrongs.fs.impl.r.b.d(paramString);
    Object localObject = n(am.by(paramString));
    if (localObject != null) {
      return ((com.estrongs.old.fs.a)localObject).b(paramString);
    }
    return com.estrongs.fs.impl.c.a.d(paramString);
    boolean bool;
    try
    {
      bool = com.estrongs.fs.impl.j.b.e(am.bM(paramString));
      return bool;
    }
    catch (NetFsException paramString)
    {
      throw new FileSystemException(a(error), paramString);
    }
    try
    {
      bool = SPFileSystem.exists(paramString);
      return bool;
    }
    catch (NetFsException paramString)
    {
      throw new FileSystemException(a(error), paramString);
    }
    return true;
    return com.estrongs.fs.impl.i.b.d(paramString);
    return com.estrongs.fs.impl.k.b.d(paramString);
    return com.estrongs.fs.impl.q.b.d(paramString);
    return com.estrongs.fs.impl.d.b.e(paramString);
  }
  
  /* Error */
  public boolean b(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_1
    //   4: ifnonnull +5 -> 9
    //   7: iconst_0
    //   8: ireturn
    //   9: aload_1
    //   10: invokestatic 73	com/estrongs/android/util/am:G	(Ljava/lang/String;)I
    //   13: lookupswitch	default:+115->128, 0:+189->202, 1:+245->258, 2:+272->285, 3:+339->352, 4:+348->361, 5:+272->285, 18:+378->391, 19:+272->285, 20:+272->285, 21:+263->276, 22:+263->276, 23:+348->361, 33:+254->267
    //   128: aload_0
    //   129: aload_1
    //   130: invokestatic 86	com/estrongs/android/util/am:by	(Ljava/lang/String;)Ljava/lang/String;
    //   133: invokevirtual 385	com/estrongs/fs/d:o	(Ljava/lang/String;)Lcom/estrongs/fs/k;
    //   136: astore 5
    //   138: aload 5
    //   140: ifnull +327 -> 467
    //   143: iload_2
    //   144: ifeq +274 -> 418
    //   147: aload 5
    //   149: aload_1
    //   150: invokeinterface 1342 2 0
    //   155: istore_3
    //   156: iload_3
    //   157: ifeq +43 -> 200
    //   160: aload_1
    //   161: invokestatic 702	com/estrongs/android/util/am:aB	(Ljava/lang/String;)Z
    //   164: ifne +10 -> 174
    //   167: aload_1
    //   168: invokestatic 518	com/estrongs/android/util/am:az	(Ljava/lang/String;)Z
    //   171: ifeq +306 -> 477
    //   174: invokestatic 292	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   177: astore 5
    //   179: iload_2
    //   180: ifne +292 -> 472
    //   183: iload 4
    //   185: istore_2
    //   186: aload 5
    //   188: new 819	com/estrongs/fs/o
    //   191: dup
    //   192: aload_1
    //   193: iload_2
    //   194: invokespecial 1345	com/estrongs/fs/o:<init>	(Ljava/lang/String;Z)V
    //   197: invokevirtual 1348	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;)V
    //   200: iload_3
    //   201: ireturn
    //   202: aconst_null
    //   203: astore 5
    //   205: aload_1
    //   206: invokestatic 401	com/estrongs/android/util/am:bl	(Ljava/lang/String;)Z
    //   209: ifne +12 -> 221
    //   212: aload_1
    //   213: ldc_w 985
    //   216: invokestatic 988	com/estrongs/android/util/am:k	(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    //   219: astore 5
    //   221: aload_1
    //   222: iload_2
    //   223: invokestatic 1350	com/estrongs/fs/impl/local/h:a	(Ljava/lang/String;Z)Z
    //   226: istore_3
    //   227: aload 5
    //   229: ifnull +9 -> 238
    //   232: aload 5
    //   234: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   237: pop
    //   238: goto -82 -> 156
    //   241: astore_1
    //   242: aconst_null
    //   243: astore 5
    //   245: aload 5
    //   247: ifnull +9 -> 256
    //   250: aload 5
    //   252: invokestatic 1002	com/estrongs/android/util/am:a	([Ljava/lang/String;)Z
    //   255: pop
    //   256: aload_1
    //   257: athrow
    //   258: aload_1
    //   259: iload_2
    //   260: invokestatic 1351	com/estrongs/fs/impl/p/b:a	(Ljava/lang/String;Z)Z
    //   263: istore_3
    //   264: goto -108 -> 156
    //   267: aload_1
    //   268: iload_2
    //   269: invokestatic 1352	com/estrongs/fs/impl/usb/e:a	(Ljava/lang/String;Z)Z
    //   272: istore_3
    //   273: goto -117 -> 156
    //   276: aload_1
    //   277: iload_2
    //   278: invokestatic 1354	com/estrongs/fs/impl/r/b:b	(Ljava/lang/String;Z)Z
    //   281: istore_3
    //   282: goto -126 -> 156
    //   285: aload_1
    //   286: invokestatic 86	com/estrongs/android/util/am:by	(Ljava/lang/String;)Ljava/lang/String;
    //   289: invokestatic 90	com/estrongs/fs/d:n	(Ljava/lang/String;)Lcom/estrongs/old/fs/a;
    //   292: astore 6
    //   294: aload_1
    //   295: astore 5
    //   297: iload_2
    //   298: ifeq +38 -> 336
    //   301: aload_1
    //   302: astore 5
    //   304: aload_1
    //   305: ldc_w 271
    //   308: invokevirtual 274	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   311: ifne +25 -> 336
    //   314: new 276	java/lang/StringBuilder
    //   317: dup
    //   318: invokespecial 277	java/lang/StringBuilder:<init>	()V
    //   321: aload_1
    //   322: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: ldc_w 271
    //   328: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: invokevirtual 284	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: astore 5
    //   336: aload 6
    //   338: aload 5
    //   340: invokeinterface 1355 2 0
    //   345: istore_3
    //   346: aload 5
    //   348: astore_1
    //   349: goto -193 -> 156
    //   352: aload_1
    //   353: iload_2
    //   354: invokestatic 1356	com/estrongs/fs/impl/c/a:a	(Ljava/lang/String;Z)Z
    //   357: istore_3
    //   358: goto -202 -> 156
    //   361: aload_1
    //   362: invokestatic 510	com/estrongs/android/util/am:bM	(Ljava/lang/String;)Ljava/lang/String;
    //   365: iload_2
    //   366: invokestatic 1357	com/estrongs/fs/impl/j/b:a	(Ljava/lang/String;Z)Z
    //   369: istore_3
    //   370: goto -214 -> 156
    //   373: astore_1
    //   374: new 266	com/estrongs/fs/FileSystemException
    //   377: dup
    //   378: aload_0
    //   379: aload_1
    //   380: getfield 617	com/estrongs/android/pop/netfs/NetFsException:error	Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
    //   383: invokespecial 619	com/estrongs/fs/d:a	(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;
    //   386: aload_1
    //   387: invokespecial 622	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   390: athrow
    //   391: aload_1
    //   392: iload_2
    //   393: invokestatic 1360	com/estrongs/android/pop/spfs/SPFileSystem:createFile	(Ljava/lang/String;Z)Z
    //   396: istore_3
    //   397: goto -241 -> 156
    //   400: astore_1
    //   401: new 266	com/estrongs/fs/FileSystemException
    //   404: dup
    //   405: aload_0
    //   406: aload_1
    //   407: getfield 617	com/estrongs/android/pop/netfs/NetFsException:error	Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
    //   410: invokespecial 619	com/estrongs/fs/d:a	(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;
    //   413: aload_1
    //   414: invokespecial 622	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   417: athrow
    //   418: aload 5
    //   420: aload_1
    //   421: new 299	com/estrongs/android/util/TypedMap
    //   424: dup
    //   425: invokespecial 445	com/estrongs/android/util/TypedMap:<init>	()V
    //   428: ldc_w 1309
    //   431: lconst_0
    //   432: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   435: invokevirtual 318	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   438: invokeinterface 1312 3 0
    //   443: astore 5
    //   445: aload 5
    //   447: ifnull +20 -> 467
    //   450: aload 5
    //   452: invokevirtual 1172	java/io/OutputStream:close	()V
    //   455: iconst_1
    //   456: istore_3
    //   457: goto -301 -> 156
    //   460: astore 5
    //   462: aload 5
    //   464: invokevirtual 1361	java/io/IOException:printStackTrace	()V
    //   467: iconst_0
    //   468: istore_3
    //   469: goto -313 -> 156
    //   472: iconst_0
    //   473: istore_2
    //   474: goto -288 -> 186
    //   477: invokestatic 292	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   480: aload_1
    //   481: invokevirtual 1362	com/estrongs/fs/a/b:a	(Ljava/lang/String;)V
    //   484: goto -284 -> 200
    //   487: astore_1
    //   488: goto -243 -> 245
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	491	0	this	d
    //   0	491	1	paramString	String
    //   0	491	2	paramBoolean	boolean
    //   155	314	3	bool1	boolean
    //   1	183	4	bool2	boolean
    //   136	315	5	localObject	Object
    //   460	3	5	localIOException	java.io.IOException
    //   292	45	6	locala	com.estrongs.old.fs.a
    // Exception table:
    //   from	to	target	type
    //   205	221	241	finally
    //   361	370	373	com/estrongs/android/pop/netfs/NetFsException
    //   391	397	400	com/estrongs/android/pop/netfs/NetFsException
    //   450	455	460	java/io/IOException
    //   221	227	487	finally
  }
  
  public c c(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject;
    switch (am.G(paramString))
    {
    default: 
      return null;
    case 0: 
      return com.estrongs.fs.impl.local.h.c(paramString);
    case 1: 
      return com.estrongs.fs.impl.p.b.f(paramString);
    case 33: 
      return com.estrongs.fs.impl.usb.e.i(paramString);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.r.b.a(paramString);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      localObject = n(am.by(paramString));
      if (localObject != null) {
        return ((com.estrongs.old.fs.a)localObject).g(paramString);
      }
    case 3: 
      return com.estrongs.fs.impl.c.a.f(paramString);
    case 4: 
    case 23: 
      try
      {
        localObject = com.estrongs.fs.impl.j.b.g(am.bM(paramString));
        return (c)localObject;
      }
      catch (NetFsException localNetFsException1) {}
    case 18: 
      try
      {
        c localc = SPFileSystem.getFileInfo(paramString);
        return localc;
      }
      catch (NetFsException localNetFsException2) {}
    }
    return com.estrongs.fs.impl.adb.c.k(paramString);
  }
  
  public boolean c(String paramString, boolean paramBoolean)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    if (paramString == null) {
      return bool2;
    }
    Object localObject;
    switch (am.G(paramString))
    {
    default: 
      localObject = o(am.by(paramString));
      if (localObject != null) {
        return ((k)localObject).b(paramString);
      }
      break;
    case 0: 
      localObject = null;
      if (!am.bl(paramString)) {
        localObject = am.k(paramString, "rw");
      }
      bool1 = com.estrongs.fs.impl.local.h.g(paramString);
      if (localObject != null) {
        am.a((String[])localObject);
      }
      break;
    }
    for (;;)
    {
      bool2 = bool1;
      if (!paramBoolean) {
        break;
      }
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      paramString = com.estrongs.fs.a.b.a().g(paramString);
      com.estrongs.fs.a.b.a().a(paramString);
      return bool1;
      bool1 = com.estrongs.fs.impl.p.b.c(paramString);
      continue;
      bool1 = com.estrongs.fs.impl.usb.e.e(paramString);
      continue;
      bool1 = com.estrongs.fs.impl.r.b.e(paramString);
      continue;
      localObject = n(am.by(paramString));
      if (localObject != null)
      {
        bool1 = ((com.estrongs.old.fs.a)localObject).d(paramString);
        continue;
        bool1 = com.estrongs.fs.impl.c.a.e(paramString);
        continue;
        try
        {
          bool1 = com.estrongs.fs.impl.j.b.i(am.bM(paramString));
        }
        catch (NetFsException paramString)
        {
          throw new FileSystemException(a(error), paramString);
        }
        try
        {
          bool1 = SPFileSystem.mkDirs(paramString);
        }
        catch (NetFsException paramString)
        {
          throw new FileSystemException(a(error), paramString);
        }
      }
    }
  }
  
  public long d(String paramString)
  {
    if (paramString == null) {
      return 0L;
    }
    long l;
    switch (am.G(paramString))
    {
    default: 
      return 0L;
    case 0: 
      return com.estrongs.fs.impl.local.h.e(paramString);
    case 1: 
      return com.estrongs.fs.impl.p.b.d(paramString);
    case 33: 
      return com.estrongs.fs.impl.usb.e.f(paramString);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.r.b.b(paramString);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      com.estrongs.old.fs.a locala = n(am.by(paramString));
      if (locala != null) {
        return locala.e(paramString);
      }
    case 3: 
      return com.estrongs.fs.impl.c.a.a(paramString);
    case 4: 
    case 23: 
      try
      {
        l = com.estrongs.fs.impl.j.b.h(am.bM(paramString));
        return l;
      }
      catch (Exception localException) {}
    }
    try
    {
      l = SPFileSystem.getFileLength(paramString);
      return l;
    }
    catch (Exception paramString) {}
    return 0L;
  }
  
  public InputStream e(String paramString)
  {
    return a(paramString, 0L);
  }
  
  public OutputStream f(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      switch (am.G(paramString))
      {
      case 21: 
      case 22: 
      default: 
        localObject = o(am.by(paramString));
      }
    } while (localObject == null);
    return ((k)localObject).a(paramString, true);
    return com.estrongs.fs.impl.local.h.f(paramString);
    return com.estrongs.fs.impl.p.b.h(paramString);
    return com.estrongs.fs.impl.usb.e.j(paramString);
    Object localObject = n(am.by(paramString));
    if (localObject != null) {
      return ((com.estrongs.old.fs.a)localObject).j(paramString);
    }
    return com.estrongs.fs.impl.c.a.h(paramString);
    try
    {
      localObject = com.estrongs.fs.impl.j.b.b(am.bM(paramString), -1L);
      return (OutputStream)localObject;
    }
    catch (NetFsException localNetFsException) {}
    try
    {
      paramString = SPFileSystem.getFileOutputStream(paramString, -1L, TypedMap.EMPTY);
      return paramString;
    }
    catch (NetFsException paramString)
    {
      throw new FileSystemException(a(error), paramString);
    }
  }
  
  public boolean g(String paramString)
  {
    return c(paramString, true);
  }
  
  public boolean h(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    if (paramString.endsWith("/")) {
      return true;
    }
    boolean bool;
    switch (am.G(paramString))
    {
    default: 
      return false;
    case 0: 
      return com.estrongs.fs.impl.local.h.h(paramString);
    case 1: 
      return com.estrongs.fs.impl.p.b.e(paramString);
    case 33: 
      return com.estrongs.fs.impl.usb.e.g(paramString);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.r.b.c(paramString);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      com.estrongs.old.fs.a locala = n(am.by(paramString));
      if (locala != null) {
        return locala.f(paramString);
      }
    case 3: 
      return com.estrongs.fs.impl.c.a.c(paramString);
    case 4: 
    case 23: 
      try
      {
        bool = com.estrongs.fs.impl.j.b.j(am.bM(paramString));
        return bool;
      }
      catch (NetFsException paramString)
      {
        throw new FileSystemException(a(error), paramString);
      }
    }
    try
    {
      bool = SPFileSystem.isDir(paramString);
      return bool;
    }
    catch (NetFsException paramString)
    {
      throw new FileSystemException(a(error), paramString);
    }
  }
  
  public h j(String paramString)
  {
    return a(paramString, true, true);
  }
  
  public InputStream k(String paramString)
  {
    if (am.aG(paramString)) {
      return SPFileSystem.getThumbnail(paramString);
    }
    if ((am.aw(paramString)) || (am.aB(paramString)) || (am.az(paramString))) {
      return com.estrongs.fs.impl.j.b.l(am.bM(paramString));
    }
    if (am.u(paramString)) {
      return ((com.estrongs.fs.impl.f.c)a().o("flashair")).f(paramString);
    }
    return null;
  }
  
  public int l(String paramString)
  {
    if (((am.aw(paramString)) || (am.aB(paramString)) || ((am.az(paramString)) && (!am.aW(paramString)))) && (!am.bg(paramString)) && (com.estrongs.fs.impl.j.b.a(d, am.bM(paramString)))) {
      return 100;
    }
    return -1;
  }
  
  public k o(String paramString)
  {
    Object localObject;
    if (a.containsKey(paramString)) {
      localObject = (k)a.get(paramString);
    }
    k localk;
    do
    {
      return (k)localObject;
      localk = q(paramString);
      localObject = localk;
    } while (localk == null);
    a(paramString, localk);
    return localk;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */