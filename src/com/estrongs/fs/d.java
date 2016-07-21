package com.estrongs.fs;

import android.content.Context;
import android.os.Looper;
import com.estrongs.a.a.k;
import com.estrongs.a.b.o;
import com.estrongs.a.b.s;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.f.r;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.NetFsException.ERROR_CODE;
import com.estrongs.android.pop.spfs.SPFileSystem;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.y;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.bn;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.at;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.fs.impl.pcs.PcsFileSystem.PcsFileSystemException;
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
  private static HashMap<String, u> a = new HashMap();
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
      str = d.getString(2131231905);
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
      switch (ap.I(paramString))
      {
      default: 
        return;
      }
      try
      {
        com.estrongs.fs.impl.local.i.a(paramString, paramh, paramBoolean);
        return;
      }
      catch (Exception paramString) {}
      com.estrongs.fs.impl.u.b.a(paramString, paramh);
      return;
      locala = n(ap.bP(paramString));
    } while (locala == null);
    locala.a(paramString, paramh);
    return;
  }
  
  public static void a(String paramString, u paramu)
  {
    if (paramu != null) {}
    try
    {
      a.put(paramString, paramu);
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
    if ((ap.bl(paramString)) && (ap.a(new File(paramString))))
    {
      return;
    }
    else
    {
      do
      {
        localObject = a(new x(paramString), true, false, null, o.a);
      } while (localObject == null);
      if ((localObject == null) || (((List)localObject).size() <= 0)) {
        break label264;
      }
    }
    label82:
    label264:
    for (paramString = new bn(paramString, Integer.MAX_VALUE);; paramString = null)
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
      e = Boolean.valueOf(ad.a(FexApplication.a()).aQ());
    }
    if (!e.booleanValue()) {}
    for (;;)
    {
      return false;
      if ((paramLong > (paramInt2 - 1) * paramInt1) && (!ap.bg(paramString1)) && ((!ap.bl(paramString1)) || (!ap.bl(paramString2))) && (p(paramString2)))
      {
        if (ap.v(paramString1)) {
          return com.estrongs.fs.impl.m.b.h(paramString1);
        }
        if ((!ap.L(paramString1)) && (!ap.r(paramString1))) {}
      }
      try
      {
        paramString2 = n(ap.bP(paramString1));
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
  
  private List<h> b(h paramh, boolean paramBoolean1, boolean paramBoolean2, i parami, o<String> paramo, TypedMap paramTypedMap)
  {
    if (paramh == null)
    {
      parami = null;
      return parami;
    }
    String str = paramh.getPath();
    if (str == null) {
      return null;
    }
    if ((str.contains("net://")) && (str.contains("@baidu"))) {
      throw new FileSystemException("baidu-up-to-pcs");
    }
    if (!str.endsWith("/")) {
      str = str + "/";
    }
    for (;;)
    {
      if (parami == null) {}
      for (Object localObject1 = i.c;; localObject1 = parami)
      {
        int i = 0;
        if ((localObject1 instanceof q))
        {
          if (!FexApplication.a) {
            i = 1;
          }
        }
        else
        {
          parami = com.estrongs.fs.a.b.a().f(str);
          paramTypedMap.remove("cacheStatus");
          if ((paramBoolean1) || (parami == null) || (!com.estrongs.fs.a.b.a().e(str))) {
            break label223;
          }
          if (!a) {
            break label207;
          }
          paramTypedMap.put("cacheStatus", Integer.valueOf(1));
        }
        for (;;)
        {
          paramTypedMap.put("get_data_from_cache", Boolean.valueOf(true));
          return parami.a();
          i = 0;
          break;
          label207:
          paramTypedMap.put("cacheStatus", Integer.valueOf(2));
        }
        label223:
        paramTypedMap.put("get_data_from_cache", Boolean.valueOf(false));
        if (ap.br(str))
        {
          paramh = com.estrongs.fs.impl.r.a.a(d, str);
          if ((ap.L(str)) || (ap.r(str)) || (ap.K(str)) || (ap.p(str)) || (ap.q(str)) || (ap.M(str))) {
            paramBoolean2 = false;
          }
          if (paramBoolean2) {
            com.estrongs.fs.a.b.a().a(str, paramh, false);
          }
          parami = paramh;
          if (!ap.bk(str)) {
            break;
          }
          com.estrongs.fs.impl.e.a.a(paramh);
          return paramh;
        }
        if ("externalstorage://".equals(str))
        {
          parami = ap.a();
          paramh = new ArrayList();
          parami = parami.iterator();
          while (parami.hasNext()) {
            paramh.add(new com.estrongs.fs.impl.local.f(new File((String)parami.next())));
          }
          return paramh;
        }
        boolean bool;
        label446:
        int j;
        if ((paramTypedMap.getInt("page", -1L) >= 2) || (paramTypedMap.getInt("offset", -1L) > 0))
        {
          bool = true;
          parami = com.estrongs.android.j.c.a(d);
          j = ap.I(str);
        }
        Object localObject2;
        switch (j)
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
        case 34: 
        case 35: 
        case 36: 
        case 38: 
        case 39: 
        case 40: 
        default: 
          localObject2 = ap.bP(str);
          paramo = o((String)localObject2);
          if ((i != 0) && ((paramo instanceof com.estrongs.fs.impl.f.d)))
          {
            paramo = com.estrongs.fs.impl.f.b.a();
            if (paramo != null) {
              if ((paramo instanceof com.estrongs.fs.impl.l.a))
              {
                paramh = ((com.estrongs.fs.impl.l.a)paramo).a(paramh, paramTypedMap);
                parami = paramh;
                if (ap.bP("app://").equals(localObject2)) {
                  break;
                }
                parami = paramh;
                if (ap.bP("book://").equals(localObject2)) {
                  break;
                }
                parami = paramh;
                if (ap.bP("apk://").equals(localObject2)) {
                  break;
                }
                parami = paramh;
                if (ap.bP("storage://").equals(localObject2)) {
                  break;
                }
                parami = paramh;
                if (ap.bP("archive://").equals(localObject2)) {
                  break;
                }
                parami = paramh;
                if (ap.bP("encrypt://").equals(localObject2)) {
                  break;
                }
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
        case 37: 
        case 42: 
        case 41: 
          label710:
          label812:
          label2103:
          label2106:
          for (;;)
          {
            if ((paramBoolean2) && (paramh != null) && ((!ap.bl(str)) || (ap.bC(str))) && (!ap.bh(str))) {
              com.estrongs.fs.a.b.a().a(str, paramh, bool);
            }
            parami = paramh;
            if (!paramTypedMap.containsKey("offset")) {
              break;
            }
            paramo = com.estrongs.fs.a.b.a().f(str);
            parami = paramh;
            if (paramo == null) {
              break;
            }
            if (paramTypedMap.getBoolean("loadFinished"))
            {
              a = true;
              return paramh;
              bool = false;
              break label446;
              paramh = com.estrongs.fs.impl.local.i.a(str, (i)localObject1, paramo, paramTypedMap);
              continue;
              if (parami != null) {
                parami.a("SMB_List");
              }
              paramh = com.estrongs.fs.impl.u.b.a(str, (i)localObject1, paramo);
              continue;
              paramh = com.estrongs.fs.impl.usb.e.a(str, (i)localObject1, paramo);
              continue;
              if (parami != null) {
                parami.a("WEBDAV_List");
              }
              paramh = com.estrongs.fs.impl.w.b.a(str, (i)localObject1, paramo);
              continue;
              paramh = null;
              if (j == 2) {
                paramh = "FTP_List";
              }
              for (;;)
              {
                if ((parami != null) && (paramh != null)) {
                  parami.a(paramh);
                }
                paramh = n(ap.bP(str));
                if (paramh != null) {
                  break;
                }
                throw new FsProviderNotFoundException(ap.bP(str), com.estrongs.android.pop.b.a.a(ap.bP(str)));
                if (j == 5) {
                  paramh = "SFTP_List";
                } else if ((j == 19) || (20 == j)) {
                  paramh = "FTPS_List";
                }
              }
              parami = new TypedMap();
              parami.put("server", ap.i(str));
              i = ad.a(FexApplication.a()).n(str);
              if ((ap.L(str)) && (ad.a(FexApplication.a()).f(str))) {
                parami.put("mode", Boolean.valueOf(ad.a(FexApplication.a()).m(str)));
              }
              for (;;)
              {
                parami.put("encode", com.estrongs.android.util.e.a(i));
                paramh.a(parami);
                paramh = paramh.a(str, (i)localObject1);
                break;
                if (ap.K(str))
                {
                  paramo = ad.a(FexApplication.a()).q(str);
                  if (bk.b(paramo)) {
                    parami.put("privatekey", paramo);
                  }
                  paramo = ad.a(FexApplication.a()).r(str);
                  if (bk.b(paramo)) {
                    parami.put("privatekey_passphrases", paramo);
                  }
                }
              }
              if ((FexApplication.a) || (i != 0)) {
                return com.estrongs.fs.impl.n.b.a().a(paramh, (i)localObject1, paramTypedMap);
              }
              return com.estrongs.fs.impl.n.d.b().a(d, paramh, (i)localObject1, paramo, paramTypedMap);
              if ((FexApplication.a) || (i != 0)) {
                return com.estrongs.fs.impl.p.b.a().a(paramh, (i)localObject1, paramTypedMap);
              }
              return com.estrongs.fs.impl.p.c.b().a(d, paramh, (i)localObject1, paramo, paramTypedMap);
              if ((FexApplication.a) || (i != 0)) {
                return com.estrongs.fs.impl.v.b.a().a(paramh, (i)localObject1, paramTypedMap);
              }
              return com.estrongs.fs.impl.v.c.b().a(d, paramh, (i)localObject1, paramo, paramTypedMap);
              if (parami != null) {
                parami.a("Bluetooth_List");
              }
              paramh = com.estrongs.fs.impl.e.a.a(str, (i)localObject1, paramo);
              continue;
            }
            for (;;)
            {
              try
              {
                paramh = com.estrongs.fs.impl.o.b.a(d, ap.cd(str), true, (i)localObject1, paramTypedMap);
                if ((ap.aJ(str)) && (paramh != null))
                {
                  paramBoolean1 = str.endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/");
                  Iterator localIterator = paramh.iterator();
                  if (localIterator.hasNext())
                  {
                    com.estrongs.fs.impl.o.a locala = (com.estrongs.fs.impl.o.a)localIterator.next();
                    localObject2 = str + locala.getName();
                    parami = null;
                    i = absolutePath.indexOf("/>");
                    if (i != -1) {
                      parami = str + absolutePath.substring(i + 1);
                    }
                    paramo = (o<String>)localObject2;
                    localObject1 = parami;
                    if (paramBoolean1)
                    {
                      localObject2 = ((String)localObject2).replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files");
                      paramo = (o<String>)localObject2;
                      localObject1 = parami;
                      if (parami != null)
                      {
                        localObject1 = parami.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files");
                        paramo = (o<String>)localObject2;
                      }
                    }
                    locala.a(paramo);
                    if (localObject1 == null)
                    {
                      locala.b(paramo);
                      locala.putExtra("user_info", com.estrongs.android.ui.pcs.u.a().e());
                      continue;
                    }
                  }
                }
              }
              catch (PcsFileSystem.PcsFileSystemException paramh)
              {
                throw new FileSystemException(paramh);
                paramo = (o<String>)localObject1;
                continue;
                if (!str.endsWith("@pcs/files/apps/Downloads/")) {
                  break label2106;
                }
                parami = (PcsFileSystem)com.estrongs.fs.impl.o.b.a("pcs");
                paramo = ap.as(str);
                localObject1 = ap.av(str);
                localObject2 = FileExplorerActivity.X();
                if (localObject2 != null) {
                  parami.a(((FileExplorerActivity)localObject2).ar());
                }
                paramo = parami.a(paramo, (String)localObject1, paramTypedMap);
                com.estrongs.android.util.l.b("PCSD", "fos before downlist: " + paramh);
                if ((paramo == null) || (paramo.size() <= 0)) {
                  break label2103;
                }
                parami = paramh;
                if (paramh == null) {
                  parami = new LinkedList();
                }
                parami.addAll(paramo);
                paramh = parami;
                com.estrongs.android.util.l.b("PCSD", "fos after downlist: " + paramh);
              }
              catch (NetFsException paramh)
              {
                throw new FileSystemException(a(error), paramh);
              }
              try
              {
                paramh = SPFileSystem.listFiles(d, str, paramBoolean1, (i)localObject1, paramTypedMap);
              }
              catch (NetFsException paramh)
              {
                throw new FileSystemException(a(error), paramh);
              }
              paramh = com.estrongs.fs.impl.q.a.a(str, (i)localObject1, paramo);
              break label812;
              paramh = new com.estrongs.fs.impl.c.a().a(paramh, (i)localObject1, paramTypedMap);
              break label812;
              paramh = new com.estrongs.fs.impl.j.a().a(paramh, (i)localObject1, paramTypedMap);
              break label812;
              paramh = new com.estrongs.android.pop.app.b.j().a(paramh, (i)localObject1, paramTypedMap);
              break label812;
              if ((paramo instanceof com.estrongs.fs.impl.t.a))
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
                paramh = paramo.a(paramh, (i)localObject1, parami);
                paramTypedMap = parami;
                break label710;
              }
              paramh = paramo.a(paramh, (i)localObject1, paramTypedMap);
              break label710;
              throw new FileSystemException("Not result in the file system for " + (String)localObject2);
              a = false;
              return paramh;
              break;
            }
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
    Object localObject1 = ap.bP(paramh.getPath());
    if (!bk.a((CharSequence)localObject1))
    {
      localObject2 = o((String)localObject1);
      if ((localObject2 != null) && ((localObject2 instanceof com.estrongs.fs.impl.l.a))) {
        return ((com.estrongs.fs.impl.l.a)localObject2).a(paramh.getPath(), paramh.getAbsolutePath());
      }
    }
    paramh = paramh.getAbsolutePath();
    if (paramh == null) {
      return false;
    }
    Object localObject2 = s.b;
    boolean bool;
    switch (ap.I(paramh))
    {
    default: 
      localObject1 = o((String)localObject1);
      if (localObject1 == null) {
        break label373;
      }
      if (!(localObject1 instanceof com.estrongs.fs.impl.k.c)) {
        break label356;
      }
      return ((com.estrongs.fs.impl.k.c)localObject1).e(paramh);
    case 0: 
      return com.estrongs.fs.impl.local.i.a(d, paramh, (s)localObject2);
    case 1: 
      return com.estrongs.fs.impl.u.b.a(d, paramh, (s)localObject2);
    case 33: 
      return com.estrongs.fs.impl.usb.e.a(d, paramh, (s)localObject2);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.w.b.a(d, paramh, (s)localObject2);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      localObject1 = n(ap.bP(paramh));
      if (localObject1 != null) {
        return ((com.estrongs.old.fs.a)localObject1).c(paramh);
      }
    case 3: 
      return com.estrongs.fs.impl.e.a.a(d, paramh, (s)localObject2);
    case 4: 
    case 23: 
      try
      {
        bool = com.estrongs.fs.impl.o.b.a(ap.cd(paramh), 0L);
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
    if (ap.J(paramString1)) {
      bool = com.estrongs.fs.impl.u.b.b(paramString1, paramString2);
    }
    do
    {
      com.estrongs.old.fs.a locala;
      do
      {
        return bool;
        if ((!ap.L(paramString1)) && (!ap.K(paramString1))) {
          break;
        }
        locala = n(ap.bP(paramString1));
      } while (locala == null);
      return locala.b(paramString1, paramString2);
      if ((ap.aG(paramString1)) || (ap.aL(paramString1)) || (ap.aJ(paramString1))) {
        try
        {
          bool = com.estrongs.fs.impl.o.b.e(ap.cd(paramString1), ap.cd(paramString2));
          return bool;
        }
        catch (NetFsException paramString1)
        {
          throw new FileSystemException(a(error), paramString1);
        }
      }
      if (ap.o(paramString1)) {
        try
        {
          bool = com.estrongs.fs.impl.w.b.b(paramString1, paramString2);
          return bool;
        }
        catch (Exception paramString1)
        {
          throw new FileSystemException(paramString1.getMessage(), paramString1);
        }
      }
    } while (!ap.aH(paramString1));
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
  
  private i c(h paramh)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramh != null)
    {
      localObject1 = localObject2;
      if ((paramh instanceof com.estrongs.android.ui.topclassify.c)) {
        localObject1 = com.estrongs.android.ui.topclassify.x.b(((com.estrongs.android.ui.topclassify.c)paramh).b());
      }
    }
    return (i)localObject1;
  }
  
  public static void c()
  {
    com.estrongs.old.fs.impl.a.c.c();
    OldSFtpFileSystem.b();
    com.estrongs.fs.impl.w.b.a();
  }
  
  public static boolean i(String paramString)
  {
    int i = ap.I(paramString);
    return (i == 0) || (i == 1);
  }
  
  public static h m(String paramString)
  {
    if (("mynetwork://".equalsIgnoreCase(paramString)) || ("apk://".equalsIgnoreCase(paramString)) || ("book://".equalsIgnoreCase(paramString)) || ("encrypt://".equalsIgnoreCase(paramString)) || ("pic://".equalsIgnoreCase(paramString)) || ("music://".equalsIgnoreCase(paramString)) || ("video://".equalsIgnoreCase(paramString)) || (ap.br(paramString))) {
      return new f(paramString);
    }
    return new x(paramString);
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
    int i = ap.I(paramString);
    if (i == 1) {
      return true;
    }
    if (i == 0) {
      return com.estrongs.fs.impl.local.i.k(paramString);
    }
    return false;
  }
  
  private u q(String paramString)
  {
    Object localObject;
    if (ap.bP("app://").equals(paramString))
    {
      localObject = new com.estrongs.fs.impl.b.e(d);
      return (u)localObject;
    }
    paramString = (String)b.get(paramString);
    if (bk.a(paramString)) {
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
            paramString = (u)paramString.invoke(localClass, null);
            localObject = paramString;
            if (paramString != null) {
              break;
            }
            paramString = (u)u.class.cast(localClass.newInstance());
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
    if ((ap.bg(paramString1)) || (ap.bg(paramString2))) {
      i = 5120;
    }
    do
    {
      return i;
      if ((ap.aG(paramString1)) || (ap.aG(paramString2)) || (ap.aL(paramString1)) || (ap.aL(paramString2)) || (ap.aL(ap.cd(paramString2))) || (ap.aQ(paramString1)) || (ap.aQ(paramString2))) {
        return 32768;
      }
    } while ((!ap.J(paramString1)) && (!ap.J(paramString2)));
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
    int j = ap.I(paramString);
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
          return new z(paramString);
        }
        localException2 = localException2;
        i = 0;
        continue;
      }
      if ((i != 0) && (ap.bm(paramString)))
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
          localObject2 = com.estrongs.fs.impl.local.i.b(paramString);
          continue;
          localObject2 = com.estrongs.fs.impl.u.b.i(paramString);
          continue;
          localObject2 = com.estrongs.fs.impl.usb.e.h(paramString);
          continue;
          localObject2 = com.estrongs.fs.impl.w.b.f(paramString);
        }
        else
        {
          Object localObject4;
          try
          {
            localObject4 = n(ap.bP(paramString)).h(paramString);
            localObject2 = localObject4;
          }
          catch (FileSystemException localFileSystemException2) {}
          localObject2 = com.estrongs.fs.impl.e.a.i(paramString);
          continue;
          try
          {
            localObject4 = ap.cd(paramString);
            if (!paramBoolean2) {}
            for (paramBoolean2 = bool;; paramBoolean2 = false)
            {
              localObject4 = com.estrongs.fs.impl.o.b.d((String)localObject4, paramBoolean2);
              if ((ap.aJ(paramString)) && (localObject4 != null))
              {
                ((com.estrongs.fs.impl.o.a)localObject4).a(paramString);
                ((com.estrongs.fs.impl.o.a)localObject4).b(paramString);
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
            localObject2 = o(ap.bP(paramString));
            if (localObject2 != null) {
              try
              {
                localObject2 = ((u)localObject2).a(paramString);
                if ((localObject2 == null) && (paramBoolean1))
                {
                  localObject2 = new z(paramString);
                  return (h)localObject2;
                }
                return (h)localObject2;
              }
              catch (FileSystemException localFileSystemException1)
              {
                if (paramBoolean1) {
                  return new z(paramString);
                }
              }
            }
            if (!paramBoolean1) {
              break;
            }
            return new z(paramString);
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
    u localu;
    switch (ap.I(paramString))
    {
    default: 
      str = ap.bP(paramString);
      localu = o(str);
      if (localu == null) {
        break label289;
      }
      if (!(localu instanceof com.estrongs.fs.impl.m.b)) {
        break label280;
      }
      return ((com.estrongs.fs.impl.m.b)localu).a(paramString, paramLong, paramTypedMap);
    case 0: 
      return com.estrongs.fs.impl.local.i.a(d, paramString, paramLong);
    case 1: 
      return com.estrongs.fs.impl.u.b.a(paramString, paramLong);
    case 33: 
      return com.estrongs.fs.impl.usb.e.a(paramString, paramLong);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.w.b.a(paramString, paramLong, paramTypedMap);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      paramTypedMap = n(ap.bP(paramString));
      if (paramTypedMap != null) {
        return paramTypedMap.a(paramString, paramLong);
      }
    case 3: 
      return com.estrongs.fs.impl.e.a.g(paramString);
    case 4: 
    case 23: 
      try
      {
        paramString = com.estrongs.fs.impl.o.b.c(ap.cd(paramString), paramLong);
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
    return localu.d(paramString);
    label289:
    throw new FileSystemException("Not result in the file system for " + str);
  }
  
  public OutputStream a(String paramString, long paramLong, boolean paramBoolean)
  {
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    switch (ap.I(paramString))
    {
    default: 
      if (locala != null) {
        locala.setTaskResult(11, new com.estrongs.a.q("不支持断点上传", null));
      }
      return null;
    case 0: 
      return com.estrongs.fs.impl.local.i.a(paramString, paramLong);
    case 1: 
      return com.estrongs.fs.impl.u.b.b(paramString, paramLong);
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
    return a(paramh, paramBoolean, true, parami, o.a, paramTypedMap);
  }
  
  public List<h> a(h paramh, boolean paramBoolean1, boolean paramBoolean2, i parami, o<String> paramo)
  {
    return a(paramh, paramBoolean1, paramBoolean2, parami, paramo, TypedMap.EMPTY);
  }
  
  public List<h> a(h paramh, boolean paramBoolean1, boolean paramBoolean2, i parami, o<String> paramo, TypedMap paramTypedMap)
  {
    int j = 0;
    if ((parami instanceof b))
    {
      localObject = ((b)parami).a(bn.class);
      i = 0;
      while (i < ((List)localObject).size())
      {
        if (!((bn)((List)localObject).get(i)).a()) {
          return new ArrayList();
        }
        i += 1;
      }
    }
    Object localObject = new ArrayList();
    paramh = b(paramh, paramBoolean1, paramBoolean2, c(paramh), paramo, paramTypedMap);
    if (paramh == null) {
      return null;
    }
    int i = j;
    if (parami == null) {
      return paramh;
    }
    while (i < paramh.size())
    {
      if (parami.a((h)paramh.get(i))) {
        ((List)localObject).add(paramh.get(i));
      }
      i += 1;
    }
    return (List<h>)localObject;
  }
  
  public List<h> a(h paramh, boolean paramBoolean1, boolean paramBoolean2, i parami, TypedMap paramTypedMap)
  {
    return a(paramh, paramBoolean1, paramBoolean2, parami, o.a, paramTypedMap);
  }
  
  public List<h> a(String paramString)
  {
    return a(paramString, false);
  }
  
  public List<h> a(String paramString1, String paramString2, o<String> paramo)
  {
    boolean bool2 = false;
    List localList = Collections.synchronizedList(new ArrayList());
    paramo = null;
    Map localMap = com.estrongs.android.pop.app.f.q.b(paramString2);
    paramString2 = paramo;
    if (localMap != null)
    {
      paramString2 = paramo;
      if (localMap.size() > 0) {
        paramString2 = new r(localMap, false, false);
      }
    }
    try
    {
      bool1 = Boolean.valueOf((String)localMap.get("recursion")).booleanValue();
      paramString1 = ap.bV(paramString1);
      if (!ad.a(FexApplication.a()).q()) {
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
    return a(new x(paramString), paramBoolean, i.c);
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
    //   1: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   4: astore 24
    //   6: aload_1
    //   7: getfield 1016	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   10: astore 19
    //   12: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   15: astore 22
    //   17: aload 22
    //   19: ifnull +396 -> 415
    //   22: aload 22
    //   24: instanceof 1018
    //   27: ifeq +388 -> 415
    //   30: aload 22
    //   32: checkcast 1018	com/estrongs/fs/b/r
    //   35: invokevirtual 1021	com/estrongs/fs/b/r:b	()[B
    //   38: astore 18
    //   40: aload 19
    //   42: invokestatic 1024	com/estrongs/android/util/ap:bB	(Ljava/lang/String;)Ljava/lang/String;
    //   45: astore 15
    //   47: invokestatic 1026	com/estrongs/android/util/bk:f	()Z
    //   50: ifeq +70 -> 120
    //   53: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   56: instanceof 1018
    //   59: ifeq +61 -> 120
    //   62: aload 15
    //   64: invokestatic 105	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   67: ifeq +53 -> 120
    //   70: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   73: checkcast 1018	com/estrongs/fs/b/r
    //   76: getfield 1029	com/estrongs/fs/b/r:v	Ljava/util/Set;
    //   79: astore 16
    //   81: aload 15
    //   83: ldc_w 273
    //   86: invokevirtual 276	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   89: ifeq +350 -> 439
    //   92: aload 15
    //   94: iconst_0
    //   95: aload 15
    //   97: invokevirtual 1032	java/lang/String:length	()I
    //   100: iconst_1
    //   101: isub
    //   102: invokevirtual 1035	java/lang/String:substring	(II)Ljava/lang/String;
    //   105: astore 15
    //   107: aload 16
    //   109: aload 15
    //   111: invokestatic 1001	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   114: invokeinterface 1038 2 0
    //   119: pop
    //   120: aload 24
    //   122: invokeinterface 171 1 0
    //   127: astore 16
    //   129: new 365	java/util/ArrayList
    //   132: dup
    //   133: invokespecial 366	java/util/ArrayList:<init>	()V
    //   136: astore 23
    //   138: aconst_null
    //   139: astore 17
    //   141: aload 19
    //   143: invokestatic 105	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   146: ifeq +7028 -> 7174
    //   149: aload 19
    //   151: invokestatic 417	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   154: ifne +7020 -> 7174
    //   157: aload 19
    //   159: ldc_w 1040
    //   162: invokestatic 1043	com/estrongs/android/util/ap:k	(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    //   165: astore 15
    //   167: aload 15
    //   169: astore 17
    //   171: aload 16
    //   173: invokestatic 73	com/estrongs/android/util/ap:I	(Ljava/lang/String;)I
    //   176: istore_2
    //   177: aload 15
    //   179: astore 17
    //   181: iload_2
    //   182: aload 19
    //   184: invokestatic 73	com/estrongs/android/util/ap:I	(Ljava/lang/String;)I
    //   187: if_icmpne +6981 -> 7168
    //   190: iload_2
    //   191: iconst_4
    //   192: if_icmpeq +9 -> 201
    //   195: iload_2
    //   196: bipush 23
    //   198: if_icmpne +6970 -> 7168
    //   201: aload 15
    //   203: astore 17
    //   205: aload 16
    //   207: invokestatic 1046	com/estrongs/android/util/ap:ax	(Ljava/lang/String;)Ljava/lang/String;
    //   210: aload 19
    //   212: invokestatic 1046	com/estrongs/android/util/ap:ax	(Ljava/lang/String;)Ljava/lang/String;
    //   215: invokevirtual 362	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   218: ifeq +6950 -> 7168
    //   221: aload 15
    //   223: astore 17
    //   225: aload 16
    //   227: invokestatic 1048	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   230: aload 19
    //   232: invokestatic 1048	com/estrongs/android/util/ap:a	(Ljava/lang/String;)Ljava/lang/String;
    //   235: invokevirtual 362	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   238: ifeq +6930 -> 7168
    //   241: iconst_1
    //   242: istore 6
    //   244: aload 15
    //   246: astore 17
    //   248: aload 23
    //   250: aload_1
    //   251: invokevirtual 1049	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   254: pop
    //   255: iconst_0
    //   256: istore_2
    //   257: iconst_1
    //   258: istore 4
    //   260: iconst_1
    //   261: istore_3
    //   262: aload 16
    //   264: astore_1
    //   265: aload 15
    //   267: astore 17
    //   269: aload 23
    //   271: invokevirtual 1050	java/util/ArrayList:size	()I
    //   274: iconst_1
    //   275: if_icmpgt +7 -> 282
    //   278: iload_3
    //   279: ifeq +6556 -> 6835
    //   282: iload_3
    //   283: ifne +44 -> 327
    //   286: aload 22
    //   288: ifnull +28 -> 316
    //   291: aload 15
    //   293: astore 17
    //   295: aload 22
    //   297: iconst_1
    //   298: iconst_2
    //   299: anewarray 4	java/lang/Object
    //   302: dup
    //   303: iconst_0
    //   304: lconst_1
    //   305: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   308: aastore
    //   309: dup
    //   310: iconst_1
    //   311: aload_1
    //   312: aastore
    //   313: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   316: aload 15
    //   318: astore 17
    //   320: aload 23
    //   322: iconst_0
    //   323: invokevirtual 1052	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   326: pop
    //   327: aload 22
    //   329: ifnull +113 -> 442
    //   332: aload 15
    //   334: astore 17
    //   336: aload 22
    //   338: invokevirtual 161	com/estrongs/a/a:taskStopped	()Z
    //   341: istore 8
    //   343: iload 8
    //   345: ifeq +97 -> 442
    //   348: aload 15
    //   350: ifnull +9 -> 359
    //   353: aload 15
    //   355: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   358: pop
    //   359: aload 22
    //   361: ifnull +52 -> 413
    //   364: aload 23
    //   366: invokevirtual 1050	java/util/ArrayList:size	()I
    //   369: ifle +44 -> 413
    //   372: aload 22
    //   374: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   377: getfield 1063	com/estrongs/a/p:a	I
    //   380: bipush 16
    //   382: if_icmpeq +31 -> 413
    //   385: aload 22
    //   387: iconst_4
    //   388: iconst_1
    //   389: anewarray 4	java/lang/Object
    //   392: dup
    //   393: iconst_0
    //   394: aload 23
    //   396: aastore
    //   397: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   400: aload 23
    //   402: iconst_0
    //   403: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   406: checkcast 1011	com/estrongs/fs/b/u
    //   409: iconst_1
    //   410: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   413: iconst_0
    //   414: ireturn
    //   415: aload_0
    //   416: aload_1
    //   417: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   420: invokeinterface 171 1 0
    //   425: aload_1
    //   426: getfield 1016	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   429: invokevirtual 1068	com/estrongs/fs/d:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   432: newarray <illegal type>
    //   434: astore 18
    //   436: goto -396 -> 40
    //   439: goto -332 -> 107
    //   442: aload 15
    //   444: astore 17
    //   446: aload 23
    //   448: iconst_0
    //   449: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   452: checkcast 1011	com/estrongs/fs/b/u
    //   455: astore 25
    //   457: aload 15
    //   459: astore 17
    //   461: aload 25
    //   463: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   466: invokeinterface 171 1 0
    //   471: astore 20
    //   473: aload 15
    //   475: astore 17
    //   477: aload 25
    //   479: getfield 1016	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   482: astore_1
    //   483: aload 15
    //   485: astore 17
    //   487: aload 20
    //   489: aload_1
    //   490: invokevirtual 784	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   493: ifeq +181 -> 674
    //   496: aload 20
    //   498: astore_1
    //   499: aload 22
    //   501: ifnull -236 -> 265
    //   504: aload 15
    //   506: astore 17
    //   508: aload 22
    //   510: iconst_2
    //   511: iconst_2
    //   512: anewarray 4	java/lang/Object
    //   515: dup
    //   516: iconst_0
    //   517: aload 25
    //   519: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   522: invokeinterface 1071 1 0
    //   527: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   530: aastore
    //   531: dup
    //   532: iconst_1
    //   533: aload 20
    //   535: aastore
    //   536: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   539: aload 15
    //   541: astore 17
    //   543: aload 22
    //   545: bipush 8
    //   547: iconst_0
    //   548: anewarray 4	java/lang/Object
    //   551: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   554: aload 20
    //   556: astore_1
    //   557: goto -292 -> 265
    //   560: astore 16
    //   562: aload 15
    //   564: astore_1
    //   565: aload 16
    //   567: astore 15
    //   569: aload 15
    //   571: invokevirtual 1072	com/estrongs/fs/FileSystemException:getMessage	()Ljava/lang/String;
    //   574: astore 16
    //   576: aload 16
    //   578: ifnull +6369 -> 6947
    //   581: new 925	com/estrongs/a/q
    //   584: dup
    //   585: aload 16
    //   587: aload 15
    //   589: invokespecial 930	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   592: astore 15
    //   594: aload 22
    //   596: ifnull +13 -> 609
    //   599: aload 22
    //   601: sipush 10000
    //   604: aload 15
    //   606: invokevirtual 934	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   609: aload_1
    //   610: ifnull +8 -> 618
    //   613: aload_1
    //   614: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   617: pop
    //   618: aload 22
    //   620: ifnull +52 -> 672
    //   623: aload 23
    //   625: invokevirtual 1050	java/util/ArrayList:size	()I
    //   628: ifle +44 -> 672
    //   631: aload 22
    //   633: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   636: getfield 1063	com/estrongs/a/p:a	I
    //   639: bipush 16
    //   641: if_icmpeq +31 -> 672
    //   644: aload 22
    //   646: iconst_4
    //   647: iconst_1
    //   648: anewarray 4	java/lang/Object
    //   651: dup
    //   652: iconst_0
    //   653: aload 23
    //   655: aastore
    //   656: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   659: aload 23
    //   661: iconst_0
    //   662: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   665: checkcast 1011	com/estrongs/fs/b/u
    //   668: iconst_1
    //   669: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   672: iconst_0
    //   673: ireturn
    //   674: iload 4
    //   676: ifne +398 -> 1074
    //   679: iconst_0
    //   680: istore 8
    //   682: iload_2
    //   683: istore 5
    //   685: iload 4
    //   687: istore_3
    //   688: iload 4
    //   690: ifeq +6429 -> 7119
    //   693: iload_2
    //   694: istore 5
    //   696: iload 4
    //   698: istore_3
    //   699: iload 8
    //   701: ifeq +6418 -> 7119
    //   704: iconst_1
    //   705: istore 7
    //   707: aload 22
    //   709: ifnull +6489 -> 7198
    //   712: aload 15
    //   714: astore 17
    //   716: aload 25
    //   718: getfield 1066	com/estrongs/fs/b/u:e	Z
    //   721: ifne +6477 -> 7198
    //   724: aload 15
    //   726: astore 17
    //   728: aload_0
    //   729: aload_1
    //   730: invokevirtual 1075	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   733: astore 16
    //   735: aload 15
    //   737: astore 17
    //   739: aload_1
    //   740: invokestatic 1077	com/estrongs/fs/d:i	(Ljava/lang/String;)Z
    //   743: ifeq +6449 -> 7192
    //   746: aload 15
    //   748: astore 17
    //   750: aload 25
    //   752: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   755: invokeinterface 258 1 0
    //   760: invokestatic 863	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   763: ifne +20 -> 783
    //   766: aload 15
    //   768: astore 17
    //   770: aload 16
    //   772: invokeinterface 258 1 0
    //   777: invokestatic 863	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   780: ifeq +6412 -> 7192
    //   783: aload 15
    //   785: astore 17
    //   787: aload 16
    //   789: invokeinterface 1071 1 0
    //   794: lconst_0
    //   795: lcmp
    //   796: ifle +6396 -> 7192
    //   799: aload 15
    //   801: astore 17
    //   803: aload 16
    //   805: invokeinterface 1071 1 0
    //   810: aload 25
    //   812: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   815: invokeinterface 1071 1 0
    //   820: lcmp
    //   821: ifge +6371 -> 7192
    //   824: iconst_1
    //   825: istore 9
    //   827: aload 15
    //   829: astore 17
    //   831: aload 22
    //   833: ldc_w 1079
    //   836: iconst_4
    //   837: anewarray 4	java/lang/Object
    //   840: dup
    //   841: iconst_0
    //   842: aload_1
    //   843: aastore
    //   844: dup
    //   845: iconst_1
    //   846: iload 9
    //   848: invokestatic 224	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   851: aastore
    //   852: dup
    //   853: iconst_2
    //   854: aload 25
    //   856: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   859: aastore
    //   860: dup
    //   861: iconst_3
    //   862: aload 16
    //   864: aastore
    //   865: invokevirtual 1083	com/estrongs/a/a:getDecision	(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;
    //   868: checkcast 1079	com/estrongs/a/a/h
    //   871: astore 16
    //   873: aload 16
    //   875: ifnull +6269 -> 7144
    //   878: iconst_0
    //   879: istore_2
    //   880: aload 15
    //   882: astore 17
    //   884: aload 16
    //   886: getfield 1085	com/estrongs/a/a/h:f	Z
    //   889: ifeq +6249 -> 7138
    //   892: aload 15
    //   894: astore 17
    //   896: aload 16
    //   898: getfield 1087	com/estrongs/a/a/h:g	I
    //   901: iconst_1
    //   902: if_icmpne +6236 -> 7138
    //   905: iconst_0
    //   906: istore_3
    //   907: iload_2
    //   908: istore 4
    //   910: aload 15
    //   912: astore 17
    //   914: aload 16
    //   916: getfield 1087	com/estrongs/a/a/h:g	I
    //   919: iconst_5
    //   920: if_icmpne +6 -> 926
    //   923: iconst_1
    //   924: istore 4
    //   926: aload 15
    //   928: astore 17
    //   930: aload 16
    //   932: getfield 1087	com/estrongs/a/a/h:g	I
    //   935: istore_2
    //   936: goto +6244 -> 7180
    //   939: iload 7
    //   941: iconst_2
    //   942: if_icmpne +158 -> 1100
    //   945: aload 22
    //   947: ifnull +6183 -> 7130
    //   950: aload 15
    //   952: astore 17
    //   954: aload 22
    //   956: iconst_2
    //   957: iconst_2
    //   958: anewarray 4	java/lang/Object
    //   961: dup
    //   962: iconst_0
    //   963: aload 25
    //   965: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   968: invokeinterface 1071 1 0
    //   973: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   976: aastore
    //   977: dup
    //   978: iconst_1
    //   979: aload 20
    //   981: aastore
    //   982: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   985: aload 15
    //   987: astore 17
    //   989: aload 22
    //   991: bipush 8
    //   993: iconst_0
    //   994: anewarray 4	java/lang/Object
    //   997: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1000: aload 15
    //   1002: astore 17
    //   1004: aload 22
    //   1006: instanceof 1089
    //   1009: ifeq +6121 -> 7130
    //   1012: aload 15
    //   1014: astore 17
    //   1016: aload 22
    //   1018: checkcast 1089	com/estrongs/fs/b/aq
    //   1021: getfield 1093	com/estrongs/fs/b/aq:C	Ljava/util/List;
    //   1024: ifnonnull +22 -> 1046
    //   1027: aload 15
    //   1029: astore 17
    //   1031: aload 22
    //   1033: checkcast 1089	com/estrongs/fs/b/aq
    //   1036: new 365	java/util/ArrayList
    //   1039: dup
    //   1040: invokespecial 366	java/util/ArrayList:<init>	()V
    //   1043: putfield 1093	com/estrongs/fs/b/aq:C	Ljava/util/List;
    //   1046: aload 15
    //   1048: astore 17
    //   1050: aload 22
    //   1052: checkcast 1089	com/estrongs/fs/b/aq
    //   1055: getfield 1093	com/estrongs/fs/b/aq:C	Ljava/util/List;
    //   1058: aload 20
    //   1060: invokeinterface 205 2 0
    //   1065: pop
    //   1066: iconst_0
    //   1067: istore_3
    //   1068: aload 20
    //   1070: astore_1
    //   1071: goto -806 -> 265
    //   1074: aload 15
    //   1076: astore 17
    //   1078: aload_0
    //   1079: aload_1
    //   1080: invokevirtual 1095	com/estrongs/fs/d:b	(Ljava/lang/String;)Z
    //   1083: istore 8
    //   1085: iload 8
    //   1087: ifne +6078 -> 7165
    //   1090: iload_3
    //   1091: ifeq +6074 -> 7165
    //   1094: iconst_0
    //   1095: istore 4
    //   1097: goto -415 -> 682
    //   1100: iload 7
    //   1102: iconst_3
    //   1103: if_icmpne +101 -> 1204
    //   1106: aload 22
    //   1108: ifnull +29 -> 1137
    //   1111: aload 15
    //   1113: astore 17
    //   1115: aload 22
    //   1117: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1120: getfield 1063	com/estrongs/a/p:a	I
    //   1123: ifne +14 -> 1137
    //   1126: aload 15
    //   1128: astore 17
    //   1130: aload 22
    //   1132: iconst_1
    //   1133: aconst_null
    //   1134: invokevirtual 934	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1137: aload 15
    //   1139: ifnull +9 -> 1148
    //   1142: aload 15
    //   1144: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   1147: pop
    //   1148: aload 22
    //   1150: ifnull +52 -> 1202
    //   1153: aload 23
    //   1155: invokevirtual 1050	java/util/ArrayList:size	()I
    //   1158: ifle +44 -> 1202
    //   1161: aload 22
    //   1163: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1166: getfield 1063	com/estrongs/a/p:a	I
    //   1169: bipush 16
    //   1171: if_icmpeq +31 -> 1202
    //   1174: aload 22
    //   1176: iconst_4
    //   1177: iconst_1
    //   1178: anewarray 4	java/lang/Object
    //   1181: dup
    //   1182: iconst_0
    //   1183: aload 23
    //   1185: aastore
    //   1186: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1189: aload 23
    //   1191: iconst_0
    //   1192: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1195: checkcast 1011	com/estrongs/fs/b/u
    //   1198: iconst_1
    //   1199: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   1202: iconst_0
    //   1203: ireturn
    //   1204: iload_2
    //   1205: istore 5
    //   1207: iload 4
    //   1209: istore_3
    //   1210: iload 7
    //   1212: iconst_4
    //   1213: if_icmpne +5906 -> 7119
    //   1216: iconst_1
    //   1217: istore 5
    //   1219: iload_2
    //   1220: istore_3
    //   1221: iload 4
    //   1223: istore_2
    //   1224: iload 5
    //   1226: istore 4
    //   1228: iload 6
    //   1230: ifeq +342 -> 1572
    //   1233: iload 8
    //   1235: ifeq +8 -> 1243
    //   1238: iload 8
    //   1240: ifeq +332 -> 1572
    //   1243: aload 15
    //   1245: astore 17
    //   1247: aload 20
    //   1249: invokestatic 544	com/estrongs/android/util/ap:cd	(Ljava/lang/String;)Ljava/lang/String;
    //   1252: aload_1
    //   1253: invokestatic 544	com/estrongs/android/util/ap:cd	(Ljava/lang/String;)Ljava/lang/String;
    //   1256: invokestatic 1097	com/estrongs/fs/impl/o/b:d	(Ljava/lang/String;Ljava/lang/String;)Z
    //   1259: ifne +131 -> 1390
    //   1262: aload 15
    //   1264: astore 17
    //   1266: new 925	com/estrongs/a/q
    //   1269: dup
    //   1270: aload_0
    //   1271: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   1274: ldc_w 1098
    //   1277: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   1280: iconst_1
    //   1281: anewarray 4	java/lang/Object
    //   1284: dup
    //   1285: iconst_0
    //   1286: aload 25
    //   1288: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1291: invokeinterface 181 1 0
    //   1296: aastore
    //   1297: invokestatic 1104	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1300: aconst_null
    //   1301: invokespecial 930	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1304: astore_1
    //   1305: aload 22
    //   1307: ifnull +16 -> 1323
    //   1310: aload 15
    //   1312: astore 17
    //   1314: aload 22
    //   1316: sipush 10000
    //   1319: aload_1
    //   1320: invokevirtual 934	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1323: aload 15
    //   1325: ifnull +9 -> 1334
    //   1328: aload 15
    //   1330: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   1333: pop
    //   1334: aload 22
    //   1336: ifnull +52 -> 1388
    //   1339: aload 23
    //   1341: invokevirtual 1050	java/util/ArrayList:size	()I
    //   1344: ifle +44 -> 1388
    //   1347: aload 22
    //   1349: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1352: getfield 1063	com/estrongs/a/p:a	I
    //   1355: bipush 16
    //   1357: if_icmpeq +31 -> 1388
    //   1360: aload 22
    //   1362: iconst_4
    //   1363: iconst_1
    //   1364: anewarray 4	java/lang/Object
    //   1367: dup
    //   1368: iconst_0
    //   1369: aload 23
    //   1371: aastore
    //   1372: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1375: aload 23
    //   1377: iconst_0
    //   1378: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1381: checkcast 1011	com/estrongs/fs/b/u
    //   1384: iconst_1
    //   1385: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   1388: iconst_0
    //   1389: ireturn
    //   1390: iload_3
    //   1391: istore 4
    //   1393: iload_2
    //   1394: istore 5
    //   1396: iconst_0
    //   1397: istore_3
    //   1398: aload 20
    //   1400: astore_1
    //   1401: iload 4
    //   1403: istore_2
    //   1404: iload 5
    //   1406: istore 4
    //   1408: goto -1143 -> 265
    //   1411: astore_1
    //   1412: aload 15
    //   1414: astore 17
    //   1416: aload_0
    //   1417: aload_1
    //   1418: getfield 651	com/estrongs/android/pop/netfs/NetFsException:error	Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
    //   1421: invokespecial 653	com/estrongs/fs/d:a	(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;
    //   1424: astore 16
    //   1426: aload 16
    //   1428: ifnull +98 -> 1526
    //   1431: aload 15
    //   1433: astore 17
    //   1435: new 925	com/estrongs/a/q
    //   1438: dup
    //   1439: aload 16
    //   1441: aload_1
    //   1442: invokespecial 930	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1445: astore_1
    //   1446: aload 15
    //   1448: astore 17
    //   1450: aload 22
    //   1452: sipush 10000
    //   1455: aload_1
    //   1456: invokevirtual 934	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1459: aload 15
    //   1461: ifnull +9 -> 1470
    //   1464: aload 15
    //   1466: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   1469: pop
    //   1470: aload 22
    //   1472: ifnull +52 -> 1524
    //   1475: aload 23
    //   1477: invokevirtual 1050	java/util/ArrayList:size	()I
    //   1480: ifle +44 -> 1524
    //   1483: aload 22
    //   1485: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1488: getfield 1063	com/estrongs/a/p:a	I
    //   1491: bipush 16
    //   1493: if_icmpeq +31 -> 1524
    //   1496: aload 22
    //   1498: iconst_4
    //   1499: iconst_1
    //   1500: anewarray 4	java/lang/Object
    //   1503: dup
    //   1504: iconst_0
    //   1505: aload 23
    //   1507: aastore
    //   1508: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1511: aload 23
    //   1513: iconst_0
    //   1514: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1517: checkcast 1011	com/estrongs/fs/b/u
    //   1520: iconst_1
    //   1521: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   1524: iconst_0
    //   1525: ireturn
    //   1526: aload 15
    //   1528: astore 17
    //   1530: new 925	com/estrongs/a/q
    //   1533: dup
    //   1534: aload_0
    //   1535: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   1538: ldc_w 1098
    //   1541: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   1544: iconst_1
    //   1545: anewarray 4	java/lang/Object
    //   1548: dup
    //   1549: iconst_0
    //   1550: aload 25
    //   1552: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1555: invokeinterface 181 1 0
    //   1560: aastore
    //   1561: invokestatic 1104	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1564: aload_1
    //   1565: invokespecial 930	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1568: astore_1
    //   1569: goto -123 -> 1446
    //   1572: iconst_1
    //   1573: istore 10
    //   1575: iload 10
    //   1577: istore 9
    //   1579: aload 15
    //   1581: astore 17
    //   1583: aload_1
    //   1584: invokestatic 105	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   1587: ifeq +142 -> 1729
    //   1590: iload 10
    //   1592: istore 9
    //   1594: aload 15
    //   1596: astore 17
    //   1598: aload_1
    //   1599: invokestatic 1106	com/estrongs/fs/impl/local/i:a	(Ljava/lang/String;)Z
    //   1602: ifeq +127 -> 1729
    //   1605: iconst_0
    //   1606: istore 9
    //   1608: aload 15
    //   1610: astore 17
    //   1612: aload_1
    //   1613: invokestatic 1107	com/estrongs/fs/impl/local/i:h	(Ljava/lang/String;)Z
    //   1616: aload 25
    //   1618: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1621: invokeinterface 192 1 0
    //   1626: invokevirtual 196	com/estrongs/fs/w:a	()Z
    //   1629: ixor
    //   1630: ifeq +99 -> 1729
    //   1633: aload 15
    //   1635: astore 17
    //   1637: aload 22
    //   1639: bipush 16
    //   1641: new 925	com/estrongs/a/q
    //   1644: dup
    //   1645: aload_0
    //   1646: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   1649: ldc_w 1108
    //   1652: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   1655: aconst_null
    //   1656: invokespecial 930	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1659: invokevirtual 934	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   1662: aload 15
    //   1664: ifnull +9 -> 1673
    //   1667: aload 15
    //   1669: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   1672: pop
    //   1673: aload 22
    //   1675: ifnull +52 -> 1727
    //   1678: aload 23
    //   1680: invokevirtual 1050	java/util/ArrayList:size	()I
    //   1683: ifle +44 -> 1727
    //   1686: aload 22
    //   1688: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1691: getfield 1063	com/estrongs/a/p:a	I
    //   1694: bipush 16
    //   1696: if_icmpeq +31 -> 1727
    //   1699: aload 22
    //   1701: iconst_4
    //   1702: iconst_1
    //   1703: anewarray 4	java/lang/Object
    //   1706: dup
    //   1707: iconst_0
    //   1708: aload 23
    //   1710: aastore
    //   1711: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1714: aload 23
    //   1716: iconst_0
    //   1717: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1720: checkcast 1011	com/estrongs/fs/b/u
    //   1723: iconst_1
    //   1724: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   1727: iconst_0
    //   1728: ireturn
    //   1729: aload 15
    //   1731: astore 17
    //   1733: aload 25
    //   1735: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1738: invokeinterface 192 1 0
    //   1743: invokevirtual 196	com/estrongs/fs/w:a	()Z
    //   1746: ifeq +5485 -> 7231
    //   1749: aload 15
    //   1751: astore 17
    //   1753: aload_0
    //   1754: aload 25
    //   1756: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1759: invokeinterface 171 1 0
    //   1764: invokevirtual 1110	com/estrongs/fs/d:a	(Ljava/lang/String;)Ljava/util/List;
    //   1767: astore 16
    //   1769: aload 16
    //   1771: ifnonnull +70 -> 1841
    //   1774: aload 15
    //   1776: ifnull +9 -> 1785
    //   1779: aload 15
    //   1781: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   1784: pop
    //   1785: aload 22
    //   1787: ifnull +52 -> 1839
    //   1790: aload 23
    //   1792: invokevirtual 1050	java/util/ArrayList:size	()I
    //   1795: ifle +44 -> 1839
    //   1798: aload 22
    //   1800: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1803: getfield 1063	com/estrongs/a/p:a	I
    //   1806: bipush 16
    //   1808: if_icmpeq +31 -> 1839
    //   1811: aload 22
    //   1813: iconst_4
    //   1814: iconst_1
    //   1815: anewarray 4	java/lang/Object
    //   1818: dup
    //   1819: iconst_0
    //   1820: aload 23
    //   1822: aastore
    //   1823: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1826: aload 23
    //   1828: iconst_0
    //   1829: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1832: checkcast 1011	com/estrongs/fs/b/u
    //   1835: iconst_1
    //   1836: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   1839: iconst_0
    //   1840: ireturn
    //   1841: aload 15
    //   1843: astore 17
    //   1845: aload_0
    //   1846: aload_1
    //   1847: iconst_0
    //   1848: invokevirtual 1113	com/estrongs/fs/d:c	(Ljava/lang/String;Z)Z
    //   1851: istore 8
    //   1853: iload 8
    //   1855: ifne +157 -> 2012
    //   1858: aload 15
    //   1860: astore 17
    //   1862: aload_0
    //   1863: aload_1
    //   1864: invokevirtual 1116	com/estrongs/fs/d:c	(Ljava/lang/String;)Lcom/estrongs/fs/c;
    //   1867: getfield 1120	com/estrongs/fs/c:d	Z
    //   1870: istore 8
    //   1872: iload 8
    //   1874: ifne +138 -> 2012
    //   1877: aload 15
    //   1879: ifnull +9 -> 1888
    //   1882: aload 15
    //   1884: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   1887: pop
    //   1888: aload 22
    //   1890: ifnull +52 -> 1942
    //   1893: aload 23
    //   1895: invokevirtual 1050	java/util/ArrayList:size	()I
    //   1898: ifle +44 -> 1942
    //   1901: aload 22
    //   1903: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1906: getfield 1063	com/estrongs/a/p:a	I
    //   1909: bipush 16
    //   1911: if_icmpeq +31 -> 1942
    //   1914: aload 22
    //   1916: iconst_4
    //   1917: iconst_1
    //   1918: anewarray 4	java/lang/Object
    //   1921: dup
    //   1922: iconst_0
    //   1923: aload 23
    //   1925: aastore
    //   1926: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1929: aload 23
    //   1931: iconst_0
    //   1932: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1935: checkcast 1011	com/estrongs/fs/b/u
    //   1938: iconst_1
    //   1939: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   1942: iconst_0
    //   1943: ireturn
    //   1944: astore_1
    //   1945: aload 15
    //   1947: ifnull +9 -> 1956
    //   1950: aload 15
    //   1952: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   1955: pop
    //   1956: aload 22
    //   1958: ifnull +52 -> 2010
    //   1961: aload 23
    //   1963: invokevirtual 1050	java/util/ArrayList:size	()I
    //   1966: ifle +44 -> 2010
    //   1969: aload 22
    //   1971: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   1974: getfield 1063	com/estrongs/a/p:a	I
    //   1977: bipush 16
    //   1979: if_icmpeq +31 -> 2010
    //   1982: aload 22
    //   1984: iconst_4
    //   1985: iconst_1
    //   1986: anewarray 4	java/lang/Object
    //   1989: dup
    //   1990: iconst_0
    //   1991: aload 23
    //   1993: aastore
    //   1994: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   1997: aload 23
    //   1999: iconst_0
    //   2000: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   2003: checkcast 1011	com/estrongs/fs/b/u
    //   2006: iconst_1
    //   2007: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   2010: iconst_0
    //   2011: ireturn
    //   2012: aload 15
    //   2014: astore 17
    //   2016: aload_1
    //   2017: ldc_w 273
    //   2020: invokevirtual 276	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   2023: ifne +5093 -> 7116
    //   2026: aload 15
    //   2028: astore 17
    //   2030: new 278	java/lang/StringBuilder
    //   2033: dup
    //   2034: invokespecial 279	java/lang/StringBuilder:<init>	()V
    //   2037: aload_1
    //   2038: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2041: ldc_w 273
    //   2044: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2047: invokevirtual 286	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2050: astore_1
    //   2051: goto +5153 -> 7204
    //   2054: aload 15
    //   2056: astore 17
    //   2058: iload 4
    //   2060: aload 16
    //   2062: invokeinterface 130 1 0
    //   2067: if_icmpge +79 -> 2146
    //   2070: aload 15
    //   2072: astore 17
    //   2074: aload 23
    //   2076: new 1011	com/estrongs/fs/b/u
    //   2079: dup
    //   2080: aload 16
    //   2082: iload 4
    //   2084: invokeinterface 960 2 0
    //   2089: checkcast 152	com/estrongs/fs/h
    //   2092: new 278	java/lang/StringBuilder
    //   2095: dup
    //   2096: invokespecial 279	java/lang/StringBuilder:<init>	()V
    //   2099: aload_1
    //   2100: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2103: aload 16
    //   2105: iload 4
    //   2107: invokeinterface 960 2 0
    //   2112: checkcast 152	com/estrongs/fs/h
    //   2115: invokeinterface 171 1 0
    //   2120: invokestatic 1122	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   2123: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2126: invokevirtual 286	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2129: lconst_0
    //   2130: invokespecial 1125	com/estrongs/fs/b/u:<init>	(Lcom/estrongs/fs/h;Ljava/lang/String;J)V
    //   2133: invokevirtual 1049	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2136: pop
    //   2137: iload 4
    //   2139: iconst_1
    //   2140: iadd
    //   2141: istore 4
    //   2143: goto -89 -> 2054
    //   2146: aload 15
    //   2148: astore 17
    //   2150: invokestatic 1026	com/estrongs/android/util/bk:f	()Z
    //   2153: ifeq +5057 -> 7210
    //   2156: aload 15
    //   2158: astore 17
    //   2160: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   2163: instanceof 1018
    //   2166: ifeq +5044 -> 7210
    //   2169: aload 15
    //   2171: astore 17
    //   2173: aload_1
    //   2174: invokestatic 105	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   2177: ifeq +5033 -> 7210
    //   2180: aload 15
    //   2182: astore 17
    //   2184: invokestatic 158	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   2187: checkcast 1018	com/estrongs/fs/b/r
    //   2190: getfield 1029	com/estrongs/fs/b/r:v	Ljava/util/Set;
    //   2193: astore 19
    //   2195: aload_1
    //   2196: astore 16
    //   2198: aload 15
    //   2200: astore 17
    //   2202: aload_1
    //   2203: ldc_w 273
    //   2206: invokevirtual 276	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   2209: ifeq +20 -> 2229
    //   2212: aload 15
    //   2214: astore 17
    //   2216: aload_1
    //   2217: iconst_0
    //   2218: aload_1
    //   2219: invokevirtual 1032	java/lang/String:length	()I
    //   2222: iconst_1
    //   2223: isub
    //   2224: invokevirtual 1035	java/lang/String:substring	(II)Ljava/lang/String;
    //   2227: astore 16
    //   2229: aload 15
    //   2231: astore 17
    //   2233: aload 19
    //   2235: aload 16
    //   2237: invokestatic 1001	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   2240: invokeinterface 1038 2 0
    //   2245: pop
    //   2246: goto +4964 -> 7210
    //   2249: aload 15
    //   2251: astore 17
    //   2253: aload 25
    //   2255: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2258: invokeinterface 1071 1 0
    //   2263: lstore 11
    //   2265: lload 11
    //   2267: lstore 13
    //   2269: lload 11
    //   2271: lconst_0
    //   2272: lcmp
    //   2273: ifgt +15 -> 2288
    //   2276: aload 15
    //   2278: astore 17
    //   2280: aload_0
    //   2281: aload 20
    //   2283: invokevirtual 1128	com/estrongs/fs/d:d	(Ljava/lang/String;)J
    //   2286: lstore 13
    //   2288: iload_3
    //   2289: ifeq +4821 -> 7110
    //   2292: aload 15
    //   2294: astore 17
    //   2296: aload_1
    //   2297: invokestatic 1132	com/estrongs/fs/util/j:m	(Ljava/lang/String;)Ljava/lang/String;
    //   2300: astore_1
    //   2301: aload_1
    //   2302: astore 19
    //   2304: aload 22
    //   2306: ifnull +38 -> 2344
    //   2309: aload 15
    //   2311: astore 17
    //   2313: aload 22
    //   2315: bipush 12
    //   2317: iconst_2
    //   2318: anewarray 4	java/lang/Object
    //   2321: dup
    //   2322: iconst_0
    //   2323: aload 25
    //   2325: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2328: invokeinterface 258 1 0
    //   2333: aastore
    //   2334: dup
    //   2335: iconst_1
    //   2336: aload_1
    //   2337: aastore
    //   2338: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2341: aload_1
    //   2342: astore 19
    //   2344: aload 22
    //   2346: ifnull +29 -> 2375
    //   2349: aload 15
    //   2351: astore 17
    //   2353: aload 22
    //   2355: iconst_2
    //   2356: iconst_2
    //   2357: anewarray 4	java/lang/Object
    //   2360: dup
    //   2361: iconst_0
    //   2362: lconst_0
    //   2363: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2366: aastore
    //   2367: dup
    //   2368: iconst_1
    //   2369: aload 20
    //   2371: aastore
    //   2372: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2375: aload 15
    //   2377: astore 17
    //   2379: aload 25
    //   2381: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2384: aload 19
    //   2386: invokestatic 1135	com/estrongs/fs/impl/o/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    //   2389: ifeq +155 -> 2544
    //   2392: aload 22
    //   2394: ifnull +4695 -> 7089
    //   2397: aload 15
    //   2399: astore 17
    //   2401: aload 22
    //   2403: iconst_2
    //   2404: iconst_2
    //   2405: anewarray 4	java/lang/Object
    //   2408: dup
    //   2409: iconst_0
    //   2410: aload 25
    //   2412: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2415: invokeinterface 1071 1 0
    //   2420: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2423: aastore
    //   2424: dup
    //   2425: iconst_1
    //   2426: aload 20
    //   2428: aastore
    //   2429: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2432: aload 15
    //   2434: astore 17
    //   2436: aload 22
    //   2438: bipush 9
    //   2440: iconst_2
    //   2441: anewarray 4	java/lang/Object
    //   2444: dup
    //   2445: iconst_0
    //   2446: lload 13
    //   2448: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2451: aastore
    //   2452: dup
    //   2453: iconst_1
    //   2454: lload 13
    //   2456: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2459: aastore
    //   2460: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2463: aload 15
    //   2465: astore 17
    //   2467: aload 22
    //   2469: bipush 13
    //   2471: iconst_2
    //   2472: anewarray 4	java/lang/Object
    //   2475: dup
    //   2476: iconst_0
    //   2477: aload 20
    //   2479: aastore
    //   2480: dup
    //   2481: iconst_1
    //   2482: aload 19
    //   2484: aastore
    //   2485: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2488: aload 15
    //   2490: astore 17
    //   2492: aload 19
    //   2494: invokestatic 1138	com/estrongs/fs/impl/media/b:a	(Ljava/lang/String;)Z
    //   2497: ifeq +4592 -> 7089
    //   2500: aload 15
    //   2502: astore 17
    //   2504: aload 19
    //   2506: invokestatic 863	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   2509: ifeq +4580 -> 7089
    //   2512: aload 15
    //   2514: astore 17
    //   2516: aload 24
    //   2518: aload 19
    //   2520: invokestatic 1143	com/estrongs/android/h/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   2523: iload_3
    //   2524: istore 4
    //   2526: iload_2
    //   2527: istore 5
    //   2529: iconst_0
    //   2530: istore_3
    //   2531: aload 20
    //   2533: astore_1
    //   2534: iload 4
    //   2536: istore_2
    //   2537: iload 5
    //   2539: istore 4
    //   2541: goto -2276 -> 265
    //   2544: aload 15
    //   2546: astore 17
    //   2548: aload_0
    //   2549: aload 20
    //   2551: aload 19
    //   2553: lload 13
    //   2555: aload 18
    //   2557: arraylength
    //   2558: iconst_3
    //   2559: invokespecial 1145	com/estrongs/fs/d:a	(Ljava/lang/String;Ljava/lang/String;JII)Z
    //   2562: ifeq +113 -> 2675
    //   2565: aload 15
    //   2567: astore 17
    //   2569: new 1147	com/estrongs/android/pop/multicopy/MultiThreadCopy
    //   2572: dup
    //   2573: invokespecial 1148	com/estrongs/android/pop/multicopy/MultiThreadCopy:<init>	()V
    //   2576: aload 22
    //   2578: aload 20
    //   2580: aload 25
    //   2582: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2585: invokeinterface 1151 1 0
    //   2590: aload 19
    //   2592: lload 13
    //   2594: aload 18
    //   2596: arraylength
    //   2597: iconst_3
    //   2598: invokevirtual 1154	com/estrongs/android/pop/multicopy/MultiThreadCopy:a	(Lcom/estrongs/a/a;Ljava/lang/String;JLjava/lang/String;JII)Z
    //   2601: istore 8
    //   2603: iload 8
    //   2605: ifne +3505 -> 6110
    //   2608: aload 15
    //   2610: ifnull +9 -> 2619
    //   2613: aload 15
    //   2615: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   2618: pop
    //   2619: aload 22
    //   2621: ifnull +52 -> 2673
    //   2624: aload 23
    //   2626: invokevirtual 1050	java/util/ArrayList:size	()I
    //   2629: ifle +44 -> 2673
    //   2632: aload 22
    //   2634: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   2637: getfield 1063	com/estrongs/a/p:a	I
    //   2640: bipush 16
    //   2642: if_icmpeq +31 -> 2673
    //   2645: aload 22
    //   2647: iconst_4
    //   2648: iconst_1
    //   2649: anewarray 4	java/lang/Object
    //   2652: dup
    //   2653: iconst_0
    //   2654: aload 23
    //   2656: aastore
    //   2657: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2660: aload 23
    //   2662: iconst_0
    //   2663: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   2666: checkcast 1011	com/estrongs/fs/b/u
    //   2669: iconst_1
    //   2670: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   2673: iconst_0
    //   2674: ireturn
    //   2675: aload 15
    //   2677: astore 17
    //   2679: aload 19
    //   2681: invokestatic 1157	com/estrongs/android/pop/multicopy/MultiThreadCopy:a	(Ljava/lang/String;)Ljava/io/File;
    //   2684: invokevirtual 1160	java/io/File:exists	()Z
    //   2687: ifeq +113 -> 2800
    //   2690: aload 15
    //   2692: astore 17
    //   2694: new 1147	com/estrongs/android/pop/multicopy/MultiThreadCopy
    //   2697: dup
    //   2698: invokespecial 1148	com/estrongs/android/pop/multicopy/MultiThreadCopy:<init>	()V
    //   2701: aload 22
    //   2703: aload 20
    //   2705: aload 25
    //   2707: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   2710: invokeinterface 1151 1 0
    //   2715: aload 19
    //   2717: lload 13
    //   2719: aload 18
    //   2721: arraylength
    //   2722: iconst_1
    //   2723: invokevirtual 1154	com/estrongs/android/pop/multicopy/MultiThreadCopy:a	(Lcom/estrongs/a/a;Ljava/lang/String;JLjava/lang/String;JII)Z
    //   2726: istore 8
    //   2728: iload 8
    //   2730: ifne +3380 -> 6110
    //   2733: aload 15
    //   2735: ifnull +9 -> 2744
    //   2738: aload 15
    //   2740: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   2743: pop
    //   2744: aload 22
    //   2746: ifnull +52 -> 2798
    //   2749: aload 23
    //   2751: invokevirtual 1050	java/util/ArrayList:size	()I
    //   2754: ifle +44 -> 2798
    //   2757: aload 22
    //   2759: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   2762: getfield 1063	com/estrongs/a/p:a	I
    //   2765: bipush 16
    //   2767: if_icmpeq +31 -> 2798
    //   2770: aload 22
    //   2772: iconst_4
    //   2773: iconst_1
    //   2774: anewarray 4	java/lang/Object
    //   2777: dup
    //   2778: iconst_0
    //   2779: aload 23
    //   2781: aastore
    //   2782: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2785: aload 23
    //   2787: iconst_0
    //   2788: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   2791: checkcast 1011	com/estrongs/fs/b/u
    //   2794: iconst_1
    //   2795: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   2798: iconst_0
    //   2799: ireturn
    //   2800: aconst_null
    //   2801: astore 16
    //   2803: aload 15
    //   2805: astore 17
    //   2807: aload 25
    //   2809: getfield 1162	com/estrongs/fs/b/u:c	J
    //   2812: lconst_0
    //   2813: lcmp
    //   2814: ifgt +8 -> 2822
    //   2817: iload 4
    //   2819: ifeq +4425 -> 7244
    //   2822: aload 15
    //   2824: astore 17
    //   2826: aload 19
    //   2828: invokestatic 1077	com/estrongs/fs/d:i	(Ljava/lang/String;)Z
    //   2831: ifeq +4413 -> 7244
    //   2834: aload 15
    //   2836: astore 17
    //   2838: aload_0
    //   2839: aload 19
    //   2841: invokevirtual 1095	com/estrongs/fs/d:b	(Ljava/lang/String;)Z
    //   2844: ifeq +4400 -> 7244
    //   2847: iconst_1
    //   2848: istore 4
    //   2850: iload 4
    //   2852: ifeq +18 -> 2870
    //   2855: aload 15
    //   2857: astore 17
    //   2859: aload 25
    //   2861: aload_0
    //   2862: aload 19
    //   2864: invokevirtual 1128	com/estrongs/fs/d:d	(Ljava/lang/String;)J
    //   2867: putfield 1162	com/estrongs/fs/b/u:c	J
    //   2870: iload 4
    //   2872: ifeq +106 -> 2978
    //   2875: aload 15
    //   2877: astore 17
    //   2879: aload 25
    //   2881: getfield 1162	com/estrongs/fs/b/u:c	J
    //   2884: lconst_0
    //   2885: lcmp
    //   2886: ifle +92 -> 2978
    //   2889: aload 22
    //   2891: ifnull +39 -> 2930
    //   2894: aload 15
    //   2896: astore 17
    //   2898: aload 22
    //   2900: iconst_2
    //   2901: iconst_3
    //   2902: anewarray 4	java/lang/Object
    //   2905: dup
    //   2906: iconst_0
    //   2907: aload 25
    //   2909: getfield 1162	com/estrongs/fs/b/u:c	J
    //   2912: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2915: aastore
    //   2916: dup
    //   2917: iconst_1
    //   2918: aload 20
    //   2920: aastore
    //   2921: dup
    //   2922: iconst_2
    //   2923: ldc_w 1164
    //   2926: aastore
    //   2927: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   2930: iload 4
    //   2932: ifeq +176 -> 3108
    //   2935: aload 15
    //   2937: astore 17
    //   2939: aload 25
    //   2941: getfield 1162	com/estrongs/fs/b/u:c	J
    //   2944: lload 13
    //   2946: lcmp
    //   2947: ifne +161 -> 3108
    //   2950: lload 13
    //   2952: lconst_0
    //   2953: lcmp
    //   2954: ifeq +154 -> 3108
    //   2957: iload_3
    //   2958: istore 4
    //   2960: iload_2
    //   2961: istore 5
    //   2963: iconst_0
    //   2964: istore_3
    //   2965: aload 20
    //   2967: astore_1
    //   2968: iload 4
    //   2970: istore_2
    //   2971: iload 5
    //   2973: istore 4
    //   2975: goto -2710 -> 265
    //   2978: aload 15
    //   2980: astore 17
    //   2982: aload 25
    //   2984: lconst_0
    //   2985: putfield 1162	com/estrongs/fs/b/u:c	J
    //   2988: goto -58 -> 2930
    //   2991: astore_1
    //   2992: aload 22
    //   2994: ifnull +46 -> 3040
    //   2997: aload 15
    //   2999: astore 17
    //   3001: aload 22
    //   3003: sipush 10000
    //   3006: new 925	com/estrongs/a/q
    //   3009: dup
    //   3010: aload_0
    //   3011: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   3014: ldc_w 1098
    //   3017: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   3020: iconst_1
    //   3021: anewarray 4	java/lang/Object
    //   3024: dup
    //   3025: iconst_0
    //   3026: ldc_w 1166
    //   3029: aastore
    //   3030: invokestatic 1104	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   3033: aload_1
    //   3034: invokespecial 930	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   3037: invokevirtual 934	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   3040: aload 15
    //   3042: ifnull +9 -> 3051
    //   3045: aload 15
    //   3047: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   3050: pop
    //   3051: aload 22
    //   3053: ifnull -2381 -> 672
    //   3056: aload 23
    //   3058: invokevirtual 1050	java/util/ArrayList:size	()I
    //   3061: ifle -2389 -> 672
    //   3064: aload 22
    //   3066: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3069: getfield 1063	com/estrongs/a/p:a	I
    //   3072: bipush 16
    //   3074: if_icmpeq -2402 -> 672
    //   3077: aload 22
    //   3079: iconst_4
    //   3080: iconst_1
    //   3081: anewarray 4	java/lang/Object
    //   3084: dup
    //   3085: iconst_0
    //   3086: aload 23
    //   3088: aastore
    //   3089: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3092: aload 23
    //   3094: iconst_0
    //   3095: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3098: checkcast 1011	com/estrongs/fs/b/u
    //   3101: iconst_1
    //   3102: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   3105: goto -2433 -> 672
    //   3108: aload 15
    //   3110: astore 17
    //   3112: new 306	com/estrongs/android/util/TypedMap
    //   3115: dup
    //   3116: invokespecial 460	com/estrongs/android/util/TypedMap:<init>	()V
    //   3119: astore 21
    //   3121: iload 4
    //   3123: ifeq +249 -> 3372
    //   3126: aload 15
    //   3128: astore 17
    //   3130: aload 25
    //   3132: getfield 1162	com/estrongs/fs/b/u:c	J
    //   3135: lstore 11
    //   3137: aload 15
    //   3139: astore 17
    //   3141: aload_0
    //   3142: aload 20
    //   3144: lload 11
    //   3146: aload 21
    //   3148: invokevirtual 902	com/estrongs/fs/d:a	(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    //   3151: astore_1
    //   3152: iload 4
    //   3154: ifeq +94 -> 3248
    //   3157: aload 15
    //   3159: astore 17
    //   3161: aload 25
    //   3163: getfield 1162	com/estrongs/fs/b/u:c	J
    //   3166: lconst_0
    //   3167: lcmp
    //   3168: ifle +80 -> 3248
    //   3171: aload 15
    //   3173: astore 17
    //   3175: aload 21
    //   3177: ldc_w 1164
    //   3180: invokevirtual 423	com/estrongs/android/util/TypedMap:containsKey	(Ljava/lang/Object;)Z
    //   3183: ifeq +65 -> 3248
    //   3186: aload 15
    //   3188: astore 17
    //   3190: aload 21
    //   3192: ldc_w 1164
    //   3195: invokevirtual 428	com/estrongs/android/util/TypedMap:getBoolean	(Ljava/lang/String;)Z
    //   3198: ifne +50 -> 3248
    //   3201: aload 15
    //   3203: astore 17
    //   3205: aload 25
    //   3207: lconst_0
    //   3208: putfield 1162	com/estrongs/fs/b/u:c	J
    //   3211: aload 22
    //   3213: ifnull +35 -> 3248
    //   3216: aload 15
    //   3218: astore 17
    //   3220: aload 22
    //   3222: iconst_2
    //   3223: iconst_3
    //   3224: anewarray 4	java/lang/Object
    //   3227: dup
    //   3228: iconst_0
    //   3229: lconst_0
    //   3230: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   3233: aastore
    //   3234: dup
    //   3235: iconst_1
    //   3236: aload 20
    //   3238: aastore
    //   3239: dup
    //   3240: iconst_2
    //   3241: ldc_w 1168
    //   3244: aastore
    //   3245: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3248: aload_1
    //   3249: ifnonnull +462 -> 3711
    //   3252: aload 22
    //   3254: ifnull +51 -> 3305
    //   3257: aload 15
    //   3259: astore 17
    //   3261: aload 22
    //   3263: iconst_2
    //   3264: new 925	com/estrongs/a/q
    //   3267: dup
    //   3268: aload_0
    //   3269: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   3272: ldc_w 1098
    //   3275: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   3278: iconst_1
    //   3279: anewarray 4	java/lang/Object
    //   3282: dup
    //   3283: iconst_0
    //   3284: aload 25
    //   3286: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   3289: invokeinterface 181 1 0
    //   3294: aastore
    //   3295: invokestatic 1104	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   3298: aconst_null
    //   3299: invokespecial 930	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   3302: invokevirtual 934	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   3305: aload 15
    //   3307: ifnull +9 -> 3316
    //   3310: aload 15
    //   3312: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   3315: pop
    //   3316: aload 22
    //   3318: ifnull +52 -> 3370
    //   3321: aload 23
    //   3323: invokevirtual 1050	java/util/ArrayList:size	()I
    //   3326: ifle +44 -> 3370
    //   3329: aload 22
    //   3331: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3334: getfield 1063	com/estrongs/a/p:a	I
    //   3337: bipush 16
    //   3339: if_icmpeq +31 -> 3370
    //   3342: aload 22
    //   3344: iconst_4
    //   3345: iconst_1
    //   3346: anewarray 4	java/lang/Object
    //   3349: dup
    //   3350: iconst_0
    //   3351: aload 23
    //   3353: aastore
    //   3354: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3357: aload 23
    //   3359: iconst_0
    //   3360: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3363: checkcast 1011	com/estrongs/fs/b/u
    //   3366: iconst_1
    //   3367: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   3370: iconst_0
    //   3371: ireturn
    //   3372: lconst_0
    //   3373: lstore 11
    //   3375: goto -238 -> 3137
    //   3378: astore_1
    //   3379: aload 15
    //   3381: astore 17
    //   3383: aload_1
    //   3384: invokevirtual 1072	com/estrongs/fs/FileSystemException:getMessage	()Ljava/lang/String;
    //   3387: astore 26
    //   3389: aload 16
    //   3391: astore_1
    //   3392: aload 26
    //   3394: ifnull -242 -> 3152
    //   3397: aload 15
    //   3399: astore 17
    //   3401: aload 26
    //   3403: ldc_w 1170
    //   3406: invokevirtual 264	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   3409: ifeq +183 -> 3592
    //   3412: aload 15
    //   3414: astore 17
    //   3416: aload 22
    //   3418: ldc_w 1172
    //   3421: iconst_1
    //   3422: anewarray 4	java/lang/Object
    //   3425: dup
    //   3426: iconst_0
    //   3427: aload 20
    //   3429: aastore
    //   3430: invokevirtual 1083	com/estrongs/a/a:getDecision	(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;
    //   3433: checkcast 1172	com/estrongs/a/a/c
    //   3436: astore_1
    //   3437: aload 15
    //   3439: astore 17
    //   3441: aload_1
    //   3442: getfield 1173	com/estrongs/a/a/c:d	Z
    //   3445: ifeq +79 -> 3524
    //   3448: aload 15
    //   3450: astore 17
    //   3452: aload 22
    //   3454: invokevirtual 1176	com/estrongs/a/a:requestStop	()V
    //   3457: aload 15
    //   3459: ifnull +9 -> 3468
    //   3462: aload 15
    //   3464: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   3467: pop
    //   3468: aload 22
    //   3470: ifnull +52 -> 3522
    //   3473: aload 23
    //   3475: invokevirtual 1050	java/util/ArrayList:size	()I
    //   3478: ifle +44 -> 3522
    //   3481: aload 22
    //   3483: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3486: getfield 1063	com/estrongs/a/p:a	I
    //   3489: bipush 16
    //   3491: if_icmpeq +31 -> 3522
    //   3494: aload 22
    //   3496: iconst_4
    //   3497: iconst_1
    //   3498: anewarray 4	java/lang/Object
    //   3501: dup
    //   3502: iconst_0
    //   3503: aload 23
    //   3505: aastore
    //   3506: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3509: aload 23
    //   3511: iconst_0
    //   3512: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3515: checkcast 1011	com/estrongs/fs/b/u
    //   3518: iconst_1
    //   3519: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   3522: iconst_0
    //   3523: ireturn
    //   3524: aload 15
    //   3526: astore 17
    //   3528: aload 21
    //   3530: ldc_w 1178
    //   3533: aload_1
    //   3534: getfield 1179	com/estrongs/a/a/c:b	Ljava/lang/String;
    //   3537: invokevirtual 323	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   3540: pop
    //   3541: aload 15
    //   3543: astore 17
    //   3545: aload 21
    //   3547: ldc_w 1181
    //   3550: aload_1
    //   3551: getfield 1183	com/estrongs/a/a/c:c	Ljava/lang/String;
    //   3554: invokevirtual 323	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   3557: pop
    //   3558: iload 4
    //   3560: ifeq +3690 -> 7250
    //   3563: aload 15
    //   3565: astore 17
    //   3567: aload 25
    //   3569: getfield 1162	com/estrongs/fs/b/u:c	J
    //   3572: lstore 11
    //   3574: aload 15
    //   3576: astore 17
    //   3578: aload_0
    //   3579: aload 20
    //   3581: lload 11
    //   3583: aload 21
    //   3585: invokevirtual 902	com/estrongs/fs/d:a	(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/InputStream;
    //   3588: astore_1
    //   3589: goto -437 -> 3152
    //   3592: aload 16
    //   3594: astore_1
    //   3595: iload 4
    //   3597: ifeq -445 -> 3152
    //   3600: aload 16
    //   3602: astore_1
    //   3603: aload 15
    //   3605: astore 17
    //   3607: aload 26
    //   3609: ldc_w 1185
    //   3612: invokevirtual 264	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   3615: ifeq -463 -> 3152
    //   3618: aload 15
    //   3620: astore 17
    //   3622: aload 22
    //   3624: invokevirtual 1189	com/estrongs/a/a:summary	()Lorg/json/JSONObject;
    //   3627: ldc_w 1191
    //   3630: iconst_1
    //   3631: invokevirtual 1196	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   3634: pop
    //   3635: aload 15
    //   3637: astore 17
    //   3639: aload 22
    //   3641: invokevirtual 1176	com/estrongs/a/a:requestStop	()V
    //   3644: aload 15
    //   3646: ifnull +9 -> 3655
    //   3649: aload 15
    //   3651: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   3654: pop
    //   3655: aload 22
    //   3657: ifnull +52 -> 3709
    //   3660: aload 23
    //   3662: invokevirtual 1050	java/util/ArrayList:size	()I
    //   3665: ifle +44 -> 3709
    //   3668: aload 22
    //   3670: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3673: getfield 1063	com/estrongs/a/p:a	I
    //   3676: bipush 16
    //   3678: if_icmpeq +31 -> 3709
    //   3681: aload 22
    //   3683: iconst_4
    //   3684: iconst_1
    //   3685: anewarray 4	java/lang/Object
    //   3688: dup
    //   3689: iconst_0
    //   3690: aload 23
    //   3692: aastore
    //   3693: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3696: aload 23
    //   3698: iconst_0
    //   3699: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3702: checkcast 1011	com/estrongs/fs/b/u
    //   3705: iconst_1
    //   3706: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   3709: iconst_0
    //   3710: ireturn
    //   3711: aload 15
    //   3713: astore 17
    //   3715: aload 19
    //   3717: invokestatic 743	com/estrongs/android/util/ap:aG	(Ljava/lang/String;)Z
    //   3720: ifne +27 -> 3747
    //   3723: aload 15
    //   3725: astore 17
    //   3727: aload 19
    //   3729: invokestatic 746	com/estrongs/android/util/ap:aL	(Ljava/lang/String;)Z
    //   3732: ifne +15 -> 3747
    //   3735: aload 15
    //   3737: astore 17
    //   3739: aload 19
    //   3741: invokestatic 552	com/estrongs/android/util/ap:aJ	(Ljava/lang/String;)Z
    //   3744: ifeq +172 -> 3916
    //   3747: lload 13
    //   3749: ldc2_w 374
    //   3752: lcmp
    //   3753: ifeq +3324 -> 7077
    //   3756: aload 15
    //   3758: astore 17
    //   3760: aload_0
    //   3761: aload 19
    //   3763: invokestatic 544	com/estrongs/android/util/ap:cd	(Ljava/lang/String;)Ljava/lang/String;
    //   3766: lload 13
    //   3768: invokevirtual 1197	com/estrongs/fs/d:b	(Ljava/lang/String;J)Ljava/io/OutputStream;
    //   3771: astore 21
    //   3773: aload_1
    //   3774: astore 16
    //   3776: aload 21
    //   3778: astore_1
    //   3779: lload 13
    //   3781: ldc2_w 374
    //   3784: lcmp
    //   3785: ifne +29 -> 3814
    //   3788: aload 15
    //   3790: astore 17
    //   3792: aload 25
    //   3794: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   3797: invokeinterface 171 1 0
    //   3802: invokestatic 73	com/estrongs/android/util/ap:I	(Ljava/lang/String;)I
    //   3805: istore 5
    //   3807: iload 5
    //   3809: bipush 18
    //   3811: if_icmpne +12 -> 3823
    //   3814: aload 16
    //   3816: ifnull +7 -> 3823
    //   3819: aload_1
    //   3820: ifnonnull +509 -> 4329
    //   3823: aload 15
    //   3825: astore 17
    //   3827: aload 25
    //   3829: getfield 1162	com/estrongs/fs/b/u:c	J
    //   3832: lconst_0
    //   3833: lcmp
    //   3834: ifne +15 -> 3849
    //   3837: aload 15
    //   3839: astore 17
    //   3841: aload_0
    //   3842: aload 19
    //   3844: aconst_null
    //   3845: invokevirtual 1200	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   3848: pop
    //   3849: aload 15
    //   3851: ifnull +9 -> 3860
    //   3854: aload 15
    //   3856: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   3859: pop
    //   3860: aload 22
    //   3862: ifnull +52 -> 3914
    //   3865: aload 23
    //   3867: invokevirtual 1050	java/util/ArrayList:size	()I
    //   3870: ifle +44 -> 3914
    //   3873: aload 22
    //   3875: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   3878: getfield 1063	com/estrongs/a/p:a	I
    //   3881: bipush 16
    //   3883: if_icmpeq +31 -> 3914
    //   3886: aload 22
    //   3888: iconst_4
    //   3889: iconst_1
    //   3890: anewarray 4	java/lang/Object
    //   3893: dup
    //   3894: iconst_0
    //   3895: aload 23
    //   3897: aastore
    //   3898: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   3901: aload 23
    //   3903: iconst_0
    //   3904: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   3907: checkcast 1011	com/estrongs/fs/b/u
    //   3910: iconst_1
    //   3911: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   3914: iconst_0
    //   3915: ireturn
    //   3916: aload 15
    //   3918: astore 17
    //   3920: aload 19
    //   3922: invokestatic 842	com/estrongs/android/util/ap:aQ	(Ljava/lang/String;)Z
    //   3925: ifeq +264 -> 4189
    //   3928: aconst_null
    //   3929: astore 16
    //   3931: aload 15
    //   3933: astore 17
    //   3935: aload 19
    //   3937: invokestatic 1203	com/estrongs/android/util/ap:aC	(Ljava/lang/String;)Z
    //   3940: ifne +196 -> 4136
    //   3943: aload 22
    //   3945: ifnull +124 -> 4069
    //   3948: aload 15
    //   3950: astore 17
    //   3952: aload 22
    //   3954: ldc_w 1205
    //   3957: iconst_1
    //   3958: anewarray 4	java/lang/Object
    //   3961: dup
    //   3962: iconst_0
    //   3963: aload 19
    //   3965: aastore
    //   3966: invokevirtual 1083	com/estrongs/a/a:getDecision	(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;
    //   3969: checkcast 1205	com/estrongs/a/a/i
    //   3972: astore 21
    //   3974: aload 21
    //   3976: astore 16
    //   3978: aload 15
    //   3980: astore 17
    //   3982: aload 21
    //   3984: getfield 1206	com/estrongs/a/a/i:g	I
    //   3987: iconst_3
    //   3988: if_icmpne +148 -> 4136
    //   3991: aload 15
    //   3993: astore 17
    //   3995: aload 22
    //   3997: iconst_1
    //   3998: aconst_null
    //   3999: invokevirtual 934	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   4002: aload 15
    //   4004: ifnull +9 -> 4013
    //   4007: aload 15
    //   4009: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   4012: pop
    //   4013: aload 22
    //   4015: ifnull +52 -> 4067
    //   4018: aload 23
    //   4020: invokevirtual 1050	java/util/ArrayList:size	()I
    //   4023: ifle +44 -> 4067
    //   4026: aload 22
    //   4028: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4031: getfield 1063	com/estrongs/a/p:a	I
    //   4034: bipush 16
    //   4036: if_icmpeq +31 -> 4067
    //   4039: aload 22
    //   4041: iconst_4
    //   4042: iconst_1
    //   4043: anewarray 4	java/lang/Object
    //   4046: dup
    //   4047: iconst_0
    //   4048: aload 23
    //   4050: aastore
    //   4051: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4054: aload 23
    //   4056: iconst_0
    //   4057: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4060: checkcast 1011	com/estrongs/fs/b/u
    //   4063: iconst_1
    //   4064: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   4067: iconst_0
    //   4068: ireturn
    //   4069: aload 15
    //   4071: ifnull +9 -> 4080
    //   4074: aload 15
    //   4076: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   4079: pop
    //   4080: aload 22
    //   4082: ifnull +52 -> 4134
    //   4085: aload 23
    //   4087: invokevirtual 1050	java/util/ArrayList:size	()I
    //   4090: ifle +44 -> 4134
    //   4093: aload 22
    //   4095: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4098: getfield 1063	com/estrongs/a/p:a	I
    //   4101: bipush 16
    //   4103: if_icmpeq +31 -> 4134
    //   4106: aload 22
    //   4108: iconst_4
    //   4109: iconst_1
    //   4110: anewarray 4	java/lang/Object
    //   4113: dup
    //   4114: iconst_0
    //   4115: aload 23
    //   4117: aastore
    //   4118: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4121: aload 23
    //   4123: iconst_0
    //   4124: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4127: checkcast 1011	com/estrongs/fs/b/u
    //   4130: iconst_1
    //   4131: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   4134: iconst_0
    //   4135: ireturn
    //   4136: aload 16
    //   4138: ifnonnull +37 -> 4175
    //   4141: aload 15
    //   4143: astore 17
    //   4145: getstatic 682	com/estrongs/android/util/TypedMap:EMPTY	Lcom/estrongs/android/util/TypedMap;
    //   4148: astore 16
    //   4150: aload 15
    //   4152: astore 17
    //   4154: aload_0
    //   4155: aload 19
    //   4157: lload 13
    //   4159: aload 16
    //   4161: invokevirtual 1209	com/estrongs/fs/d:b	(Ljava/lang/String;JLcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    //   4164: astore 21
    //   4166: aload_1
    //   4167: astore 16
    //   4169: aload 21
    //   4171: astore_1
    //   4172: goto -393 -> 3779
    //   4175: aload 15
    //   4177: astore 17
    //   4179: aload 16
    //   4181: getfield 1211	com/estrongs/a/a/i:b	Lcom/estrongs/android/util/TypedMap;
    //   4184: astore 16
    //   4186: goto -36 -> 4150
    //   4189: iload 4
    //   4191: ifeq +17 -> 4208
    //   4194: aload 15
    //   4196: astore 17
    //   4198: aload 25
    //   4200: getfield 1162	com/estrongs/fs/b/u:c	J
    //   4203: lconst_0
    //   4204: lcmp
    //   4205: ifne +103 -> 4308
    //   4208: aload 15
    //   4210: astore 17
    //   4212: aload_0
    //   4213: aload 19
    //   4215: lload 13
    //   4217: invokevirtual 1197	com/estrongs/fs/d:b	(Ljava/lang/String;J)Ljava/io/OutputStream;
    //   4220: astore 16
    //   4222: iload 4
    //   4224: ifeq +2840 -> 7064
    //   4227: aload 16
    //   4229: ifnonnull +2835 -> 7064
    //   4232: aload 22
    //   4234: ifnull +35 -> 4269
    //   4237: aload 15
    //   4239: astore 17
    //   4241: aload 22
    //   4243: iconst_2
    //   4244: iconst_2
    //   4245: anewarray 4	java/lang/Object
    //   4248: dup
    //   4249: iconst_0
    //   4250: lconst_0
    //   4251: aload 25
    //   4253: getfield 1162	com/estrongs/fs/b/u:c	J
    //   4256: lsub
    //   4257: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4260: aastore
    //   4261: dup
    //   4262: iconst_1
    //   4263: aload 20
    //   4265: aastore
    //   4266: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4269: aload 15
    //   4271: astore 17
    //   4273: aload 25
    //   4275: lconst_0
    //   4276: putfield 1162	com/estrongs/fs/b/u:c	J
    //   4279: aload 15
    //   4281: astore 17
    //   4283: aload_0
    //   4284: aload 19
    //   4286: lload 13
    //   4288: invokevirtual 1197	com/estrongs/fs/d:b	(Ljava/lang/String;J)Ljava/io/OutputStream;
    //   4291: astore_1
    //   4292: aload 15
    //   4294: astore 17
    //   4296: aload_0
    //   4297: aload 20
    //   4299: lconst_0
    //   4300: invokevirtual 1212	com/estrongs/fs/d:a	(Ljava/lang/String;J)Ljava/io/InputStream;
    //   4303: astore 16
    //   4305: goto -526 -> 3779
    //   4308: aload 15
    //   4310: astore 17
    //   4312: aload_0
    //   4313: aload 19
    //   4315: aload 25
    //   4317: getfield 1162	com/estrongs/fs/b/u:c	J
    //   4320: iconst_1
    //   4321: invokevirtual 1214	com/estrongs/fs/d:a	(Ljava/lang/String;JZ)Ljava/io/OutputStream;
    //   4324: astore 16
    //   4326: goto -104 -> 4222
    //   4329: aload 22
    //   4331: ifnull +37 -> 4368
    //   4334: aload 15
    //   4336: astore 17
    //   4338: aload 22
    //   4340: bipush 9
    //   4342: iconst_2
    //   4343: anewarray 4	java/lang/Object
    //   4346: dup
    //   4347: iconst_0
    //   4348: lload 13
    //   4350: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4353: aastore
    //   4354: dup
    //   4355: iconst_1
    //   4356: aload 25
    //   4358: getfield 1162	com/estrongs/fs/b/u:c	J
    //   4361: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4364: aastore
    //   4365: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4368: aload 15
    //   4370: astore 17
    //   4372: aload 25
    //   4374: getfield 1162	com/estrongs/fs/b/u:c	J
    //   4377: lstore 11
    //   4379: aload 16
    //   4381: aload 18
    //   4383: invokevirtual 1220	java/io/InputStream:read	([B)I
    //   4386: istore 5
    //   4388: iload 5
    //   4390: iconst_m1
    //   4391: if_icmpeq +1323 -> 5714
    //   4394: aload 22
    //   4396: ifnull +631 -> 5027
    //   4399: aload 22
    //   4401: invokevirtual 161	com/estrongs/a/a:taskStopped	()Z
    //   4404: ifeq +623 -> 5027
    //   4407: iload 4
    //   4409: ifne +28 -> 4437
    //   4412: aload 22
    //   4414: iconst_2
    //   4415: iconst_2
    //   4416: anewarray 4	java/lang/Object
    //   4419: dup
    //   4420: iconst_0
    //   4421: lconst_0
    //   4422: lload 11
    //   4424: lsub
    //   4425: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4428: aastore
    //   4429: dup
    //   4430: iconst_1
    //   4431: aload 20
    //   4433: aastore
    //   4434: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4437: aload_1
    //   4438: ifnull +2623 -> 7061
    //   4441: aload_1
    //   4442: invokevirtual 1225	java/io/OutputStream:close	()V
    //   4445: aconst_null
    //   4446: astore_1
    //   4447: aload 22
    //   4449: iconst_1
    //   4450: invokevirtual 1229	com/estrongs/a/a:enableTaskHide	(Z)V
    //   4453: aload_0
    //   4454: aload 19
    //   4456: aconst_null
    //   4457: invokevirtual 1200	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   4460: pop
    //   4461: aload 22
    //   4463: iconst_0
    //   4464: invokevirtual 1229	com/estrongs/a/a:enableTaskHide	(Z)V
    //   4467: aload 16
    //   4469: ifnull +12 -> 4481
    //   4472: aload 15
    //   4474: astore 17
    //   4476: aload 16
    //   4478: invokevirtual 1230	java/io/InputStream:close	()V
    //   4481: aload_1
    //   4482: ifnull +11 -> 4493
    //   4485: aload 15
    //   4487: astore 17
    //   4489: aload_1
    //   4490: invokevirtual 1225	java/io/OutputStream:close	()V
    //   4493: lload 11
    //   4495: lload 13
    //   4497: lcmp
    //   4498: ifge +233 -> 4731
    //   4501: iload 4
    //   4503: ifne +37 -> 4540
    //   4506: aload 22
    //   4508: ifnull +32 -> 4540
    //   4511: aload 15
    //   4513: astore 17
    //   4515: aload 22
    //   4517: iconst_2
    //   4518: iconst_2
    //   4519: anewarray 4	java/lang/Object
    //   4522: dup
    //   4523: iconst_0
    //   4524: lconst_0
    //   4525: lload 11
    //   4527: lsub
    //   4528: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4531: aastore
    //   4532: dup
    //   4533: iconst_1
    //   4534: aload 20
    //   4536: aastore
    //   4537: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4540: aload 15
    //   4542: ifnull +9 -> 4551
    //   4545: aload 15
    //   4547: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   4550: pop
    //   4551: aload 22
    //   4553: ifnull +52 -> 4605
    //   4556: aload 23
    //   4558: invokevirtual 1050	java/util/ArrayList:size	()I
    //   4561: ifle +44 -> 4605
    //   4564: aload 22
    //   4566: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4569: getfield 1063	com/estrongs/a/p:a	I
    //   4572: bipush 16
    //   4574: if_icmpeq +31 -> 4605
    //   4577: aload 22
    //   4579: iconst_4
    //   4580: iconst_1
    //   4581: anewarray 4	java/lang/Object
    //   4584: dup
    //   4585: iconst_0
    //   4586: aload 23
    //   4588: aastore
    //   4589: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4592: aload 23
    //   4594: iconst_0
    //   4595: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4598: checkcast 1011	com/estrongs/fs/b/u
    //   4601: iconst_1
    //   4602: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   4605: iconst_0
    //   4606: ireturn
    //   4607: astore 17
    //   4609: goto -162 -> 4447
    //   4612: astore 16
    //   4614: aload 15
    //   4616: astore 17
    //   4618: aload_1
    //   4619: instanceof 1232
    //   4622: ifeq -129 -> 4493
    //   4625: iload 4
    //   4627: ifne +37 -> 4664
    //   4630: aload 22
    //   4632: ifnull +32 -> 4664
    //   4635: aload 15
    //   4637: astore 17
    //   4639: aload 22
    //   4641: iconst_2
    //   4642: iconst_2
    //   4643: anewarray 4	java/lang/Object
    //   4646: dup
    //   4647: iconst_0
    //   4648: lconst_0
    //   4649: lload 11
    //   4651: lsub
    //   4652: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   4655: aastore
    //   4656: dup
    //   4657: iconst_1
    //   4658: aload 20
    //   4660: aastore
    //   4661: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4664: aload 15
    //   4666: ifnull +9 -> 4675
    //   4669: aload 15
    //   4671: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   4674: pop
    //   4675: aload 22
    //   4677: ifnull +52 -> 4729
    //   4680: aload 23
    //   4682: invokevirtual 1050	java/util/ArrayList:size	()I
    //   4685: ifle +44 -> 4729
    //   4688: aload 22
    //   4690: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4693: getfield 1063	com/estrongs/a/p:a	I
    //   4696: bipush 16
    //   4698: if_icmpeq +31 -> 4729
    //   4701: aload 22
    //   4703: iconst_4
    //   4704: iconst_1
    //   4705: anewarray 4	java/lang/Object
    //   4708: dup
    //   4709: iconst_0
    //   4710: aload 23
    //   4712: aastore
    //   4713: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4716: aload 23
    //   4718: iconst_0
    //   4719: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4722: checkcast 1011	com/estrongs/fs/b/u
    //   4725: iconst_1
    //   4726: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   4729: iconst_0
    //   4730: ireturn
    //   4731: aload 22
    //   4733: ifnull +131 -> 4864
    //   4736: aload 15
    //   4738: astore 17
    //   4740: invokestatic 1235	com/estrongs/android/util/bk:l	()Z
    //   4743: ifeq +188 -> 4931
    //   4746: aload 15
    //   4748: astore 17
    //   4750: aload 22
    //   4752: instanceof 1018
    //   4755: ifeq +176 -> 4931
    //   4758: aload 15
    //   4760: astore 17
    //   4762: aload 19
    //   4764: invokestatic 1238	com/estrongs/android/util/ap:bJ	(Ljava/lang/String;)Z
    //   4767: ifeq +164 -> 4931
    //   4770: aload 15
    //   4772: astore 17
    //   4774: aload 22
    //   4776: checkcast 1018	com/estrongs/fs/b/r
    //   4779: getfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   4782: ifnull +149 -> 4931
    //   4785: aload 15
    //   4787: astore 17
    //   4789: aload 22
    //   4791: bipush 13
    //   4793: iconst_2
    //   4794: anewarray 4	java/lang/Object
    //   4797: dup
    //   4798: iconst_0
    //   4799: aload 20
    //   4801: aastore
    //   4802: dup
    //   4803: iconst_1
    //   4804: aload 22
    //   4806: checkcast 1018	com/estrongs/fs/b/r
    //   4809: getfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   4812: aastore
    //   4813: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4816: aload 15
    //   4818: astore 17
    //   4820: aload 22
    //   4822: checkcast 1018	com/estrongs/fs/b/r
    //   4825: aconst_null
    //   4826: putfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   4829: aload 15
    //   4831: astore 17
    //   4833: aload 19
    //   4835: invokestatic 1138	com/estrongs/fs/impl/media/b:a	(Ljava/lang/String;)Z
    //   4838: ifeq +26 -> 4864
    //   4841: aload 15
    //   4843: astore 17
    //   4845: aload 19
    //   4847: invokestatic 863	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   4850: ifeq +14 -> 4864
    //   4853: aload 15
    //   4855: astore 17
    //   4857: aload 24
    //   4859: aload 19
    //   4861: invokestatic 1143	com/estrongs/android/h/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   4864: aload 15
    //   4866: ifnull +9 -> 4875
    //   4869: aload 15
    //   4871: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   4874: pop
    //   4875: aload 22
    //   4877: ifnull +52 -> 4929
    //   4880: aload 23
    //   4882: invokevirtual 1050	java/util/ArrayList:size	()I
    //   4885: ifle +44 -> 4929
    //   4888: aload 22
    //   4890: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4893: getfield 1063	com/estrongs/a/p:a	I
    //   4896: bipush 16
    //   4898: if_icmpeq +31 -> 4929
    //   4901: aload 22
    //   4903: iconst_4
    //   4904: iconst_1
    //   4905: anewarray 4	java/lang/Object
    //   4908: dup
    //   4909: iconst_0
    //   4910: aload 23
    //   4912: aastore
    //   4913: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4916: aload 23
    //   4918: iconst_0
    //   4919: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   4922: checkcast 1011	com/estrongs/fs/b/u
    //   4925: iconst_1
    //   4926: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   4929: iconst_0
    //   4930: ireturn
    //   4931: aload 15
    //   4933: astore 17
    //   4935: aload 22
    //   4937: bipush 13
    //   4939: iconst_2
    //   4940: anewarray 4	java/lang/Object
    //   4943: dup
    //   4944: iconst_0
    //   4945: aload 20
    //   4947: aastore
    //   4948: dup
    //   4949: iconst_1
    //   4950: aload 19
    //   4952: aastore
    //   4953: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   4956: goto -127 -> 4829
    //   4959: astore_1
    //   4960: aload 17
    //   4962: ifnull +9 -> 4971
    //   4965: aload 17
    //   4967: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   4970: pop
    //   4971: aload 22
    //   4973: ifnull +52 -> 5025
    //   4976: aload 23
    //   4978: invokevirtual 1050	java/util/ArrayList:size	()I
    //   4981: ifle +44 -> 5025
    //   4984: aload 22
    //   4986: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   4989: getfield 1063	com/estrongs/a/p:a	I
    //   4992: bipush 16
    //   4994: if_icmpeq +31 -> 5025
    //   4997: aload 22
    //   4999: iconst_4
    //   5000: iconst_1
    //   5001: anewarray 4	java/lang/Object
    //   5004: dup
    //   5005: iconst_0
    //   5006: aload 23
    //   5008: aastore
    //   5009: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5012: aload 23
    //   5014: iconst_0
    //   5015: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5018: checkcast 1011	com/estrongs/fs/b/u
    //   5021: iconst_1
    //   5022: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   5025: aload_1
    //   5026: athrow
    //   5027: aload_1
    //   5028: aload 18
    //   5030: iconst_0
    //   5031: iload 5
    //   5033: invokevirtual 1245	java/io/OutputStream:write	([BII)V
    //   5036: iload 5
    //   5038: i2l
    //   5039: lload 11
    //   5041: ladd
    //   5042: lstore 11
    //   5044: aload_1
    //   5045: astore 17
    //   5047: aload 25
    //   5049: aload 25
    //   5051: getfield 1162	com/estrongs/fs/b/u:c	J
    //   5054: iload 5
    //   5056: i2l
    //   5057: ladd
    //   5058: putfield 1162	com/estrongs/fs/b/u:c	J
    //   5061: aload 22
    //   5063: ifnull +65 -> 5128
    //   5066: aload_1
    //   5067: astore 17
    //   5069: aload 22
    //   5071: bipush 9
    //   5073: iconst_2
    //   5074: anewarray 4	java/lang/Object
    //   5077: dup
    //   5078: iconst_0
    //   5079: lload 13
    //   5081: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5084: aastore
    //   5085: dup
    //   5086: iconst_1
    //   5087: aload 25
    //   5089: getfield 1162	com/estrongs/fs/b/u:c	J
    //   5092: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5095: aastore
    //   5096: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5099: aload_1
    //   5100: astore 17
    //   5102: aload 22
    //   5104: iconst_2
    //   5105: iconst_2
    //   5106: anewarray 4	java/lang/Object
    //   5109: dup
    //   5110: iconst_0
    //   5111: iload 5
    //   5113: i2l
    //   5114: lconst_0
    //   5115: ladd
    //   5116: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5119: aastore
    //   5120: dup
    //   5121: iconst_1
    //   5122: aload 20
    //   5124: aastore
    //   5125: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5128: aload 22
    //   5130: ifnull +1928 -> 7058
    //   5133: aload_1
    //   5134: astore 17
    //   5136: aload 22
    //   5138: invokevirtual 161	com/estrongs/a/a:taskStopped	()Z
    //   5141: ifeq +1917 -> 7058
    //   5144: iload 4
    //   5146: ifne +31 -> 5177
    //   5149: aload_1
    //   5150: astore 17
    //   5152: aload 22
    //   5154: iconst_2
    //   5155: iconst_2
    //   5156: anewarray 4	java/lang/Object
    //   5159: dup
    //   5160: iconst_0
    //   5161: lconst_0
    //   5162: lload 11
    //   5164: lsub
    //   5165: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5168: aastore
    //   5169: dup
    //   5170: iconst_1
    //   5171: aload 20
    //   5173: aastore
    //   5174: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5177: aload_1
    //   5178: astore 18
    //   5180: aload_1
    //   5181: ifnull +44 -> 5225
    //   5184: aload_1
    //   5185: astore 17
    //   5187: aload_1
    //   5188: invokevirtual 1225	java/io/OutputStream:close	()V
    //   5191: aconst_null
    //   5192: astore_1
    //   5193: aload_1
    //   5194: astore 17
    //   5196: aload 22
    //   5198: iconst_1
    //   5199: invokevirtual 1229	com/estrongs/a/a:enableTaskHide	(Z)V
    //   5202: aload_1
    //   5203: astore 17
    //   5205: aload_0
    //   5206: aload 19
    //   5208: aconst_null
    //   5209: invokevirtual 1200	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   5212: pop
    //   5213: aload_1
    //   5214: astore 17
    //   5216: aload 22
    //   5218: iconst_0
    //   5219: invokevirtual 1229	com/estrongs/a/a:enableTaskHide	(Z)V
    //   5222: aload_1
    //   5223: astore 18
    //   5225: aload 16
    //   5227: ifnull +12 -> 5239
    //   5230: aload 15
    //   5232: astore 17
    //   5234: aload 16
    //   5236: invokevirtual 1230	java/io/InputStream:close	()V
    //   5239: aload 18
    //   5241: ifnull +12 -> 5253
    //   5244: aload 15
    //   5246: astore 17
    //   5248: aload 18
    //   5250: invokevirtual 1225	java/io/OutputStream:close	()V
    //   5253: lload 11
    //   5255: lload 13
    //   5257: lcmp
    //   5258: ifge +228 -> 5486
    //   5261: iload 4
    //   5263: ifne +37 -> 5300
    //   5266: aload 22
    //   5268: ifnull +32 -> 5300
    //   5271: aload 15
    //   5273: astore 17
    //   5275: aload 22
    //   5277: iconst_2
    //   5278: iconst_2
    //   5279: anewarray 4	java/lang/Object
    //   5282: dup
    //   5283: iconst_0
    //   5284: lconst_0
    //   5285: lload 11
    //   5287: lsub
    //   5288: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5291: aastore
    //   5292: dup
    //   5293: iconst_1
    //   5294: aload 20
    //   5296: aastore
    //   5297: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5300: aload 15
    //   5302: ifnull +9 -> 5311
    //   5305: aload 15
    //   5307: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   5310: pop
    //   5311: aload 22
    //   5313: ifnull +52 -> 5365
    //   5316: aload 23
    //   5318: invokevirtual 1050	java/util/ArrayList:size	()I
    //   5321: ifle +44 -> 5365
    //   5324: aload 22
    //   5326: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5329: getfield 1063	com/estrongs/a/p:a	I
    //   5332: bipush 16
    //   5334: if_icmpeq +31 -> 5365
    //   5337: aload 22
    //   5339: iconst_4
    //   5340: iconst_1
    //   5341: anewarray 4	java/lang/Object
    //   5344: dup
    //   5345: iconst_0
    //   5346: aload 23
    //   5348: aastore
    //   5349: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5352: aload 23
    //   5354: iconst_0
    //   5355: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5358: checkcast 1011	com/estrongs/fs/b/u
    //   5361: iconst_1
    //   5362: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   5365: iconst_0
    //   5366: ireturn
    //   5367: astore_1
    //   5368: aload 15
    //   5370: astore 17
    //   5372: aload 18
    //   5374: instanceof 1232
    //   5377: ifeq -124 -> 5253
    //   5380: iload 4
    //   5382: ifne +37 -> 5419
    //   5385: aload 22
    //   5387: ifnull +32 -> 5419
    //   5390: aload 15
    //   5392: astore 17
    //   5394: aload 22
    //   5396: iconst_2
    //   5397: iconst_2
    //   5398: anewarray 4	java/lang/Object
    //   5401: dup
    //   5402: iconst_0
    //   5403: lconst_0
    //   5404: lload 11
    //   5406: lsub
    //   5407: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5410: aastore
    //   5411: dup
    //   5412: iconst_1
    //   5413: aload 20
    //   5415: aastore
    //   5416: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5419: aload 15
    //   5421: ifnull +9 -> 5430
    //   5424: aload 15
    //   5426: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   5429: pop
    //   5430: aload 22
    //   5432: ifnull +52 -> 5484
    //   5435: aload 23
    //   5437: invokevirtual 1050	java/util/ArrayList:size	()I
    //   5440: ifle +44 -> 5484
    //   5443: aload 22
    //   5445: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5448: getfield 1063	com/estrongs/a/p:a	I
    //   5451: bipush 16
    //   5453: if_icmpeq +31 -> 5484
    //   5456: aload 22
    //   5458: iconst_4
    //   5459: iconst_1
    //   5460: anewarray 4	java/lang/Object
    //   5463: dup
    //   5464: iconst_0
    //   5465: aload 23
    //   5467: aastore
    //   5468: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5471: aload 23
    //   5473: iconst_0
    //   5474: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5477: checkcast 1011	com/estrongs/fs/b/u
    //   5480: iconst_1
    //   5481: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   5484: iconst_0
    //   5485: ireturn
    //   5486: aload 22
    //   5488: ifnull +131 -> 5619
    //   5491: aload 15
    //   5493: astore 17
    //   5495: invokestatic 1235	com/estrongs/android/util/bk:l	()Z
    //   5498: ifeq +188 -> 5686
    //   5501: aload 15
    //   5503: astore 17
    //   5505: aload 22
    //   5507: instanceof 1018
    //   5510: ifeq +176 -> 5686
    //   5513: aload 15
    //   5515: astore 17
    //   5517: aload 19
    //   5519: invokestatic 1238	com/estrongs/android/util/ap:bJ	(Ljava/lang/String;)Z
    //   5522: ifeq +164 -> 5686
    //   5525: aload 15
    //   5527: astore 17
    //   5529: aload 22
    //   5531: checkcast 1018	com/estrongs/fs/b/r
    //   5534: getfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5537: ifnull +149 -> 5686
    //   5540: aload 15
    //   5542: astore 17
    //   5544: aload 22
    //   5546: bipush 13
    //   5548: iconst_2
    //   5549: anewarray 4	java/lang/Object
    //   5552: dup
    //   5553: iconst_0
    //   5554: aload 20
    //   5556: aastore
    //   5557: dup
    //   5558: iconst_1
    //   5559: aload 22
    //   5561: checkcast 1018	com/estrongs/fs/b/r
    //   5564: getfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5567: aastore
    //   5568: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5571: aload 15
    //   5573: astore 17
    //   5575: aload 22
    //   5577: checkcast 1018	com/estrongs/fs/b/r
    //   5580: aconst_null
    //   5581: putfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   5584: aload 15
    //   5586: astore 17
    //   5588: aload 19
    //   5590: invokestatic 1138	com/estrongs/fs/impl/media/b:a	(Ljava/lang/String;)Z
    //   5593: ifeq +26 -> 5619
    //   5596: aload 15
    //   5598: astore 17
    //   5600: aload 19
    //   5602: invokestatic 863	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   5605: ifeq +14 -> 5619
    //   5608: aload 15
    //   5610: astore 17
    //   5612: aload 24
    //   5614: aload 19
    //   5616: invokestatic 1143	com/estrongs/android/h/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   5619: aload 15
    //   5621: ifnull +9 -> 5630
    //   5624: aload 15
    //   5626: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   5629: pop
    //   5630: aload 22
    //   5632: ifnull +52 -> 5684
    //   5635: aload 23
    //   5637: invokevirtual 1050	java/util/ArrayList:size	()I
    //   5640: ifle +44 -> 5684
    //   5643: aload 22
    //   5645: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5648: getfield 1063	com/estrongs/a/p:a	I
    //   5651: bipush 16
    //   5653: if_icmpeq +31 -> 5684
    //   5656: aload 22
    //   5658: iconst_4
    //   5659: iconst_1
    //   5660: anewarray 4	java/lang/Object
    //   5663: dup
    //   5664: iconst_0
    //   5665: aload 23
    //   5667: aastore
    //   5668: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5671: aload 23
    //   5673: iconst_0
    //   5674: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5677: checkcast 1011	com/estrongs/fs/b/u
    //   5680: iconst_1
    //   5681: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   5684: iconst_0
    //   5685: ireturn
    //   5686: aload 15
    //   5688: astore 17
    //   5690: aload 22
    //   5692: bipush 13
    //   5694: iconst_2
    //   5695: anewarray 4	java/lang/Object
    //   5698: dup
    //   5699: iconst_0
    //   5700: aload 20
    //   5702: aastore
    //   5703: dup
    //   5704: iconst_1
    //   5705: aload 19
    //   5707: aastore
    //   5708: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5711: goto -127 -> 5584
    //   5714: aload_1
    //   5715: invokevirtual 1248	java/io/OutputStream:flush	()V
    //   5718: aload 16
    //   5720: ifnull +12 -> 5732
    //   5723: aload 15
    //   5725: astore 17
    //   5727: aload 16
    //   5729: invokevirtual 1230	java/io/InputStream:close	()V
    //   5732: aload_1
    //   5733: ifnull +11 -> 5744
    //   5736: aload 15
    //   5738: astore 17
    //   5740: aload_1
    //   5741: invokevirtual 1225	java/io/OutputStream:close	()V
    //   5744: lload 11
    //   5746: lload 13
    //   5748: lcmp
    //   5749: ifge +228 -> 5977
    //   5752: iload 4
    //   5754: ifne +37 -> 5791
    //   5757: aload 22
    //   5759: ifnull +32 -> 5791
    //   5762: aload 15
    //   5764: astore 17
    //   5766: aload 22
    //   5768: iconst_2
    //   5769: iconst_2
    //   5770: anewarray 4	java/lang/Object
    //   5773: dup
    //   5774: iconst_0
    //   5775: lconst_0
    //   5776: lload 11
    //   5778: lsub
    //   5779: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5782: aastore
    //   5783: dup
    //   5784: iconst_1
    //   5785: aload 20
    //   5787: aastore
    //   5788: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5791: aload 15
    //   5793: ifnull +9 -> 5802
    //   5796: aload 15
    //   5798: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   5801: pop
    //   5802: aload 22
    //   5804: ifnull +52 -> 5856
    //   5807: aload 23
    //   5809: invokevirtual 1050	java/util/ArrayList:size	()I
    //   5812: ifle +44 -> 5856
    //   5815: aload 22
    //   5817: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5820: getfield 1063	com/estrongs/a/p:a	I
    //   5823: bipush 16
    //   5825: if_icmpeq +31 -> 5856
    //   5828: aload 22
    //   5830: iconst_4
    //   5831: iconst_1
    //   5832: anewarray 4	java/lang/Object
    //   5835: dup
    //   5836: iconst_0
    //   5837: aload 23
    //   5839: aastore
    //   5840: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5843: aload 23
    //   5845: iconst_0
    //   5846: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5849: checkcast 1011	com/estrongs/fs/b/u
    //   5852: iconst_1
    //   5853: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   5856: iconst_0
    //   5857: ireturn
    //   5858: astore 16
    //   5860: aload 15
    //   5862: astore 17
    //   5864: aload_1
    //   5865: instanceof 1232
    //   5868: ifeq -124 -> 5744
    //   5871: iload 4
    //   5873: ifne +37 -> 5910
    //   5876: aload 22
    //   5878: ifnull +32 -> 5910
    //   5881: aload 15
    //   5883: astore 17
    //   5885: aload 22
    //   5887: iconst_2
    //   5888: iconst_2
    //   5889: anewarray 4	java/lang/Object
    //   5892: dup
    //   5893: iconst_0
    //   5894: lconst_0
    //   5895: lload 11
    //   5897: lsub
    //   5898: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   5901: aastore
    //   5902: dup
    //   5903: iconst_1
    //   5904: aload 20
    //   5906: aastore
    //   5907: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5910: aload 15
    //   5912: ifnull +9 -> 5921
    //   5915: aload 15
    //   5917: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   5920: pop
    //   5921: aload 22
    //   5923: ifnull +52 -> 5975
    //   5926: aload 23
    //   5928: invokevirtual 1050	java/util/ArrayList:size	()I
    //   5931: ifle +44 -> 5975
    //   5934: aload 22
    //   5936: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   5939: getfield 1063	com/estrongs/a/p:a	I
    //   5942: bipush 16
    //   5944: if_icmpeq +31 -> 5975
    //   5947: aload 22
    //   5949: iconst_4
    //   5950: iconst_1
    //   5951: anewarray 4	java/lang/Object
    //   5954: dup
    //   5955: iconst_0
    //   5956: aload 23
    //   5958: aastore
    //   5959: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   5962: aload 23
    //   5964: iconst_0
    //   5965: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   5968: checkcast 1011	com/estrongs/fs/b/u
    //   5971: iconst_1
    //   5972: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   5975: iconst_0
    //   5976: ireturn
    //   5977: aload 22
    //   5979: ifnull +131 -> 6110
    //   5982: aload 15
    //   5984: astore 17
    //   5986: invokestatic 1235	com/estrongs/android/util/bk:l	()Z
    //   5989: ifeq +272 -> 6261
    //   5992: aload 15
    //   5994: astore 17
    //   5996: aload 22
    //   5998: instanceof 1018
    //   6001: ifeq +260 -> 6261
    //   6004: aload 15
    //   6006: astore 17
    //   6008: aload 19
    //   6010: invokestatic 1238	com/estrongs/android/util/ap:bJ	(Ljava/lang/String;)Z
    //   6013: ifeq +248 -> 6261
    //   6016: aload 15
    //   6018: astore 17
    //   6020: aload 22
    //   6022: checkcast 1018	com/estrongs/fs/b/r
    //   6025: getfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6028: ifnull +233 -> 6261
    //   6031: aload 15
    //   6033: astore 17
    //   6035: aload 22
    //   6037: bipush 13
    //   6039: iconst_2
    //   6040: anewarray 4	java/lang/Object
    //   6043: dup
    //   6044: iconst_0
    //   6045: aload 20
    //   6047: aastore
    //   6048: dup
    //   6049: iconst_1
    //   6050: aload 22
    //   6052: checkcast 1018	com/estrongs/fs/b/r
    //   6055: getfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6058: aastore
    //   6059: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6062: aload 15
    //   6064: astore 17
    //   6066: aload 22
    //   6068: checkcast 1018	com/estrongs/fs/b/r
    //   6071: aconst_null
    //   6072: putfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6075: aload 15
    //   6077: astore 17
    //   6079: aload 19
    //   6081: invokestatic 1138	com/estrongs/fs/impl/media/b:a	(Ljava/lang/String;)Z
    //   6084: ifeq +26 -> 6110
    //   6087: aload 15
    //   6089: astore 17
    //   6091: aload 19
    //   6093: invokestatic 863	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   6096: ifeq +14 -> 6110
    //   6099: aload 15
    //   6101: astore 17
    //   6103: aload 24
    //   6105: aload 19
    //   6107: invokestatic 1143	com/estrongs/android/h/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   6110: aload 15
    //   6112: astore 17
    //   6114: aload 25
    //   6116: getfield 1249	com/estrongs/fs/b/u:d	Z
    //   6119: ifeq +122 -> 6241
    //   6122: aload 15
    //   6124: astore 17
    //   6126: aload 19
    //   6128: invokestatic 417	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   6131: ifeq +110 -> 6241
    //   6134: aload 22
    //   6136: ifnull +687 -> 6823
    //   6139: aload 15
    //   6141: astore 17
    //   6143: aload 22
    //   6145: instanceof 1018
    //   6148: ifeq +675 -> 6823
    //   6151: aload 15
    //   6153: astore 17
    //   6155: aload 22
    //   6157: checkcast 1018	com/estrongs/fs/b/r
    //   6160: astore_1
    //   6161: aload 15
    //   6163: astore 17
    //   6165: aload_1
    //   6166: aload_1
    //   6167: getfield 1252	com/estrongs/fs/b/r:w	I
    //   6170: aload 19
    //   6172: invokestatic 1256	com/estrongs/fs/a/a:g	(Ljava/lang/String;)I
    //   6175: ior
    //   6176: putfield 1252	com/estrongs/fs/b/r:w	I
    //   6179: aload 15
    //   6181: astore 17
    //   6183: invokestatic 1026	com/estrongs/android/util/bk:f	()Z
    //   6186: ifeq +532 -> 6718
    //   6189: aload 15
    //   6191: astore 17
    //   6193: invokestatic 1235	com/estrongs/android/util/bk:l	()Z
    //   6196: ifeq +25 -> 6221
    //   6199: aload 15
    //   6201: astore 17
    //   6203: aload 22
    //   6205: checkcast 1018	com/estrongs/fs/b/r
    //   6208: getfield 1259	com/estrongs/fs/b/r:t	Ljava/util/List;
    //   6211: aload 19
    //   6213: invokeinterface 1261 2 0
    //   6218: ifne +23 -> 6241
    //   6221: aload 15
    //   6223: astore 17
    //   6225: aload 22
    //   6227: checkcast 1018	com/estrongs/fs/b/r
    //   6230: getfield 1264	com/estrongs/fs/b/r:s	Ljava/util/List;
    //   6233: aload 19
    //   6235: invokeinterface 205 2 0
    //   6240: pop
    //   6241: aload 15
    //   6243: astore 17
    //   6245: aload_0
    //   6246: aload 19
    //   6248: aload 25
    //   6250: getfield 1014	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   6253: iload 9
    //   6255: invokespecial 1265	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/h;Z)V
    //   6258: goto +952 -> 7210
    //   6261: aload 15
    //   6263: astore 17
    //   6265: aload 22
    //   6267: bipush 13
    //   6269: iconst_2
    //   6270: anewarray 4	java/lang/Object
    //   6273: dup
    //   6274: iconst_0
    //   6275: aload 20
    //   6277: aastore
    //   6278: dup
    //   6279: iconst_1
    //   6280: aload 19
    //   6282: aastore
    //   6283: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6286: goto -211 -> 6075
    //   6289: astore 18
    //   6291: aload 16
    //   6293: ifnull +12 -> 6305
    //   6296: aload 15
    //   6298: astore 17
    //   6300: aload 16
    //   6302: invokevirtual 1230	java/io/InputStream:close	()V
    //   6305: aload_1
    //   6306: ifnull +11 -> 6317
    //   6309: aload 15
    //   6311: astore 17
    //   6313: aload_1
    //   6314: invokevirtual 1225	java/io/OutputStream:close	()V
    //   6317: lload 11
    //   6319: lload 13
    //   6321: lcmp
    //   6322: ifge +228 -> 6550
    //   6325: iload 4
    //   6327: ifne +37 -> 6364
    //   6330: aload 22
    //   6332: ifnull +32 -> 6364
    //   6335: aload 15
    //   6337: astore 17
    //   6339: aload 22
    //   6341: iconst_2
    //   6342: iconst_2
    //   6343: anewarray 4	java/lang/Object
    //   6346: dup
    //   6347: iconst_0
    //   6348: lconst_0
    //   6349: lload 11
    //   6351: lsub
    //   6352: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   6355: aastore
    //   6356: dup
    //   6357: iconst_1
    //   6358: aload 20
    //   6360: aastore
    //   6361: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6364: aload 15
    //   6366: ifnull +9 -> 6375
    //   6369: aload 15
    //   6371: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   6374: pop
    //   6375: aload 22
    //   6377: ifnull +52 -> 6429
    //   6380: aload 23
    //   6382: invokevirtual 1050	java/util/ArrayList:size	()I
    //   6385: ifle +44 -> 6429
    //   6388: aload 22
    //   6390: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   6393: getfield 1063	com/estrongs/a/p:a	I
    //   6396: bipush 16
    //   6398: if_icmpeq +31 -> 6429
    //   6401: aload 22
    //   6403: iconst_4
    //   6404: iconst_1
    //   6405: anewarray 4	java/lang/Object
    //   6408: dup
    //   6409: iconst_0
    //   6410: aload 23
    //   6412: aastore
    //   6413: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6416: aload 23
    //   6418: iconst_0
    //   6419: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   6422: checkcast 1011	com/estrongs/fs/b/u
    //   6425: iconst_1
    //   6426: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   6429: iconst_0
    //   6430: ireturn
    //   6431: astore 16
    //   6433: aload 15
    //   6435: astore 17
    //   6437: aload_1
    //   6438: instanceof 1232
    //   6441: ifeq -124 -> 6317
    //   6444: iload 4
    //   6446: ifne +37 -> 6483
    //   6449: aload 22
    //   6451: ifnull +32 -> 6483
    //   6454: aload 15
    //   6456: astore 17
    //   6458: aload 22
    //   6460: iconst_2
    //   6461: iconst_2
    //   6462: anewarray 4	java/lang/Object
    //   6465: dup
    //   6466: iconst_0
    //   6467: lconst_0
    //   6468: lload 11
    //   6470: lsub
    //   6471: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   6474: aastore
    //   6475: dup
    //   6476: iconst_1
    //   6477: aload 20
    //   6479: aastore
    //   6480: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6483: aload 15
    //   6485: ifnull +9 -> 6494
    //   6488: aload 15
    //   6490: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   6493: pop
    //   6494: aload 22
    //   6496: ifnull +52 -> 6548
    //   6499: aload 23
    //   6501: invokevirtual 1050	java/util/ArrayList:size	()I
    //   6504: ifle +44 -> 6548
    //   6507: aload 22
    //   6509: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   6512: getfield 1063	com/estrongs/a/p:a	I
    //   6515: bipush 16
    //   6517: if_icmpeq +31 -> 6548
    //   6520: aload 22
    //   6522: iconst_4
    //   6523: iconst_1
    //   6524: anewarray 4	java/lang/Object
    //   6527: dup
    //   6528: iconst_0
    //   6529: aload 23
    //   6531: aastore
    //   6532: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6535: aload 23
    //   6537: iconst_0
    //   6538: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   6541: checkcast 1011	com/estrongs/fs/b/u
    //   6544: iconst_1
    //   6545: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   6548: iconst_0
    //   6549: ireturn
    //   6550: aload 22
    //   6552: ifnull +131 -> 6683
    //   6555: aload 15
    //   6557: astore 17
    //   6559: invokestatic 1235	com/estrongs/android/util/bk:l	()Z
    //   6562: ifeq +128 -> 6690
    //   6565: aload 15
    //   6567: astore 17
    //   6569: aload 22
    //   6571: instanceof 1018
    //   6574: ifeq +116 -> 6690
    //   6577: aload 15
    //   6579: astore 17
    //   6581: aload 19
    //   6583: invokestatic 1238	com/estrongs/android/util/ap:bJ	(Ljava/lang/String;)Z
    //   6586: ifeq +104 -> 6690
    //   6589: aload 15
    //   6591: astore 17
    //   6593: aload 22
    //   6595: checkcast 1018	com/estrongs/fs/b/r
    //   6598: getfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6601: ifnull +89 -> 6690
    //   6604: aload 15
    //   6606: astore 17
    //   6608: aload 22
    //   6610: bipush 13
    //   6612: iconst_2
    //   6613: anewarray 4	java/lang/Object
    //   6616: dup
    //   6617: iconst_0
    //   6618: aload 20
    //   6620: aastore
    //   6621: dup
    //   6622: iconst_1
    //   6623: aload 22
    //   6625: checkcast 1018	com/estrongs/fs/b/r
    //   6628: getfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6631: aastore
    //   6632: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6635: aload 15
    //   6637: astore 17
    //   6639: aload 22
    //   6641: checkcast 1018	com/estrongs/fs/b/r
    //   6644: aconst_null
    //   6645: putfield 1241	com/estrongs/fs/b/r:u	Ljava/lang/String;
    //   6648: aload 15
    //   6650: astore 17
    //   6652: aload 19
    //   6654: invokestatic 1138	com/estrongs/fs/impl/media/b:a	(Ljava/lang/String;)Z
    //   6657: ifeq +26 -> 6683
    //   6660: aload 15
    //   6662: astore 17
    //   6664: aload 19
    //   6666: invokestatic 863	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   6669: ifeq +14 -> 6683
    //   6672: aload 15
    //   6674: astore 17
    //   6676: aload 24
    //   6678: aload 19
    //   6680: invokestatic 1143	com/estrongs/android/h/f:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   6683: aload 15
    //   6685: astore 17
    //   6687: aload 18
    //   6689: athrow
    //   6690: aload 15
    //   6692: astore 17
    //   6694: aload 22
    //   6696: bipush 13
    //   6698: iconst_2
    //   6699: anewarray 4	java/lang/Object
    //   6702: dup
    //   6703: iconst_0
    //   6704: aload 20
    //   6706: aastore
    //   6707: dup
    //   6708: iconst_1
    //   6709: aload 19
    //   6711: aastore
    //   6712: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6715: goto -67 -> 6648
    //   6718: aload 15
    //   6720: astore 17
    //   6722: aload 19
    //   6724: invokestatic 1138	com/estrongs/fs/impl/media/b:a	(Ljava/lang/String;)Z
    //   6727: ifeq +26 -> 6753
    //   6730: aload 15
    //   6732: astore 17
    //   6734: aload 22
    //   6736: checkcast 1018	com/estrongs/fs/b/r
    //   6739: getfield 1267	com/estrongs/fs/b/r:p	Ljava/util/List;
    //   6742: aload 19
    //   6744: invokeinterface 205 2 0
    //   6749: pop
    //   6750: goto -509 -> 6241
    //   6753: aload 15
    //   6755: astore 17
    //   6757: aload 19
    //   6759: invokestatic 1268	com/estrongs/fs/impl/media/b:b	(Ljava/lang/String;)Z
    //   6762: ifeq +26 -> 6788
    //   6765: aload 15
    //   6767: astore 17
    //   6769: aload 22
    //   6771: checkcast 1018	com/estrongs/fs/b/r
    //   6774: getfield 1270	com/estrongs/fs/b/r:q	Ljava/util/List;
    //   6777: aload 19
    //   6779: invokeinterface 205 2 0
    //   6784: pop
    //   6785: goto -544 -> 6241
    //   6788: aload 15
    //   6790: astore 17
    //   6792: aload 19
    //   6794: invokestatic 1271	com/estrongs/fs/impl/media/b:c	(Ljava/lang/String;)Z
    //   6797: ifeq -556 -> 6241
    //   6800: aload 15
    //   6802: astore 17
    //   6804: aload 22
    //   6806: checkcast 1018	com/estrongs/fs/b/r
    //   6809: getfield 1273	com/estrongs/fs/b/r:r	Ljava/util/List;
    //   6812: aload 19
    //   6814: invokeinterface 205 2 0
    //   6819: pop
    //   6820: goto -579 -> 6241
    //   6823: aload 15
    //   6825: astore 17
    //   6827: aload 19
    //   6829: invokestatic 1275	com/estrongs/fs/impl/local/i:j	(Ljava/lang/String;)V
    //   6832: goto -591 -> 6241
    //   6835: iload_3
    //   6836: ifne +44 -> 6880
    //   6839: aload 22
    //   6841: ifnull +28 -> 6869
    //   6844: aload 15
    //   6846: astore 17
    //   6848: aload 22
    //   6850: iconst_1
    //   6851: iconst_2
    //   6852: anewarray 4	java/lang/Object
    //   6855: dup
    //   6856: iconst_0
    //   6857: lconst_1
    //   6858: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   6861: aastore
    //   6862: dup
    //   6863: iconst_1
    //   6864: aload_1
    //   6865: aastore
    //   6866: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6869: aload 15
    //   6871: astore 17
    //   6873: aload 23
    //   6875: iconst_0
    //   6876: invokevirtual 1052	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   6879: pop
    //   6880: aload 15
    //   6882: ifnull +9 -> 6891
    //   6885: aload 15
    //   6887: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   6890: pop
    //   6891: aload 22
    //   6893: ifnull +52 -> 6945
    //   6896: aload 23
    //   6898: invokevirtual 1050	java/util/ArrayList:size	()I
    //   6901: ifle +44 -> 6945
    //   6904: aload 22
    //   6906: invokevirtual 1059	com/estrongs/a/a:getTaskResult	()Lcom/estrongs/a/p;
    //   6909: getfield 1063	com/estrongs/a/p:a	I
    //   6912: bipush 16
    //   6914: if_icmpeq +31 -> 6945
    //   6917: aload 22
    //   6919: iconst_4
    //   6920: iconst_1
    //   6921: anewarray 4	java/lang/Object
    //   6924: dup
    //   6925: iconst_0
    //   6926: aload 23
    //   6928: aastore
    //   6929: invokevirtual 175	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   6932: aload 23
    //   6934: iconst_0
    //   6935: invokevirtual 1064	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   6938: checkcast 1011	com/estrongs/fs/b/u
    //   6941: iconst_1
    //   6942: putfield 1066	com/estrongs/fs/b/u:e	Z
    //   6945: iconst_1
    //   6946: ireturn
    //   6947: new 925	com/estrongs/a/q
    //   6950: dup
    //   6951: aload_0
    //   6952: getfield 35	com/estrongs/fs/d:d	Landroid/content/Context;
    //   6955: ldc_w 1098
    //   6958: invokevirtual 64	android/content/Context:getString	(I)Ljava/lang/String;
    //   6961: iconst_1
    //   6962: anewarray 4	java/lang/Object
    //   6965: dup
    //   6966: iconst_0
    //   6967: ldc_w 1166
    //   6970: aastore
    //   6971: invokestatic 1104	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   6974: aload 15
    //   6976: invokespecial 930	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   6979: astore 15
    //   6981: goto -6387 -> 594
    //   6984: astore 16
    //   6986: goto -2505 -> 4481
    //   6989: astore 17
    //   6991: goto -1798 -> 5193
    //   6994: astore_1
    //   6995: goto -1756 -> 5239
    //   6998: astore 16
    //   7000: goto -1268 -> 5732
    //   7003: astore 16
    //   7005: goto -700 -> 6305
    //   7008: astore_1
    //   7009: aconst_null
    //   7010: astore 17
    //   7012: goto -2052 -> 4960
    //   7015: astore 15
    //   7017: aload_1
    //   7018: astore 17
    //   7020: aload 15
    //   7022: astore_1
    //   7023: goto -2063 -> 4960
    //   7026: astore_1
    //   7027: aconst_null
    //   7028: astore 15
    //   7030: goto -4038 -> 2992
    //   7033: astore 15
    //   7035: aload 17
    //   7037: astore_1
    //   7038: goto -6469 -> 569
    //   7041: astore 18
    //   7043: goto -752 -> 6291
    //   7046: astore 18
    //   7048: aload 17
    //   7050: astore_1
    //   7051: goto -760 -> 6291
    //   7054: astore_1
    //   7055: goto -3206 -> 3849
    //   7058: goto -2679 -> 4379
    //   7061: goto -2594 -> 4467
    //   7064: aload_1
    //   7065: astore 17
    //   7067: aload 16
    //   7069: astore_1
    //   7070: aload 17
    //   7072: astore 16
    //   7074: goto -3295 -> 3779
    //   7077: aconst_null
    //   7078: astore 17
    //   7080: aload_1
    //   7081: astore 16
    //   7083: aload 17
    //   7085: astore_1
    //   7086: goto -3307 -> 3779
    //   7089: iload_3
    //   7090: istore 4
    //   7092: iload_2
    //   7093: istore 5
    //   7095: iconst_0
    //   7096: istore_3
    //   7097: aload 20
    //   7099: astore_1
    //   7100: iload 4
    //   7102: istore_2
    //   7103: iload 5
    //   7105: istore 4
    //   7107: goto -6842 -> 265
    //   7110: aload_1
    //   7111: astore 19
    //   7113: goto -4769 -> 2344
    //   7116: goto +88 -> 7204
    //   7119: iconst_0
    //   7120: istore 4
    //   7122: iload_3
    //   7123: istore_2
    //   7124: iload 5
    //   7126: istore_3
    //   7127: goto -5899 -> 1228
    //   7130: iconst_0
    //   7131: istore_3
    //   7132: aload 20
    //   7134: astore_1
    //   7135: goto -6870 -> 265
    //   7138: iload 4
    //   7140: istore_3
    //   7141: goto -6234 -> 907
    //   7144: iconst_1
    //   7145: istore 7
    //   7147: iload_2
    //   7148: istore_3
    //   7149: iload 4
    //   7151: istore 5
    //   7153: iload 7
    //   7155: istore_2
    //   7156: iload_3
    //   7157: istore 4
    //   7159: iload 5
    //   7161: istore_3
    //   7162: goto +18 -> 7180
    //   7165: goto -6483 -> 682
    //   7168: iconst_0
    //   7169: istore 6
    //   7171: goto -6927 -> 244
    //   7174: aconst_null
    //   7175: astore 15
    //   7177: goto -7010 -> 167
    //   7180: iload_2
    //   7181: istore 7
    //   7183: iload 4
    //   7185: istore_2
    //   7186: iload_3
    //   7187: istore 4
    //   7189: goto -6250 -> 939
    //   7192: iconst_0
    //   7193: istore 9
    //   7195: goto -6368 -> 827
    //   7198: iconst_0
    //   7199: istore 4
    //   7201: goto -6262 -> 939
    //   7204: iconst_0
    //   7205: istore 4
    //   7207: goto -5153 -> 2054
    //   7210: iload_3
    //   7211: istore 4
    //   7213: iload_2
    //   7214: istore 5
    //   7216: iconst_0
    //   7217: istore_3
    //   7218: aload 20
    //   7220: astore_1
    //   7221: iload 4
    //   7223: istore_2
    //   7224: iload 5
    //   7226: istore 4
    //   7228: goto -6963 -> 265
    //   7231: iload 6
    //   7233: ifeq -4984 -> 2249
    //   7236: iload 8
    //   7238: ifeq -4989 -> 2249
    //   7241: goto -4992 -> 2249
    //   7244: iconst_0
    //   7245: istore 4
    //   7247: goto -4397 -> 2850
    //   7250: lconst_0
    //   7251: lstore 11
    //   7253: goto -3679 -> 3574
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	7256	0	this	d
    //   0	7256	1	paramu	com.estrongs.fs.b.u
    //   176	7048	2	i	int
    //   261	6957	3	j	int
    //   258	6988	4	k	int
    //   683	6542	5	m	int
    //   242	6990	6	n	int
    //   705	6477	7	i1	int
    //   341	6896	8	bool1	boolean
    //   825	6369	9	bool2	boolean
    //   1573	18	10	bool3	boolean
    //   2263	4989	11	l1	long
    //   2267	4053	13	l2	long
    //   45	6935	15	localObject1	Object
    //   7015	6	15	localObject2	Object
    //   7028	1	15	localObject3	Object
    //   7033	1	15	localFileSystemException1	FileSystemException
    //   7175	1	15	localObject4	Object
    //   79	184	16	localObject5	Object
    //   560	6	16	localFileSystemException2	FileSystemException
    //   574	3903	16	localObject6	Object
    //   4612	1116	16	localException1	Exception
    //   5858	443	16	localException2	Exception
    //   6431	1	16	localException3	Exception
    //   6984	1	16	localException4	Exception
    //   6998	1	16	localException5	Exception
    //   7003	65	16	localException6	Exception
    //   7072	10	16	localObject7	Object
    //   139	4375	17	localObject8	Object
    //   4607	1	17	localException7	Exception
    //   4616	2256	17	localObject9	Object
    //   6989	1	17	localException8	Exception
    //   7010	74	17	localu1	com.estrongs.fs.b.u
    //   38	5335	18	localObject10	Object
    //   6289	399	18	localObject11	Object
    //   7041	1	18	localObject12	Object
    //   7046	1	18	localObject13	Object
    //   10	7102	19	localObject14	Object
    //   471	6748	20	str1	String
    //   3119	1051	21	localObject15	Object
    //   15	6903	22	locala	com.estrongs.a.a
    //   136	6797	23	localArrayList	ArrayList
    //   4	6673	24	localh	h
    //   455	5794	25	localu2	com.estrongs.fs.b.u
    //   3387	221	26	str2	String
    // Exception table:
    //   from	to	target	type
    //   171	177	560	com/estrongs/fs/FileSystemException
    //   181	190	560	com/estrongs/fs/FileSystemException
    //   205	221	560	com/estrongs/fs/FileSystemException
    //   225	241	560	com/estrongs/fs/FileSystemException
    //   248	255	560	com/estrongs/fs/FileSystemException
    //   269	278	560	com/estrongs/fs/FileSystemException
    //   295	316	560	com/estrongs/fs/FileSystemException
    //   320	327	560	com/estrongs/fs/FileSystemException
    //   336	343	560	com/estrongs/fs/FileSystemException
    //   446	457	560	com/estrongs/fs/FileSystemException
    //   461	473	560	com/estrongs/fs/FileSystemException
    //   477	483	560	com/estrongs/fs/FileSystemException
    //   487	496	560	com/estrongs/fs/FileSystemException
    //   508	539	560	com/estrongs/fs/FileSystemException
    //   543	554	560	com/estrongs/fs/FileSystemException
    //   716	724	560	com/estrongs/fs/FileSystemException
    //   728	735	560	com/estrongs/fs/FileSystemException
    //   739	746	560	com/estrongs/fs/FileSystemException
    //   750	766	560	com/estrongs/fs/FileSystemException
    //   770	783	560	com/estrongs/fs/FileSystemException
    //   787	799	560	com/estrongs/fs/FileSystemException
    //   803	824	560	com/estrongs/fs/FileSystemException
    //   831	873	560	com/estrongs/fs/FileSystemException
    //   884	892	560	com/estrongs/fs/FileSystemException
    //   896	905	560	com/estrongs/fs/FileSystemException
    //   914	923	560	com/estrongs/fs/FileSystemException
    //   930	936	560	com/estrongs/fs/FileSystemException
    //   954	985	560	com/estrongs/fs/FileSystemException
    //   989	1000	560	com/estrongs/fs/FileSystemException
    //   1004	1012	560	com/estrongs/fs/FileSystemException
    //   1016	1027	560	com/estrongs/fs/FileSystemException
    //   1031	1046	560	com/estrongs/fs/FileSystemException
    //   1050	1066	560	com/estrongs/fs/FileSystemException
    //   1078	1085	560	com/estrongs/fs/FileSystemException
    //   1115	1126	560	com/estrongs/fs/FileSystemException
    //   1130	1137	560	com/estrongs/fs/FileSystemException
    //   1247	1262	560	com/estrongs/fs/FileSystemException
    //   1266	1305	560	com/estrongs/fs/FileSystemException
    //   1314	1323	560	com/estrongs/fs/FileSystemException
    //   1416	1426	560	com/estrongs/fs/FileSystemException
    //   1435	1446	560	com/estrongs/fs/FileSystemException
    //   1450	1459	560	com/estrongs/fs/FileSystemException
    //   1530	1569	560	com/estrongs/fs/FileSystemException
    //   1583	1590	560	com/estrongs/fs/FileSystemException
    //   1598	1605	560	com/estrongs/fs/FileSystemException
    //   1612	1633	560	com/estrongs/fs/FileSystemException
    //   1637	1662	560	com/estrongs/fs/FileSystemException
    //   1733	1749	560	com/estrongs/fs/FileSystemException
    //   1753	1769	560	com/estrongs/fs/FileSystemException
    //   1845	1853	560	com/estrongs/fs/FileSystemException
    //   1862	1872	560	com/estrongs/fs/FileSystemException
    //   2016	2026	560	com/estrongs/fs/FileSystemException
    //   2030	2051	560	com/estrongs/fs/FileSystemException
    //   2058	2070	560	com/estrongs/fs/FileSystemException
    //   2074	2137	560	com/estrongs/fs/FileSystemException
    //   2150	2156	560	com/estrongs/fs/FileSystemException
    //   2160	2169	560	com/estrongs/fs/FileSystemException
    //   2173	2180	560	com/estrongs/fs/FileSystemException
    //   2184	2195	560	com/estrongs/fs/FileSystemException
    //   2202	2212	560	com/estrongs/fs/FileSystemException
    //   2216	2229	560	com/estrongs/fs/FileSystemException
    //   2233	2246	560	com/estrongs/fs/FileSystemException
    //   2253	2265	560	com/estrongs/fs/FileSystemException
    //   2280	2288	560	com/estrongs/fs/FileSystemException
    //   2296	2301	560	com/estrongs/fs/FileSystemException
    //   2313	2341	560	com/estrongs/fs/FileSystemException
    //   2353	2375	560	com/estrongs/fs/FileSystemException
    //   2379	2392	560	com/estrongs/fs/FileSystemException
    //   2401	2432	560	com/estrongs/fs/FileSystemException
    //   2436	2463	560	com/estrongs/fs/FileSystemException
    //   2467	2488	560	com/estrongs/fs/FileSystemException
    //   2492	2500	560	com/estrongs/fs/FileSystemException
    //   2504	2512	560	com/estrongs/fs/FileSystemException
    //   2516	2523	560	com/estrongs/fs/FileSystemException
    //   2548	2565	560	com/estrongs/fs/FileSystemException
    //   2569	2603	560	com/estrongs/fs/FileSystemException
    //   2679	2690	560	com/estrongs/fs/FileSystemException
    //   2694	2728	560	com/estrongs/fs/FileSystemException
    //   2807	2817	560	com/estrongs/fs/FileSystemException
    //   2826	2834	560	com/estrongs/fs/FileSystemException
    //   2838	2847	560	com/estrongs/fs/FileSystemException
    //   2859	2870	560	com/estrongs/fs/FileSystemException
    //   2879	2889	560	com/estrongs/fs/FileSystemException
    //   2898	2930	560	com/estrongs/fs/FileSystemException
    //   2939	2950	560	com/estrongs/fs/FileSystemException
    //   2982	2988	560	com/estrongs/fs/FileSystemException
    //   3112	3121	560	com/estrongs/fs/FileSystemException
    //   3161	3171	560	com/estrongs/fs/FileSystemException
    //   3175	3186	560	com/estrongs/fs/FileSystemException
    //   3190	3201	560	com/estrongs/fs/FileSystemException
    //   3205	3211	560	com/estrongs/fs/FileSystemException
    //   3220	3248	560	com/estrongs/fs/FileSystemException
    //   3261	3305	560	com/estrongs/fs/FileSystemException
    //   3383	3389	560	com/estrongs/fs/FileSystemException
    //   3401	3412	560	com/estrongs/fs/FileSystemException
    //   3416	3437	560	com/estrongs/fs/FileSystemException
    //   3441	3448	560	com/estrongs/fs/FileSystemException
    //   3452	3457	560	com/estrongs/fs/FileSystemException
    //   3528	3541	560	com/estrongs/fs/FileSystemException
    //   3545	3558	560	com/estrongs/fs/FileSystemException
    //   3567	3574	560	com/estrongs/fs/FileSystemException
    //   3578	3589	560	com/estrongs/fs/FileSystemException
    //   3607	3618	560	com/estrongs/fs/FileSystemException
    //   3622	3635	560	com/estrongs/fs/FileSystemException
    //   3639	3644	560	com/estrongs/fs/FileSystemException
    //   3715	3723	560	com/estrongs/fs/FileSystemException
    //   3727	3735	560	com/estrongs/fs/FileSystemException
    //   3739	3747	560	com/estrongs/fs/FileSystemException
    //   3760	3773	560	com/estrongs/fs/FileSystemException
    //   3792	3807	560	com/estrongs/fs/FileSystemException
    //   3827	3837	560	com/estrongs/fs/FileSystemException
    //   3841	3849	560	com/estrongs/fs/FileSystemException
    //   3920	3928	560	com/estrongs/fs/FileSystemException
    //   3935	3943	560	com/estrongs/fs/FileSystemException
    //   3952	3974	560	com/estrongs/fs/FileSystemException
    //   3982	3991	560	com/estrongs/fs/FileSystemException
    //   3995	4002	560	com/estrongs/fs/FileSystemException
    //   4145	4150	560	com/estrongs/fs/FileSystemException
    //   4154	4166	560	com/estrongs/fs/FileSystemException
    //   4179	4186	560	com/estrongs/fs/FileSystemException
    //   4198	4208	560	com/estrongs/fs/FileSystemException
    //   4212	4222	560	com/estrongs/fs/FileSystemException
    //   4241	4269	560	com/estrongs/fs/FileSystemException
    //   4273	4279	560	com/estrongs/fs/FileSystemException
    //   4283	4292	560	com/estrongs/fs/FileSystemException
    //   4296	4305	560	com/estrongs/fs/FileSystemException
    //   4312	4326	560	com/estrongs/fs/FileSystemException
    //   4338	4368	560	com/estrongs/fs/FileSystemException
    //   4372	4379	560	com/estrongs/fs/FileSystemException
    //   4476	4481	560	com/estrongs/fs/FileSystemException
    //   4489	4493	560	com/estrongs/fs/FileSystemException
    //   4515	4540	560	com/estrongs/fs/FileSystemException
    //   4618	4625	560	com/estrongs/fs/FileSystemException
    //   4639	4664	560	com/estrongs/fs/FileSystemException
    //   4740	4746	560	com/estrongs/fs/FileSystemException
    //   4750	4758	560	com/estrongs/fs/FileSystemException
    //   4762	4770	560	com/estrongs/fs/FileSystemException
    //   4774	4785	560	com/estrongs/fs/FileSystemException
    //   4789	4816	560	com/estrongs/fs/FileSystemException
    //   4820	4829	560	com/estrongs/fs/FileSystemException
    //   4833	4841	560	com/estrongs/fs/FileSystemException
    //   4845	4853	560	com/estrongs/fs/FileSystemException
    //   4857	4864	560	com/estrongs/fs/FileSystemException
    //   4935	4956	560	com/estrongs/fs/FileSystemException
    //   5234	5239	560	com/estrongs/fs/FileSystemException
    //   5248	5253	560	com/estrongs/fs/FileSystemException
    //   5275	5300	560	com/estrongs/fs/FileSystemException
    //   5372	5380	560	com/estrongs/fs/FileSystemException
    //   5394	5419	560	com/estrongs/fs/FileSystemException
    //   5495	5501	560	com/estrongs/fs/FileSystemException
    //   5505	5513	560	com/estrongs/fs/FileSystemException
    //   5517	5525	560	com/estrongs/fs/FileSystemException
    //   5529	5540	560	com/estrongs/fs/FileSystemException
    //   5544	5571	560	com/estrongs/fs/FileSystemException
    //   5575	5584	560	com/estrongs/fs/FileSystemException
    //   5588	5596	560	com/estrongs/fs/FileSystemException
    //   5600	5608	560	com/estrongs/fs/FileSystemException
    //   5612	5619	560	com/estrongs/fs/FileSystemException
    //   5690	5711	560	com/estrongs/fs/FileSystemException
    //   5727	5732	560	com/estrongs/fs/FileSystemException
    //   5740	5744	560	com/estrongs/fs/FileSystemException
    //   5766	5791	560	com/estrongs/fs/FileSystemException
    //   5864	5871	560	com/estrongs/fs/FileSystemException
    //   5885	5910	560	com/estrongs/fs/FileSystemException
    //   5986	5992	560	com/estrongs/fs/FileSystemException
    //   5996	6004	560	com/estrongs/fs/FileSystemException
    //   6008	6016	560	com/estrongs/fs/FileSystemException
    //   6020	6031	560	com/estrongs/fs/FileSystemException
    //   6035	6062	560	com/estrongs/fs/FileSystemException
    //   6066	6075	560	com/estrongs/fs/FileSystemException
    //   6079	6087	560	com/estrongs/fs/FileSystemException
    //   6091	6099	560	com/estrongs/fs/FileSystemException
    //   6103	6110	560	com/estrongs/fs/FileSystemException
    //   6114	6122	560	com/estrongs/fs/FileSystemException
    //   6126	6134	560	com/estrongs/fs/FileSystemException
    //   6143	6151	560	com/estrongs/fs/FileSystemException
    //   6155	6161	560	com/estrongs/fs/FileSystemException
    //   6165	6179	560	com/estrongs/fs/FileSystemException
    //   6183	6189	560	com/estrongs/fs/FileSystemException
    //   6193	6199	560	com/estrongs/fs/FileSystemException
    //   6203	6221	560	com/estrongs/fs/FileSystemException
    //   6225	6241	560	com/estrongs/fs/FileSystemException
    //   6245	6258	560	com/estrongs/fs/FileSystemException
    //   6265	6286	560	com/estrongs/fs/FileSystemException
    //   6300	6305	560	com/estrongs/fs/FileSystemException
    //   6313	6317	560	com/estrongs/fs/FileSystemException
    //   6339	6364	560	com/estrongs/fs/FileSystemException
    //   6437	6444	560	com/estrongs/fs/FileSystemException
    //   6458	6483	560	com/estrongs/fs/FileSystemException
    //   6559	6565	560	com/estrongs/fs/FileSystemException
    //   6569	6577	560	com/estrongs/fs/FileSystemException
    //   6581	6589	560	com/estrongs/fs/FileSystemException
    //   6593	6604	560	com/estrongs/fs/FileSystemException
    //   6608	6635	560	com/estrongs/fs/FileSystemException
    //   6639	6648	560	com/estrongs/fs/FileSystemException
    //   6652	6660	560	com/estrongs/fs/FileSystemException
    //   6664	6672	560	com/estrongs/fs/FileSystemException
    //   6676	6683	560	com/estrongs/fs/FileSystemException
    //   6687	6690	560	com/estrongs/fs/FileSystemException
    //   6694	6715	560	com/estrongs/fs/FileSystemException
    //   6722	6730	560	com/estrongs/fs/FileSystemException
    //   6734	6750	560	com/estrongs/fs/FileSystemException
    //   6757	6765	560	com/estrongs/fs/FileSystemException
    //   6769	6785	560	com/estrongs/fs/FileSystemException
    //   6792	6800	560	com/estrongs/fs/FileSystemException
    //   6804	6820	560	com/estrongs/fs/FileSystemException
    //   6827	6832	560	com/estrongs/fs/FileSystemException
    //   6848	6869	560	com/estrongs/fs/FileSystemException
    //   6873	6880	560	com/estrongs/fs/FileSystemException
    //   1247	1262	1411	com/estrongs/android/pop/netfs/NetFsException
    //   1266	1305	1411	com/estrongs/android/pop/netfs/NetFsException
    //   1314	1323	1411	com/estrongs/android/pop/netfs/NetFsException
    //   1862	1872	1944	java/lang/Exception
    //   171	177	2991	java/lang/Exception
    //   181	190	2991	java/lang/Exception
    //   205	221	2991	java/lang/Exception
    //   225	241	2991	java/lang/Exception
    //   248	255	2991	java/lang/Exception
    //   269	278	2991	java/lang/Exception
    //   295	316	2991	java/lang/Exception
    //   320	327	2991	java/lang/Exception
    //   336	343	2991	java/lang/Exception
    //   446	457	2991	java/lang/Exception
    //   461	473	2991	java/lang/Exception
    //   477	483	2991	java/lang/Exception
    //   487	496	2991	java/lang/Exception
    //   508	539	2991	java/lang/Exception
    //   543	554	2991	java/lang/Exception
    //   716	724	2991	java/lang/Exception
    //   728	735	2991	java/lang/Exception
    //   739	746	2991	java/lang/Exception
    //   750	766	2991	java/lang/Exception
    //   770	783	2991	java/lang/Exception
    //   787	799	2991	java/lang/Exception
    //   803	824	2991	java/lang/Exception
    //   831	873	2991	java/lang/Exception
    //   884	892	2991	java/lang/Exception
    //   896	905	2991	java/lang/Exception
    //   914	923	2991	java/lang/Exception
    //   930	936	2991	java/lang/Exception
    //   954	985	2991	java/lang/Exception
    //   989	1000	2991	java/lang/Exception
    //   1004	1012	2991	java/lang/Exception
    //   1016	1027	2991	java/lang/Exception
    //   1031	1046	2991	java/lang/Exception
    //   1050	1066	2991	java/lang/Exception
    //   1078	1085	2991	java/lang/Exception
    //   1115	1126	2991	java/lang/Exception
    //   1130	1137	2991	java/lang/Exception
    //   1247	1262	2991	java/lang/Exception
    //   1266	1305	2991	java/lang/Exception
    //   1314	1323	2991	java/lang/Exception
    //   1416	1426	2991	java/lang/Exception
    //   1435	1446	2991	java/lang/Exception
    //   1450	1459	2991	java/lang/Exception
    //   1530	1569	2991	java/lang/Exception
    //   1583	1590	2991	java/lang/Exception
    //   1598	1605	2991	java/lang/Exception
    //   1612	1633	2991	java/lang/Exception
    //   1637	1662	2991	java/lang/Exception
    //   1733	1749	2991	java/lang/Exception
    //   1753	1769	2991	java/lang/Exception
    //   1845	1853	2991	java/lang/Exception
    //   2016	2026	2991	java/lang/Exception
    //   2030	2051	2991	java/lang/Exception
    //   2058	2070	2991	java/lang/Exception
    //   2074	2137	2991	java/lang/Exception
    //   2150	2156	2991	java/lang/Exception
    //   2160	2169	2991	java/lang/Exception
    //   2173	2180	2991	java/lang/Exception
    //   2184	2195	2991	java/lang/Exception
    //   2202	2212	2991	java/lang/Exception
    //   2216	2229	2991	java/lang/Exception
    //   2233	2246	2991	java/lang/Exception
    //   2253	2265	2991	java/lang/Exception
    //   2280	2288	2991	java/lang/Exception
    //   2296	2301	2991	java/lang/Exception
    //   2313	2341	2991	java/lang/Exception
    //   2353	2375	2991	java/lang/Exception
    //   2379	2392	2991	java/lang/Exception
    //   2401	2432	2991	java/lang/Exception
    //   2436	2463	2991	java/lang/Exception
    //   2467	2488	2991	java/lang/Exception
    //   2492	2500	2991	java/lang/Exception
    //   2504	2512	2991	java/lang/Exception
    //   2516	2523	2991	java/lang/Exception
    //   2548	2565	2991	java/lang/Exception
    //   2569	2603	2991	java/lang/Exception
    //   2679	2690	2991	java/lang/Exception
    //   2694	2728	2991	java/lang/Exception
    //   2807	2817	2991	java/lang/Exception
    //   2826	2834	2991	java/lang/Exception
    //   2838	2847	2991	java/lang/Exception
    //   2859	2870	2991	java/lang/Exception
    //   2879	2889	2991	java/lang/Exception
    //   2898	2930	2991	java/lang/Exception
    //   2939	2950	2991	java/lang/Exception
    //   2982	2988	2991	java/lang/Exception
    //   3112	3121	2991	java/lang/Exception
    //   3130	3137	2991	java/lang/Exception
    //   3141	3152	2991	java/lang/Exception
    //   3161	3171	2991	java/lang/Exception
    //   3175	3186	2991	java/lang/Exception
    //   3190	3201	2991	java/lang/Exception
    //   3205	3211	2991	java/lang/Exception
    //   3220	3248	2991	java/lang/Exception
    //   3261	3305	2991	java/lang/Exception
    //   3383	3389	2991	java/lang/Exception
    //   3401	3412	2991	java/lang/Exception
    //   3416	3437	2991	java/lang/Exception
    //   3441	3448	2991	java/lang/Exception
    //   3452	3457	2991	java/lang/Exception
    //   3528	3541	2991	java/lang/Exception
    //   3545	3558	2991	java/lang/Exception
    //   3567	3574	2991	java/lang/Exception
    //   3578	3589	2991	java/lang/Exception
    //   3607	3618	2991	java/lang/Exception
    //   3622	3635	2991	java/lang/Exception
    //   3639	3644	2991	java/lang/Exception
    //   3715	3723	2991	java/lang/Exception
    //   3727	3735	2991	java/lang/Exception
    //   3739	3747	2991	java/lang/Exception
    //   3760	3773	2991	java/lang/Exception
    //   3792	3807	2991	java/lang/Exception
    //   3920	3928	2991	java/lang/Exception
    //   3935	3943	2991	java/lang/Exception
    //   3952	3974	2991	java/lang/Exception
    //   3982	3991	2991	java/lang/Exception
    //   3995	4002	2991	java/lang/Exception
    //   4145	4150	2991	java/lang/Exception
    //   4154	4166	2991	java/lang/Exception
    //   4179	4186	2991	java/lang/Exception
    //   4198	4208	2991	java/lang/Exception
    //   4212	4222	2991	java/lang/Exception
    //   4241	4269	2991	java/lang/Exception
    //   4273	4279	2991	java/lang/Exception
    //   4283	4292	2991	java/lang/Exception
    //   4296	4305	2991	java/lang/Exception
    //   4312	4326	2991	java/lang/Exception
    //   4338	4368	2991	java/lang/Exception
    //   4372	4379	2991	java/lang/Exception
    //   4515	4540	2991	java/lang/Exception
    //   4618	4625	2991	java/lang/Exception
    //   4639	4664	2991	java/lang/Exception
    //   4740	4746	2991	java/lang/Exception
    //   4750	4758	2991	java/lang/Exception
    //   4762	4770	2991	java/lang/Exception
    //   4774	4785	2991	java/lang/Exception
    //   4789	4816	2991	java/lang/Exception
    //   4820	4829	2991	java/lang/Exception
    //   4833	4841	2991	java/lang/Exception
    //   4845	4853	2991	java/lang/Exception
    //   4857	4864	2991	java/lang/Exception
    //   4935	4956	2991	java/lang/Exception
    //   5275	5300	2991	java/lang/Exception
    //   5372	5380	2991	java/lang/Exception
    //   5394	5419	2991	java/lang/Exception
    //   5495	5501	2991	java/lang/Exception
    //   5505	5513	2991	java/lang/Exception
    //   5517	5525	2991	java/lang/Exception
    //   5529	5540	2991	java/lang/Exception
    //   5544	5571	2991	java/lang/Exception
    //   5575	5584	2991	java/lang/Exception
    //   5588	5596	2991	java/lang/Exception
    //   5600	5608	2991	java/lang/Exception
    //   5612	5619	2991	java/lang/Exception
    //   5690	5711	2991	java/lang/Exception
    //   5766	5791	2991	java/lang/Exception
    //   5864	5871	2991	java/lang/Exception
    //   5885	5910	2991	java/lang/Exception
    //   5986	5992	2991	java/lang/Exception
    //   5996	6004	2991	java/lang/Exception
    //   6008	6016	2991	java/lang/Exception
    //   6020	6031	2991	java/lang/Exception
    //   6035	6062	2991	java/lang/Exception
    //   6066	6075	2991	java/lang/Exception
    //   6079	6087	2991	java/lang/Exception
    //   6091	6099	2991	java/lang/Exception
    //   6103	6110	2991	java/lang/Exception
    //   6114	6122	2991	java/lang/Exception
    //   6126	6134	2991	java/lang/Exception
    //   6143	6151	2991	java/lang/Exception
    //   6155	6161	2991	java/lang/Exception
    //   6165	6179	2991	java/lang/Exception
    //   6183	6189	2991	java/lang/Exception
    //   6193	6199	2991	java/lang/Exception
    //   6203	6221	2991	java/lang/Exception
    //   6225	6241	2991	java/lang/Exception
    //   6245	6258	2991	java/lang/Exception
    //   6265	6286	2991	java/lang/Exception
    //   6339	6364	2991	java/lang/Exception
    //   6437	6444	2991	java/lang/Exception
    //   6458	6483	2991	java/lang/Exception
    //   6559	6565	2991	java/lang/Exception
    //   6569	6577	2991	java/lang/Exception
    //   6581	6589	2991	java/lang/Exception
    //   6593	6604	2991	java/lang/Exception
    //   6608	6635	2991	java/lang/Exception
    //   6639	6648	2991	java/lang/Exception
    //   6652	6660	2991	java/lang/Exception
    //   6664	6672	2991	java/lang/Exception
    //   6676	6683	2991	java/lang/Exception
    //   6687	6690	2991	java/lang/Exception
    //   6694	6715	2991	java/lang/Exception
    //   6722	6730	2991	java/lang/Exception
    //   6734	6750	2991	java/lang/Exception
    //   6757	6765	2991	java/lang/Exception
    //   6769	6785	2991	java/lang/Exception
    //   6792	6800	2991	java/lang/Exception
    //   6804	6820	2991	java/lang/Exception
    //   6827	6832	2991	java/lang/Exception
    //   6848	6869	2991	java/lang/Exception
    //   6873	6880	2991	java/lang/Exception
    //   3130	3137	3378	com/estrongs/fs/FileSystemException
    //   3141	3152	3378	com/estrongs/fs/FileSystemException
    //   4441	4445	4607	java/lang/Exception
    //   4489	4493	4612	java/lang/Exception
    //   171	177	4959	finally
    //   181	190	4959	finally
    //   205	221	4959	finally
    //   225	241	4959	finally
    //   248	255	4959	finally
    //   269	278	4959	finally
    //   295	316	4959	finally
    //   320	327	4959	finally
    //   336	343	4959	finally
    //   446	457	4959	finally
    //   461	473	4959	finally
    //   477	483	4959	finally
    //   487	496	4959	finally
    //   508	539	4959	finally
    //   543	554	4959	finally
    //   716	724	4959	finally
    //   728	735	4959	finally
    //   739	746	4959	finally
    //   750	766	4959	finally
    //   770	783	4959	finally
    //   787	799	4959	finally
    //   803	824	4959	finally
    //   831	873	4959	finally
    //   884	892	4959	finally
    //   896	905	4959	finally
    //   914	923	4959	finally
    //   930	936	4959	finally
    //   954	985	4959	finally
    //   989	1000	4959	finally
    //   1004	1012	4959	finally
    //   1016	1027	4959	finally
    //   1031	1046	4959	finally
    //   1050	1066	4959	finally
    //   1078	1085	4959	finally
    //   1115	1126	4959	finally
    //   1130	1137	4959	finally
    //   1247	1262	4959	finally
    //   1266	1305	4959	finally
    //   1314	1323	4959	finally
    //   1416	1426	4959	finally
    //   1435	1446	4959	finally
    //   1450	1459	4959	finally
    //   1530	1569	4959	finally
    //   1583	1590	4959	finally
    //   1598	1605	4959	finally
    //   1612	1633	4959	finally
    //   1637	1662	4959	finally
    //   1733	1749	4959	finally
    //   1753	1769	4959	finally
    //   1845	1853	4959	finally
    //   1862	1872	4959	finally
    //   2016	2026	4959	finally
    //   2030	2051	4959	finally
    //   2058	2070	4959	finally
    //   2074	2137	4959	finally
    //   2150	2156	4959	finally
    //   2160	2169	4959	finally
    //   2173	2180	4959	finally
    //   2184	2195	4959	finally
    //   2202	2212	4959	finally
    //   2216	2229	4959	finally
    //   2233	2246	4959	finally
    //   2253	2265	4959	finally
    //   2280	2288	4959	finally
    //   2296	2301	4959	finally
    //   2313	2341	4959	finally
    //   2353	2375	4959	finally
    //   2379	2392	4959	finally
    //   2401	2432	4959	finally
    //   2436	2463	4959	finally
    //   2467	2488	4959	finally
    //   2492	2500	4959	finally
    //   2504	2512	4959	finally
    //   2516	2523	4959	finally
    //   2548	2565	4959	finally
    //   2569	2603	4959	finally
    //   2679	2690	4959	finally
    //   2694	2728	4959	finally
    //   2807	2817	4959	finally
    //   2826	2834	4959	finally
    //   2838	2847	4959	finally
    //   2859	2870	4959	finally
    //   2879	2889	4959	finally
    //   2898	2930	4959	finally
    //   2939	2950	4959	finally
    //   2982	2988	4959	finally
    //   3001	3040	4959	finally
    //   3112	3121	4959	finally
    //   3130	3137	4959	finally
    //   3141	3152	4959	finally
    //   3161	3171	4959	finally
    //   3175	3186	4959	finally
    //   3190	3201	4959	finally
    //   3205	3211	4959	finally
    //   3220	3248	4959	finally
    //   3261	3305	4959	finally
    //   3383	3389	4959	finally
    //   3401	3412	4959	finally
    //   3416	3437	4959	finally
    //   3441	3448	4959	finally
    //   3452	3457	4959	finally
    //   3528	3541	4959	finally
    //   3545	3558	4959	finally
    //   3567	3574	4959	finally
    //   3578	3589	4959	finally
    //   3607	3618	4959	finally
    //   3622	3635	4959	finally
    //   3639	3644	4959	finally
    //   3715	3723	4959	finally
    //   3727	3735	4959	finally
    //   3739	3747	4959	finally
    //   3760	3773	4959	finally
    //   3792	3807	4959	finally
    //   3827	3837	4959	finally
    //   3841	3849	4959	finally
    //   3920	3928	4959	finally
    //   3935	3943	4959	finally
    //   3952	3974	4959	finally
    //   3982	3991	4959	finally
    //   3995	4002	4959	finally
    //   4145	4150	4959	finally
    //   4154	4166	4959	finally
    //   4179	4186	4959	finally
    //   4198	4208	4959	finally
    //   4212	4222	4959	finally
    //   4241	4269	4959	finally
    //   4273	4279	4959	finally
    //   4283	4292	4959	finally
    //   4296	4305	4959	finally
    //   4312	4326	4959	finally
    //   4338	4368	4959	finally
    //   4372	4379	4959	finally
    //   4476	4481	4959	finally
    //   4489	4493	4959	finally
    //   4515	4540	4959	finally
    //   4618	4625	4959	finally
    //   4639	4664	4959	finally
    //   4740	4746	4959	finally
    //   4750	4758	4959	finally
    //   4762	4770	4959	finally
    //   4774	4785	4959	finally
    //   4789	4816	4959	finally
    //   4820	4829	4959	finally
    //   4833	4841	4959	finally
    //   4845	4853	4959	finally
    //   4857	4864	4959	finally
    //   4935	4956	4959	finally
    //   5234	5239	4959	finally
    //   5248	5253	4959	finally
    //   5275	5300	4959	finally
    //   5372	5380	4959	finally
    //   5394	5419	4959	finally
    //   5495	5501	4959	finally
    //   5505	5513	4959	finally
    //   5517	5525	4959	finally
    //   5529	5540	4959	finally
    //   5544	5571	4959	finally
    //   5575	5584	4959	finally
    //   5588	5596	4959	finally
    //   5600	5608	4959	finally
    //   5612	5619	4959	finally
    //   5690	5711	4959	finally
    //   5727	5732	4959	finally
    //   5740	5744	4959	finally
    //   5766	5791	4959	finally
    //   5864	5871	4959	finally
    //   5885	5910	4959	finally
    //   5986	5992	4959	finally
    //   5996	6004	4959	finally
    //   6008	6016	4959	finally
    //   6020	6031	4959	finally
    //   6035	6062	4959	finally
    //   6066	6075	4959	finally
    //   6079	6087	4959	finally
    //   6091	6099	4959	finally
    //   6103	6110	4959	finally
    //   6114	6122	4959	finally
    //   6126	6134	4959	finally
    //   6143	6151	4959	finally
    //   6155	6161	4959	finally
    //   6165	6179	4959	finally
    //   6183	6189	4959	finally
    //   6193	6199	4959	finally
    //   6203	6221	4959	finally
    //   6225	6241	4959	finally
    //   6245	6258	4959	finally
    //   6265	6286	4959	finally
    //   6300	6305	4959	finally
    //   6313	6317	4959	finally
    //   6339	6364	4959	finally
    //   6437	6444	4959	finally
    //   6458	6483	4959	finally
    //   6559	6565	4959	finally
    //   6569	6577	4959	finally
    //   6581	6589	4959	finally
    //   6593	6604	4959	finally
    //   6608	6635	4959	finally
    //   6639	6648	4959	finally
    //   6652	6660	4959	finally
    //   6664	6672	4959	finally
    //   6676	6683	4959	finally
    //   6687	6690	4959	finally
    //   6694	6715	4959	finally
    //   6722	6730	4959	finally
    //   6734	6750	4959	finally
    //   6757	6765	4959	finally
    //   6769	6785	4959	finally
    //   6792	6800	4959	finally
    //   6804	6820	4959	finally
    //   6827	6832	4959	finally
    //   6848	6869	4959	finally
    //   6873	6880	4959	finally
    //   5248	5253	5367	java/lang/Exception
    //   5740	5744	5858	java/lang/Exception
    //   4379	4388	6289	finally
    //   4399	4407	6289	finally
    //   4412	4437	6289	finally
    //   4441	4445	6289	finally
    //   5027	5036	6289	finally
    //   5714	5718	6289	finally
    //   6313	6317	6431	java/lang/Exception
    //   4476	4481	6984	java/lang/Exception
    //   5187	5191	6989	java/lang/Exception
    //   5234	5239	6994	java/lang/Exception
    //   5727	5732	6998	java/lang/Exception
    //   6300	6305	7003	java/lang/Exception
    //   141	167	7008	finally
    //   569	576	7015	finally
    //   581	594	7015	finally
    //   599	609	7015	finally
    //   6947	6981	7015	finally
    //   141	167	7026	java/lang/Exception
    //   141	167	7033	com/estrongs/fs/FileSystemException
    //   4447	4467	7041	finally
    //   5047	5061	7046	finally
    //   5069	5099	7046	finally
    //   5102	5128	7046	finally
    //   5136	5144	7046	finally
    //   5152	5177	7046	finally
    //   5187	5191	7046	finally
    //   5196	5202	7046	finally
    //   5205	5213	7046	finally
    //   5216	5222	7046	finally
    //   3827	3837	7054	java/lang/Exception
    //   3841	3849	7054	java/lang/Exception
  }
  
  public boolean a(h paramh)
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(paramh);
    return a(localLinkedList);
  }
  
  public boolean a(h paramh, String paramString)
  {
    com.estrongs.android.scanner.l.a().e();
    boolean bool = a(paramh, paramString, true);
    com.estrongs.android.scanner.l.a().a(paramh.getAbsolutePath(), paramString);
    com.estrongs.android.scanner.l.a().a(true);
    return bool;
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
                String str3 = ap.d(paramString);
                str1 = paramString;
                if (paramh.getFileType().a())
                {
                  str1 = paramString;
                  if (ap.bm(str2))
                  {
                    str1 = paramString;
                    if (!paramString.endsWith("/")) {
                      str1 = paramString + "/";
                    }
                  }
                }
                if ((paramBoolean) && (b(str1)) && ((!ap.bl(str1)) || (str1.equals(str2)) || (!str1.equalsIgnoreCase(str2)))) {
                  throw new FileExistException(ap.F(str1));
                }
                paramString = o(ap.bP(paramh.getPath()));
                if (paramString == null) {
                  break label288;
                }
                if (!(paramString instanceof com.estrongs.fs.impl.l.a)) {
                  break;
                }
                paramBoolean = ((com.estrongs.fs.impl.l.a)paramString).a(paramh, str3);
                bool = paramBoolean;
              } while (!paramBoolean);
              bool = paramBoolean;
            } while ((com.estrongs.a.a.getCurrentTask() instanceof at));
            bool = paramBoolean;
          } while ((com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.p));
          com.estrongs.fs.a.b.a().a(paramh, str1);
          return paramBoolean;
          if (!(paramString instanceof com.estrongs.fs.impl.adb.c)) {
            break;
          }
          paramBoolean = ((com.estrongs.fs.impl.adb.c)paramString).a(paramh, new z(str1));
          bool = paramBoolean;
        } while (!paramBoolean);
        bool = paramBoolean;
      } while ((com.estrongs.a.a.getCurrentTask() instanceof at));
      bool = paramBoolean;
    } while ((com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.p));
    com.estrongs.fs.a.b.a().a(paramh, str1);
    return paramBoolean;
    label288:
    switch (ap.I(str2))
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
      if ((paramString instanceof at)) {
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
      if (!ap.bC(str1)) {
        paramString = ap.k(str1, "rw");
      }
      paramBoolean = com.estrongs.fs.impl.local.i.a(str2, str1);
      if (paramString != null)
      {
        ap.a(paramString);
        continue;
        paramBoolean = com.estrongs.fs.impl.u.b.a(str2, str1);
        continue;
        paramBoolean = com.estrongs.fs.impl.usb.e.a(str2, str1);
        continue;
        paramBoolean = com.estrongs.fs.impl.w.b.a(str2, str1);
        continue;
        paramString = n(ap.bP(str2));
        if (paramString == null) {
          throw new FsProviderNotFoundException(ap.bP(str2), com.estrongs.android.pop.b.a.a(ap.bP(str2)));
        }
        paramBoolean = paramString.a(str2, str1);
        continue;
        paramBoolean = com.estrongs.fs.impl.e.a.a(str2, str1);
        continue;
        try
        {
          paramBoolean = com.estrongs.fs.impl.o.b.c(ap.cd(str2), ap.cd(str1));
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
        com.estrongs.android.scanner.l.a().e();
        String str = paramh.getAbsolutePath();
        if (!str.endsWith("/")) {
          break label1046;
        }
        str = str.substring(0, str.length() - 1);
        com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
        boolean bool1 = ap.bm(((h)paramList.get(0)).getAbsolutePath());
        j = 0;
        label125:
        h localh;
        if ((ap.aG(str)) && (ap.d(str, "mediafire")))
        {
          i = 1;
          break label1049;
          Iterator localIterator = paramList.iterator();
          i = j;
          if (!localIterator.hasNext()) {
            break label989;
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
          break label1049;
        }
        if (ap.e(localh.getAbsolutePath(), (String)localObject2)) {
          continue;
        }
        boolean bool2 = b((String)localObject2);
        int m = 1;
        j = i;
        if (bool2)
        {
          if (locala == null) {
            break label1034;
          }
          localObject1 = (com.estrongs.a.a.h)locala.getDecision(com.estrongs.a.a.h.class, new Object[] { localObject2, Boolean.valueOf(false), localh, j((String)localObject2) });
          if (localObject1 == null) {
            break label1034;
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
          localObject1 = com.estrongs.fs.util.j.m((String)localObject2);
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
                boolean bool3 = b(new x((String)localObject1), ap.d((String)localObject2));
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
            b(new x((String)localObject2), ap.d((String)localObject1));
          }
          return false;
        }
        com.estrongs.android.scanner.l.a().a(localh.getAbsolutePath(), (String)localObject1);
        if ((bool2) && (m == 1) && (k != 0)) {
          a(new x((String)localObject2));
        }
        localArrayList1.add(localh);
        localArrayList2.add(new z(paramh, localh.getName()));
        i = j;
        continue;
        if (localArrayList1.size() <= 0) {
          break label1007;
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
        com.estrongs.android.scanner.l.a().a(true);
      }
      label989:
      com.estrongs.fs.a.b.a().d(localArrayList1);
      label1007:
      if (localArrayList2.size() > 0) {
        com.estrongs.fs.a.b.a().b(localArrayList2);
      }
      com.estrongs.android.scanner.l.a().a(true);
      return true;
      label1034:
      int j = 1;
      continue;
      label1046:
      label1049:
      do
      {
        k = 1;
        break label125;
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
          if ((!ap.bl((String)localObject2)) || (ap.bC((String)localObject2))) {
            continue;
          }
          localObject2 = ap.k((String)localObject2, "rw");
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
                  if (l == null) {
                    l = new LinkedList();
                  }
                  l.add(((h)localObject2).getPath());
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
              if ((!(locala instanceof ab)) || (l == null) || (!l.contains(((h)localObject2).getAbsolutePath()))) {
                ((List)localObject1).add(localObject2);
              }
              if ((locala == null) || (ap.bl(((h)localObject2).getPath())) || (ap.aY(((h)localObject2).getPath()))) {
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
            ap.a(paramList2);
          }
        }
      }
    }
  }
  
  public OutputStream b(String paramString, long paramLong)
  {
    if (ap.o(paramString)) {
      return com.estrongs.fs.impl.w.b.a(paramString, paramLong);
    }
    if (ap.w(paramString))
    {
      u localu = o(ap.bP(paramString));
      if (localu != null) {
        return localu.a(paramString, new TypedMap().put("length", Long.valueOf(paramLong)));
      }
    }
    if ((!ap.aG(paramString)) && (!ap.aL(paramString)) && (!ap.aJ(paramString))) {
      return f(paramString);
    }
    try
    {
      paramString = com.estrongs.fs.impl.o.b.b(ap.cd(paramString), paramLong);
      return paramString;
    }
    catch (NetFsException paramString)
    {
      throw new FileSystemException(a(error), paramString);
    }
  }
  
  public OutputStream b(String paramString, long paramLong, TypedMap paramTypedMap)
  {
    if (!ap.aQ(paramString)) {
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
    return a(paramh, ap.e(str) + "/" + paramString, paramBoolean);
  }
  
  public boolean b(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      if (ap.br(paramString)) {
        return true;
      }
      switch (ap.I(paramString))
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
        localObject = o(ap.bP(paramString));
      }
    } while (localObject == null);
    return ((u)localObject).c(paramString);
    return com.estrongs.fs.impl.local.i.a(paramString);
    return com.estrongs.fs.impl.u.b.b(paramString);
    return com.estrongs.fs.impl.usb.e.d(paramString);
    return com.estrongs.fs.impl.w.b.d(paramString);
    Object localObject = n(ap.bP(paramString));
    if (localObject != null) {
      return ((com.estrongs.old.fs.a)localObject).b(paramString);
    }
    return com.estrongs.fs.impl.e.a.d(paramString);
    boolean bool;
    try
    {
      bool = com.estrongs.fs.impl.o.b.e(ap.cd(paramString));
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
    return com.estrongs.fs.impl.n.d.e(paramString);
    return com.estrongs.fs.impl.p.c.e(paramString);
    return com.estrongs.fs.impl.v.c.e(paramString);
    return com.estrongs.fs.impl.f.c.e(paramString);
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
    //   10: invokestatic 73	com/estrongs/android/util/ap:I	(Ljava/lang/String;)I
    //   13: lookupswitch	default:+115->128, 0:+189->202, 1:+245->258, 2:+272->285, 3:+339->352, 4:+348->361, 5:+272->285, 18:+378->391, 19:+272->285, 20:+272->285, 21:+263->276, 22:+263->276, 23:+348->361, 33:+254->267
    //   128: aload_0
    //   129: aload_1
    //   130: invokestatic 86	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   133: invokevirtual 390	com/estrongs/fs/d:o	(Ljava/lang/String;)Lcom/estrongs/fs/u;
    //   136: astore 5
    //   138: aload 5
    //   140: ifnull +327 -> 467
    //   143: iload_2
    //   144: ifeq +274 -> 418
    //   147: aload 5
    //   149: aload_1
    //   150: invokeinterface 1407 2 0
    //   155: istore_3
    //   156: iload_3
    //   157: ifeq +43 -> 200
    //   160: aload_1
    //   161: invokestatic 746	com/estrongs/android/util/ap:aL	(Ljava/lang/String;)Z
    //   164: ifne +10 -> 174
    //   167: aload_1
    //   168: invokestatic 552	com/estrongs/android/util/ap:aJ	(Ljava/lang/String;)Z
    //   171: ifeq +306 -> 477
    //   174: invokestatic 299	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   177: astore 5
    //   179: iload_2
    //   180: ifne +292 -> 472
    //   183: iload 4
    //   185: istore_2
    //   186: aload 5
    //   188: new 873	com/estrongs/fs/z
    //   191: dup
    //   192: aload_1
    //   193: iload_2
    //   194: invokespecial 1410	com/estrongs/fs/z:<init>	(Ljava/lang/String;Z)V
    //   197: invokevirtual 1413	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;)V
    //   200: iload_3
    //   201: ireturn
    //   202: aconst_null
    //   203: astore 5
    //   205: aload_1
    //   206: invokestatic 417	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   209: ifne +12 -> 221
    //   212: aload_1
    //   213: ldc_w 1040
    //   216: invokestatic 1043	com/estrongs/android/util/ap:k	(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    //   219: astore 5
    //   221: aload_1
    //   222: iload_2
    //   223: invokestatic 1415	com/estrongs/fs/impl/local/i:a	(Ljava/lang/String;Z)Z
    //   226: istore_3
    //   227: aload 5
    //   229: ifnull +9 -> 238
    //   232: aload 5
    //   234: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   237: pop
    //   238: goto -82 -> 156
    //   241: astore_1
    //   242: aconst_null
    //   243: astore 5
    //   245: aload 5
    //   247: ifnull +9 -> 256
    //   250: aload 5
    //   252: invokestatic 1055	com/estrongs/android/util/ap:a	([Ljava/lang/String;)Z
    //   255: pop
    //   256: aload_1
    //   257: athrow
    //   258: aload_1
    //   259: iload_2
    //   260: invokestatic 1416	com/estrongs/fs/impl/u/b:a	(Ljava/lang/String;Z)Z
    //   263: istore_3
    //   264: goto -108 -> 156
    //   267: aload_1
    //   268: iload_2
    //   269: invokestatic 1417	com/estrongs/fs/impl/usb/e:a	(Ljava/lang/String;Z)Z
    //   272: istore_3
    //   273: goto -117 -> 156
    //   276: aload_1
    //   277: iload_2
    //   278: invokestatic 1419	com/estrongs/fs/impl/w/b:b	(Ljava/lang/String;Z)Z
    //   281: istore_3
    //   282: goto -126 -> 156
    //   285: aload_1
    //   286: invokestatic 86	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   289: invokestatic 90	com/estrongs/fs/d:n	(Ljava/lang/String;)Lcom/estrongs/old/fs/a;
    //   292: astore 6
    //   294: aload_1
    //   295: astore 5
    //   297: iload_2
    //   298: ifeq +38 -> 336
    //   301: aload_1
    //   302: astore 5
    //   304: aload_1
    //   305: ldc_w 273
    //   308: invokevirtual 276	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   311: ifne +25 -> 336
    //   314: new 278	java/lang/StringBuilder
    //   317: dup
    //   318: invokespecial 279	java/lang/StringBuilder:<init>	()V
    //   321: aload_1
    //   322: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: ldc_w 273
    //   328: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: invokevirtual 286	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: astore 5
    //   336: aload 6
    //   338: aload 5
    //   340: invokeinterface 1420 2 0
    //   345: istore_3
    //   346: aload 5
    //   348: astore_1
    //   349: goto -193 -> 156
    //   352: aload_1
    //   353: iload_2
    //   354: invokestatic 1421	com/estrongs/fs/impl/e/a:a	(Ljava/lang/String;Z)Z
    //   357: istore_3
    //   358: goto -202 -> 156
    //   361: aload_1
    //   362: invokestatic 544	com/estrongs/android/util/ap:cd	(Ljava/lang/String;)Ljava/lang/String;
    //   365: iload_2
    //   366: invokestatic 1422	com/estrongs/fs/impl/o/b:a	(Ljava/lang/String;Z)Z
    //   369: istore_3
    //   370: goto -214 -> 156
    //   373: astore_1
    //   374: new 268	com/estrongs/fs/FileSystemException
    //   377: dup
    //   378: aload_0
    //   379: aload_1
    //   380: getfield 651	com/estrongs/android/pop/netfs/NetFsException:error	Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
    //   383: invokespecial 653	com/estrongs/fs/d:a	(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;
    //   386: aload_1
    //   387: invokespecial 656	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   390: athrow
    //   391: aload_1
    //   392: iload_2
    //   393: invokestatic 1425	com/estrongs/android/pop/spfs/SPFileSystem:createFile	(Ljava/lang/String;Z)Z
    //   396: istore_3
    //   397: goto -241 -> 156
    //   400: astore_1
    //   401: new 268	com/estrongs/fs/FileSystemException
    //   404: dup
    //   405: aload_0
    //   406: aload_1
    //   407: getfield 651	com/estrongs/android/pop/netfs/NetFsException:error	Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;
    //   410: invokespecial 653	com/estrongs/fs/d:a	(Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)Ljava/lang/String;
    //   413: aload_1
    //   414: invokespecial 656	com/estrongs/fs/FileSystemException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   417: athrow
    //   418: aload 5
    //   420: aload_1
    //   421: new 306	com/estrongs/android/util/TypedMap
    //   424: dup
    //   425: invokespecial 460	com/estrongs/android/util/TypedMap:<init>	()V
    //   428: ldc_w 1374
    //   431: lconst_0
    //   432: invokestatic 167	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   435: invokevirtual 323	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   438: invokeinterface 1377 3 0
    //   443: astore 5
    //   445: aload 5
    //   447: ifnull +20 -> 467
    //   450: aload 5
    //   452: invokevirtual 1225	java/io/OutputStream:close	()V
    //   455: iconst_1
    //   456: istore_3
    //   457: goto -301 -> 156
    //   460: astore 5
    //   462: aload 5
    //   464: invokevirtual 1426	java/io/IOException:printStackTrace	()V
    //   467: iconst_0
    //   468: istore_3
    //   469: goto -313 -> 156
    //   472: iconst_0
    //   473: istore_2
    //   474: goto -288 -> 186
    //   477: invokestatic 299	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   480: aload_1
    //   481: invokevirtual 1427	com/estrongs/fs/a/b:a	(Ljava/lang/String;)V
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
    switch (ap.I(paramString))
    {
    default: 
      return null;
    case 0: 
      return com.estrongs.fs.impl.local.i.c(paramString);
    case 1: 
      return com.estrongs.fs.impl.u.b.f(paramString);
    case 33: 
      return com.estrongs.fs.impl.usb.e.i(paramString);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.w.b.a(paramString);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      localObject = n(ap.bP(paramString));
      if (localObject != null) {
        return ((com.estrongs.old.fs.a)localObject).g(paramString);
      }
    case 3: 
      return com.estrongs.fs.impl.e.a.f(paramString);
    case 4: 
    case 23: 
      try
      {
        localObject = com.estrongs.fs.impl.o.b.g(ap.cd(paramString));
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
    switch (ap.I(paramString))
    {
    default: 
      localObject = o(ap.bP(paramString));
      if (localObject != null) {
        return ((u)localObject).b(paramString);
      }
      break;
    case 0: 
      localObject = null;
      if (!ap.bC(paramString)) {
        localObject = ap.k(paramString, "rw");
      }
      bool1 = com.estrongs.fs.impl.local.i.g(paramString);
      if (localObject != null) {
        ap.a((String[])localObject);
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
      bool1 = com.estrongs.fs.impl.u.b.c(paramString);
      continue;
      bool1 = com.estrongs.fs.impl.usb.e.e(paramString);
      continue;
      bool1 = com.estrongs.fs.impl.w.b.e(paramString);
      continue;
      localObject = n(ap.bP(paramString));
      if (localObject != null)
      {
        bool1 = ((com.estrongs.old.fs.a)localObject).d(paramString);
        continue;
        bool1 = com.estrongs.fs.impl.e.a.e(paramString);
        continue;
        try
        {
          bool1 = com.estrongs.fs.impl.o.b.i(ap.cd(paramString));
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
    switch (ap.I(paramString))
    {
    default: 
      return 0L;
    case 0: 
      return com.estrongs.fs.impl.local.i.e(paramString);
    case 1: 
      return com.estrongs.fs.impl.u.b.d(paramString);
    case 33: 
      return com.estrongs.fs.impl.usb.e.f(paramString);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.w.b.b(paramString);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      com.estrongs.old.fs.a locala = n(ap.bP(paramString));
      if (locala != null) {
        return locala.e(paramString);
      }
    case 3: 
      return com.estrongs.fs.impl.e.a.a(paramString);
    case 4: 
    case 23: 
      try
      {
        l = com.estrongs.fs.impl.o.b.h(ap.cd(paramString));
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
      switch (ap.I(paramString))
      {
      case 21: 
      case 22: 
      default: 
        localObject = o(ap.bP(paramString));
      }
    } while (localObject == null);
    return ((u)localObject).a(paramString, true);
    return com.estrongs.fs.impl.local.i.f(paramString);
    return com.estrongs.fs.impl.u.b.h(paramString);
    return com.estrongs.fs.impl.usb.e.j(paramString);
    Object localObject = n(ap.bP(paramString));
    if (localObject != null) {
      return ((com.estrongs.old.fs.a)localObject).j(paramString);
    }
    return com.estrongs.fs.impl.e.a.h(paramString);
    try
    {
      localObject = com.estrongs.fs.impl.o.b.b(ap.cd(paramString), -1L);
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
    switch (ap.I(paramString))
    {
    default: 
      return false;
    case 0: 
      return com.estrongs.fs.impl.local.i.h(paramString);
    case 1: 
      return com.estrongs.fs.impl.u.b.e(paramString);
    case 33: 
      return com.estrongs.fs.impl.usb.e.g(paramString);
    case 21: 
    case 22: 
      return com.estrongs.fs.impl.w.b.c(paramString);
    case 2: 
    case 5: 
    case 19: 
    case 20: 
      com.estrongs.old.fs.a locala = n(ap.bP(paramString));
      if (locala != null) {
        return locala.f(paramString);
      }
    case 3: 
      return com.estrongs.fs.impl.e.a.c(paramString);
    case 4: 
    case 23: 
      try
      {
        bool = com.estrongs.fs.impl.o.b.j(ap.cd(paramString));
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
    if (ap.aQ(paramString)) {
      return SPFileSystem.getThumbnail(paramString);
    }
    if ((ap.aG(paramString)) || (ap.aL(paramString)) || (ap.aJ(paramString))) {
      return com.estrongs.fs.impl.o.b.l(ap.cd(paramString));
    }
    if (ap.w(paramString)) {
      return ((com.estrongs.fs.impl.k.c)a().o("flashair")).f(paramString);
    }
    return null;
  }
  
  public int l(String paramString)
  {
    if (((ap.aG(paramString)) || (ap.aL(paramString)) || ((ap.aJ(paramString)) && (!ap.bh(paramString)))) && (!ap.br(paramString)) && (com.estrongs.fs.impl.o.b.a(d, ap.cd(paramString)))) {
      return 100;
    }
    return -1;
  }
  
  public u o(String paramString)
  {
    Object localObject;
    if (a.containsKey(paramString)) {
      localObject = (u)a.get(paramString);
    }
    u localu;
    do
    {
      return (u)localObject;
      localu = q(paramString);
      localObject = localu;
    } while (localu == null);
    a(paramString, localu);
    return localu;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */