package com.estrongs.fs.impl.local;

import android.content.ContentResolver;
import android.content.Context;
import android.net.LocalSocket;
import android.net.Uri;
import com.estrongs.a.b.o;
import com.estrongs.a.b.s;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ao;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.b.at;
import com.estrongs.fs.b.p;
import com.estrongs.fs.b.r;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.b;
import com.estrongs.fs.impl.n.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;

public class i
{
  private static final Random a = new Random();
  private static Map<String, Boolean> b = new ConcurrentHashMap();
  
  public static InputStream a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, false);
  }
  
  public static InputStream a(Context paramContext, String paramString, long paramLong)
  {
    Object localObject = null;
    if (paramLong == 0L) {
      paramContext = a(paramContext, paramString);
    }
    com.estrongs.a.a locala;
    label141:
    label158:
    do
    {
      return paramContext;
      locala = com.estrongs.a.a.getCurrentTask();
      for (;;)
      {
        try
        {
          if ((l(paramString)) && (m.a(paramContext, false))) {
            return m.j(paramString);
          }
          if (!paramString.startsWith("file://")) {
            break label141;
          }
          paramContext = new File(new URI(paramString)).getAbsolutePath();
          paramContext = new File(paramContext);
          if (paramContext.exists()) {
            break label158;
          }
          paramContext = (Context)localObject;
          if (locala == null) {
            break;
          }
          locala.setTaskResult(2, new q(paramString, null));
          return null;
        }
        catch (Exception paramString)
        {
          paramContext = (Context)localObject;
        }
        if (locala == null) {
          break;
        }
        locala.setTaskResult(10, new q(paramString.toString(), paramString));
        return null;
        paramContext = (Context)localObject;
        if (paramString.startsWith("content://")) {
          break;
        }
        paramContext = paramString;
      }
      if (paramLong < paramContext.length()) {
        break;
      }
      paramContext = (Context)localObject;
    } while (locala == null);
    locala.setTaskResult(10, new q("offset > filesize", null));
    return null;
    paramContext = new e(paramContext, paramLong);
    return paramContext;
  }
  
  public static InputStream a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (!paramBoolean) {}
    try
    {
      if ((l(paramString)) && (m.a(paramContext, false))) {
        return m.j(paramString);
      }
      if (paramString.startsWith("file://"))
      {
        paramContext = new FileInputStream(new File(new URI(paramString)));
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      throw new FileSystemException(paramContext.getMessage());
    }
    if (paramString.startsWith("content://")) {
      return paramContext.getContentResolver().openInputStream(Uri.parse(paramString));
    }
    paramContext = new FileInputStream(paramString);
    return paramContext;
  }
  
  public static OutputStream a(String paramString, long paramLong)
  {
    try
    {
      paramString = new h(new File(paramString), paramLong);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static List<com.estrongs.fs.h> a(String paramString, com.estrongs.fs.i parami, o<String> paramo)
  {
    return a(paramString, parami, paramo, null);
  }
  
  public static List<com.estrongs.fs.h> a(String paramString, com.estrongs.fs.i parami, o<String> paramo, TypedMap paramTypedMap)
  {
    boolean bool1 = ap.bC(paramString);
    if ((l(paramString)) && (m.a(FexApplication.a(), false))) {
      return x.a(FexApplication.a()).a(paramString);
    }
    paramString = new File(paramString);
    if ((!paramString.exists()) || (!paramString.isDirectory())) {
      return null;
    }
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    File[] arrayOfFile = paramString.listFiles();
    if ((locala != null) && (arrayOfFile != null)) {
      locala.sendMessage(6, new Object[] { Long.valueOf(arrayOfFile.length) });
    }
    LinkedList localLinkedList = new LinkedList();
    if (!bool1) {}
    for (paramString = com.estrongs.android.nativetool.c.a();; paramString = null)
    {
      if (arrayOfFile != null)
      {
        boolean bool2 = false;
        bool1 = bool2;
        if (paramTypedMap != null)
        {
          bool1 = bool2;
          if (paramTypedMap.containsKey("countChildren"))
          {
            bool1 = bool2;
            if (paramTypedMap.getBoolean("countChildren")) {
              bool1 = true;
            }
          }
        }
        int j = arrayOfFile.length;
        int i = 0;
        if (i < j)
        {
          paramTypedMap = arrayOfFile[i];
          if ((locala != null) && (locala.taskStopped())) {
            return null;
          }
          if (paramTypedMap == null) {}
          do
          {
            i += 1;
            break;
            if (locala != null) {
              locala.sendMessage(7, new Object[] { Long.valueOf(1L) });
            }
            f localf = new f(paramString, paramTypedMap, bool1);
            if ((parami.a(localf)) && (!"PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(paramTypedMap.getName())))
            {
              localLinkedList.add(localf);
              if (locala != null) {
                locala.sendMessage(11, new Object[] { localf });
              }
            }
            paramo.a(localf.getAbsolutePath(), new long[0]);
          } while (!paramo.a());
        }
        if (paramString == null) {}
      }
      try
      {
        paramString.close();
        return localLinkedList;
      }
      catch (Exception paramString)
      {
        for (;;) {}
      }
    }
  }
  
  public static void a(File paramFile)
  {
    try
    {
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Boolean.TYPE;
      arrayOfClass[1] = Boolean.TYPE;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Boolean.valueOf(true);
      arrayOfObject[1] = Boolean.valueOf(false);
      paramFile = new ao(paramFile);
      paramFile.a("setReadable", arrayOfClass, arrayOfObject);
      paramFile.a("setWritable", arrayOfClass, arrayOfObject);
      paramFile.a("setExecutable", arrayOfClass, arrayOfObject);
      return;
    }
    catch (Exception paramFile) {}
  }
  
  public static void a(String paramString, com.estrongs.fs.h paramh, boolean paramBoolean)
  {
    if ((l(paramString)) && (m.a(null, false)))
    {
      m.a(paramString, paramh, paramBoolean);
      return;
    }
    new File(paramString).setLastModified(paramh.lastModified());
  }
  
  public static boolean a(Context paramContext, String paramString, s params)
  {
    s locals = params;
    if (params == null) {
      locals = s.b;
    }
    boolean bool = ap.bD(paramString);
    params = com.estrongs.a.a.getCurrentTask();
    if ((!bool) && (m.a(paramContext, false)))
    {
      locals.a(paramString, new long[0]);
      return m.c(paramString);
    }
    if (paramString.startsWith("file:///"))
    {
      new File(URI.create(paramString)).delete();
      return true;
    }
    paramContext = new File(paramString);
    paramString = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    bool = a(paramContext, locals, paramString, localArrayList);
    if ((params instanceof ab))
    {
      i.addAll(paramString);
      h.addAll(localArrayList);
    }
    return bool;
  }
  
  private static boolean a(File paramFile, s params, List<String> paramList1, List<String> paramList2)
  {
    boolean bool2;
    if (params.a())
    {
      bool2 = false;
      return bool2;
    }
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    if ((locala != null) && (locala.taskStopped())) {
      return false;
    }
    if (((locala instanceof ab)) && (l != null) && (l.contains(paramFile.getAbsolutePath()))) {
      return true;
    }
    long l2 = 0L;
    if (locala != null) {}
    for (String str = paramFile.getAbsolutePath();; str = null)
    {
      long l1;
      if (ap.a(paramFile)) {
        l1 = 0L;
      }
      for (;;)
      {
        boolean bool1;
        try
        {
          bool1 = com.estrongs.android.nativetool.c.b(paramFile.getAbsolutePath());
          if (!bool1) {
            break label1254;
          }
          params.a(1L);
          bool2 = bool1;
          if (!(locala instanceof ab)) {
            break;
          }
          locala.sendMessage(1, new Object[] { Long.valueOf(1L), str });
          bool2 = bool1;
          if (l1 <= 0L) {
            break;
          }
          locala.sendMessage(2, new Object[] { Long.valueOf(l1), str });
          return bool1;
        }
        catch (NativeException paramList1)
        {
          bool1 = false;
          continue;
        }
        boolean bool3 = paramFile.isDirectory();
        if (bool3)
        {
          if (((locala instanceof ab)) && (((ab)locala).c()))
          {
            params.a(paramFile.getName(), new long[0]);
            bool2 = paramFile.exists();
            if (bool2) {}
            for (bool1 = ((ab)locala).b(paramFile);; bool1 = true)
            {
              if ((bool1) && (bool2)) {
                ((ab)locala).a(paramFile.getAbsolutePath());
              }
              l1 = l2;
              break;
            }
          }
          File[] arrayOfFile = paramFile.listFiles();
          if (arrayOfFile != null)
          {
            ArrayList localArrayList1 = new ArrayList();
            ArrayList localArrayList2 = new ArrayList();
            int j = arrayOfFile.length;
            int i = 0;
            while (i < j)
            {
              if (!a(arrayOfFile[i], params, localArrayList1, localArrayList2))
              {
                paramList1.addAll(localArrayList1);
                paramList2.addAll(localArrayList2);
                return false;
              }
              i += 1;
            }
          }
          params.a(paramFile.getName(), new long[0]);
          if (paramFile.exists()) {
            if ((locala instanceof ab))
            {
              bool2 = ((ab)locala).b(paramFile);
              label427:
              if ((bool2) && (bk.f()) && (ap.bC(paramFile.getAbsolutePath())))
              {
                if (!(locala instanceof ab)) {
                  break label668;
                }
                paramList1.add(paramFile.getAbsolutePath());
              }
              label467:
              bool1 = bool2;
              l1 = l2;
              if (bool2) {
                continue;
              }
              bool1 = bool2;
              l1 = l2;
              if (ac.a() < 11) {
                continue;
              }
              bool1 = bool2;
              l1 = l2;
              if (!ap.bJ(paramFile.getAbsolutePath())) {
                continue;
              }
              if (ac.a() < 21) {
                break label692;
              }
              bool1 = a.d(paramFile.getAbsolutePath(), bool3);
              bool2 = bool1;
              if (bool1)
              {
                if (!(locala instanceof ab)) {
                  break label678;
                }
                paramList1.add(paramFile.getAbsolutePath());
                bool2 = bool1;
              }
            }
          }
          for (;;)
          {
            bool1 = bool2;
            l1 = l2;
            if (bool2) {
              break;
            }
            bool1 = bool2;
            l1 = l2;
            if (ac.a() < 18) {
              break;
            }
            if (!m.c(true)) {
              break label727;
            }
            try
            {
              bool2 = m.c(paramFile.getAbsolutePath());
              bool1 = bool2;
              l1 = l2;
              if (!bool2) {
                break;
              }
              if (!(locala instanceof ab)) {
                break label709;
              }
              paramList1.add(paramFile.getAbsolutePath());
              bool1 = bool2;
              l1 = l2;
            }
            catch (Exception paramFile)
            {
              return false;
            }
            bool2 = paramFile.delete();
            break label427;
            bool2 = true;
            break label427;
            label668:
            i(paramFile.getAbsolutePath());
            break label467;
            label678:
            i(paramFile.getAbsolutePath());
            bool2 = bool1;
            continue;
            label692:
            bool2 = k.c(paramFile.getAbsolutePath(), bool3);
          }
          label709:
          i(paramFile.getAbsolutePath());
          bool1 = bool2;
          l1 = l2;
          continue;
          label727:
          bool1 = bool2;
          l1 = l2;
          if (locala != null)
          {
            locala.setTaskResult(17, null);
            bool1 = bool2;
            l1 = l2;
          }
        }
        else
        {
          if (((locala instanceof ab)) && (((ab)locala).a(paramFile))) {
            return true;
          }
          params.a(paramFile.getName(), new long[0]);
          if (locala != null) {
            l2 = paramFile.length();
          }
          if (paramFile.exists()) {
            if ((locala instanceof ab))
            {
              bool1 = ((ab)locala).b(paramFile);
              label831:
              if ((bool1) && (ap.bC(paramFile.getAbsolutePath())))
              {
                if (!(locala instanceof ab)) {
                  break label1163;
                }
                paramList1 = (ab)locala;
                j |= com.estrongs.fs.a.a.g(paramFile.getAbsolutePath());
                if (!bk.f()) {
                  break label1070;
                }
                paramList2.add(paramFile.getAbsolutePath());
              }
              label893:
              if ((bool1) || (ac.a() < 11) || (!ap.bJ(paramFile.getAbsolutePath()))) {
                break label1269;
              }
              if (ac.a() < 21) {
                break label1187;
              }
              bool1 = a.d(paramFile.getAbsolutePath(), bool3);
              bool2 = bool1;
              if (bool1)
              {
                if (!(locala instanceof ab)) {
                  break label1173;
                }
                paramList2.add(paramFile.getAbsolutePath());
                bool2 = bool1;
              }
            }
          }
          for (;;)
          {
            bool1 = bool2;
            l1 = l2;
            if (bool2) {
              break;
            }
            bool1 = bool2;
            l1 = l2;
            if (ac.a() < 18) {
              break;
            }
            if (!m.c(true)) {
              break label1222;
            }
            try
            {
              bool2 = m.c(paramFile.getAbsolutePath());
              bool1 = bool2;
              l1 = l2;
              if (!bool2) {
                break;
              }
              if (!(locala instanceof ab)) {
                break label1204;
              }
              paramList2.add(paramFile.getAbsolutePath());
              bool1 = bool2;
              l1 = l2;
            }
            catch (Exception paramFile)
            {
              return false;
            }
            bool1 = paramFile.delete();
            break label831;
            bool1 = true;
            break label831;
            label1070:
            if (b.a(paramFile.getAbsolutePath()))
            {
              e.add(paramFile.getAbsolutePath());
              break label893;
            }
            if (b.b(paramFile.getAbsolutePath()))
            {
              f.add(paramFile.getAbsolutePath());
              break label893;
            }
            if (!b.c(paramFile.getAbsolutePath())) {
              break label893;
            }
            g.add(paramFile.getAbsolutePath());
            break label893;
            label1163:
            i(paramFile.getAbsolutePath());
            break label893;
            label1173:
            i(paramFile.getAbsolutePath());
            bool2 = bool1;
            continue;
            label1187:
            bool2 = k.c(paramFile.getAbsolutePath(), bool3);
          }
          label1204:
          i(paramFile.getAbsolutePath());
          bool1 = bool2;
          l1 = l2;
          continue;
          label1222:
          bool1 = bool2;
          l1 = l2;
          if (locala != null)
          {
            locala.setTaskResult(17, null);
            bool1 = bool2;
            l1 = l2;
            continue;
            try
            {
              label1254:
              bool1 = com.estrongs.android.nativetool.c.b(paramFile.getAbsolutePath());
              return bool1;
            }
            catch (Exception paramFile)
            {
              return false;
            }
            label1269:
            l1 = l2;
          }
        }
      }
    }
  }
  
  public static boolean a(String paramString)
  {
    if ((l(paramString)) && (m.a(null, false))) {
      return x.a(null).b(paramString);
    }
    return new File(paramString).exists();
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    boolean bool2 = false;
    boolean bool1;
    if ((l(paramString1)) && (m.a(null, false))) {
      bool1 = m.a(paramString1, paramString2);
    }
    for (;;)
    {
      return bool1;
      Object localObject = new File(paramString1);
      bool1 = bool2;
      if (((File)localObject).exists())
      {
        File localFile1 = new File(paramString2);
        label137:
        boolean bool3;
        boolean bool4;
        if (localFile1.exists())
        {
          bool1 = bool2;
          if (paramString2.equals(paramString1)) {
            continue;
          }
          bool1 = bool2;
          if (!paramString2.equalsIgnoreCase(paramString1)) {
            continue;
          }
          File localFile2 = new File(paramString2 + a.nextInt());
          if ((((File)localObject).renameTo(localFile2)) && (localFile2.renameTo(localFile1)))
          {
            bool1 = true;
            bool3 = bool1;
            if (bool1) {
              break label328;
            }
            bool3 = bool1;
            if (ac.a() < 18) {
              break label328;
            }
            bool4 = ap.bJ(paramString1);
            bool2 = bool1;
            if (bool4)
            {
              bool2 = bool1;
              if (ac.a() >= 21) {
                bool2 = a.a(paramString1, paramString2);
              }
            }
            if ((bool2) || (!m.c(true))) {
              break label289;
            }
          }
        }
        try
        {
          label289:
          label328:
          for (bool2 = m.a(paramString1, paramString2);; bool2 = bool3)
          {
            bool1 = bool2;
            if (!bool2) {
              break;
            }
            bool1 = bool2;
            if (!ap.bC(paramString1)) {
              break;
            }
            localObject = com.estrongs.a.a.getCurrentTask();
            bool1 = bool2;
            if ((localObject instanceof at)) {
              break;
            }
            bool1 = bool2;
            if ((localObject instanceof p)) {
              break;
            }
            bool1 = bool2;
            if ((localObject instanceof aq)) {
              break;
            }
            if (!localFile1.isDirectory()) {
              break label334;
            }
            new j(paramString1, paramString2).start();
            return bool2;
            bool1 = false;
            break label137;
            bool1 = ((File)localObject).renameTo(localFile1);
            break label137;
            bool3 = bool2;
            if (!bool2)
            {
              bool3 = bool2;
              if (bool4)
              {
                localObject = com.estrongs.a.a.getCurrentTask();
                bool3 = bool2;
                if (localObject != null)
                {
                  ((com.estrongs.a.a)localObject).setTaskResult(17, null);
                  bool3 = bool2;
                }
              }
            }
          }
          label334:
          b(paramString1, paramString2);
          return bool2;
        }
        catch (Exception paramString1) {}
      }
    }
    return false;
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    return a(paramString, paramBoolean, true);
  }
  
  public static boolean a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool1;
    if ((l(paramString)) && (m.a(null, false)))
    {
      bool1 = m.a(paramString, paramBoolean1);
      return bool1;
    }
    Object localObject1 = new File(paramString);
    if (paramBoolean1) {}
    for (;;)
    {
      try
      {
        if (((File)localObject1).exists()) {
          break label360;
        }
        bool1 = ((File)localObject1).mkdir();
      }
      catch (IOException localIOException1)
      {
        try
        {
          if ((z.aa) && (ac.a() >= 9)) {
            a((File)localObject1);
          }
          bool2 = bool1;
          localObject3 = paramString;
          if (bool1) {
            break label345;
          }
          bool2 = bool1;
          localObject3 = paramString;
          if (ac.a() < 11) {
            break label345;
          }
          bool2 = bool1;
          localObject3 = paramString;
          if (!ap.bJ(paramString)) {
            break label345;
          }
          if (ac.a() >= 21)
          {
            localObject3 = a.b(paramString, paramBoolean1);
            if (localObject3 != null)
            {
              bool2 = true;
              bool1 = bool2;
              localObject1 = paramString;
              if (bool2)
              {
                localObject1 = new File(new File(paramString).getParent(), ap.d(((Uri)localObject3).getPath())).getPath();
                bool1 = bool2;
              }
              bool2 = bool1;
              localObject3 = localObject1;
              if (bool1) {
                break label345;
              }
              bool2 = bool1;
              localObject3 = localObject1;
              if (ac.a() < 18) {
                break label345;
              }
              if (!m.c(true)) {
                break label316;
              }
            }
          }
        }
        catch (IOException localIOException2)
        {
          boolean bool2;
          Object localObject3;
          Object localObject2;
          continue;
        }
        try
        {
          paramBoolean1 = m.a((String)localObject1, paramBoolean1);
          bool1 = paramBoolean1;
          if (!paramBoolean2) {
            break;
          }
          bool1 = paramBoolean1;
          if (!paramBoolean1) {
            break;
          }
          bool1 = paramBoolean1;
          if (!bk.f()) {
            break;
          }
          bool1 = paramBoolean1;
          if (!ap.bC((String)localObject1)) {
            break;
          }
          try
          {
            com.estrongs.fs.impl.media.e.e((String)localObject1);
            return paramBoolean1;
          }
          catch (MediaStoreInsertException paramString)
          {
            paramString.printStackTrace();
            cm.b();
            return paramBoolean1;
          }
          if (((File)localObject1).exists()) {
            break label360;
          }
          bool1 = ((File)localObject1).createNewFile();
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return false;
        }
        localIOException1 = localIOException1;
        bool1 = false;
        localIOException1.printStackTrace();
        continue;
        bool2 = false;
        continue;
        bool1 = k.b(paramString, paramBoolean1);
        localObject2 = paramString;
        continue;
      }
      label316:
      paramString = com.estrongs.a.a.getCurrentTask();
      bool2 = bool1;
      localObject3 = localObject2;
      if (paramString != null)
      {
        paramString.setTaskResult(17, null);
        localObject3 = localObject2;
        bool2 = bool1;
      }
      label345:
      paramBoolean1 = bool2;
      localObject2 = localObject3;
      continue;
      label360:
      bool1 = false;
    }
  }
  
  public static f b(String paramString)
  {
    if (paramString.startsWith("file:///")) {}
    for (paramString = new File(URI.create(paramString));; paramString = new File(paramString)) {
      return new f(paramString);
    }
  }
  
  public static OutputStream b(String paramString, boolean paramBoolean)
  {
    return b(paramString, paramBoolean, true);
  }
  
  public static OutputStream b(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject3;
    Object localObject2;
    if (!paramBoolean1)
    {
      try
      {
        if ((!l(paramString)) || (!m.a(null, false))) {
          break label149;
        }
        localObject3 = m.e(paramString);
        Object localObject1 = localObject3;
        if (localObject3 != null) {
          break label147;
        }
        throw new FileSystemException("Permission denied");
      }
      catch (Exception localException)
      {
        if (!paramBoolean2) {
          break label268;
        }
      }
      if ((ac.a() < 11) || (!ap.bJ(paramString))) {
        break label268;
      }
      if (ac.a() < 21) {
        break label237;
      }
      localObject2 = a.a(paramString, false);
      if ((localObject2 == null) || (!bk.l()) || (!(com.estrongs.a.a.getCurrentTask() instanceof r))) {
        break label280;
      }
      getCurrentTaskt.add(paramString);
      localObject3 = localObject2;
    }
    for (;;)
    {
      localObject2 = localObject3;
      if (localObject3 == null)
      {
        localObject2 = localObject3;
        if (ac.a() >= 18)
        {
          if (!m.c(true)) {
            break label247;
          }
          localObject2 = m.e(paramString);
        }
      }
      label147:
      label149:
      label237:
      label247:
      do
      {
        return (OutputStream)localObject2;
        File localFile;
        if (paramString.startsWith("file://")) {
          localFile = new File(new URI(paramString));
        }
        for (localObject3 = new FileOutputStream(localFile);; localObject3 = new FileOutputStream(paramString))
        {
          localObject2 = localObject3;
          if (!z.aa) {
            break;
          }
          localObject2 = localObject3;
          if (ac.a() < 9) {
            break;
          }
          a(localFile);
          return (OutputStream)localObject3;
          localFile = new File(paramString);
        }
        localObject3 = k.a(paramString, false);
        break;
        paramString = com.estrongs.a.a.getCurrentTask();
        localObject2 = localObject3;
      } while (paramString == null);
      paramString.setTaskResult(17, null);
      return (OutputStream)localObject3;
      label268:
      throw new FileSystemException(((Exception)localObject2).getMessage());
      label280:
      localObject3 = localObject2;
    }
  }
  
  private static void b(File paramFile, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    if (paramFile.isDirectory())
    {
      paramFile = paramFile.listFiles();
      if (paramFile != null)
      {
        int j = paramFile.length;
        int i = 0;
        while (i < j)
        {
          b(paramFile[i], paramList1, paramList2, paramList3, paramList4);
          i += 1;
        }
      }
    }
    else
    {
      if (!bk.f()) {
        break label70;
      }
      paramList4.add(paramFile.getAbsolutePath());
    }
    label70:
    do
    {
      return;
      if (b.a(paramFile.getAbsolutePath()))
      {
        paramList1.add(paramFile.getAbsolutePath());
        return;
      }
      if (b.b(paramFile.getAbsolutePath()))
      {
        paramList2.add(paramFile.getAbsolutePath());
        return;
      }
    } while (!b.c(paramFile.getAbsolutePath()));
    paramList3.add(paramFile.getAbsolutePath());
  }
  
  private static void b(String paramString1, String paramString2)
  {
    i(paramString1);
    j(paramString2);
  }
  
  public static com.estrongs.fs.c c(String paramString)
  {
    com.estrongs.fs.c localc = d(paramString);
    if (localc == null) {
      return null;
    }
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    if ((d) && (!m.a(null, false)))
    {
      c = "Folder";
      paramString = new File(paramString).listFiles();
      if (paramString != null)
      {
        int j = paramString.length;
        int i = 0;
        if (i < j)
        {
          Object localObject = paramString[i];
          if ((locala != null) && (locala.taskStopped())) {
            return localc;
          }
          if (((File)localObject).isDirectory()) {
            f += 1;
          }
          for (;;)
          {
            i += 1;
            break;
            g += 1;
          }
        }
      }
    }
    return localc;
  }
  
  public static com.estrongs.fs.c d(String paramString)
  {
    if ((l(paramString)) && (m.a(null, false)))
    {
      localObject = m.d(paramString);
      if (localObject != null)
      {
        if (d) {}
        for (c = "Folder"; o.startsWith("."); c = "File")
        {
          m = true;
          return (com.estrongs.fs.c)localObject;
        }
        m = false;
        return (com.estrongs.fs.c)localObject;
      }
    }
    Object localObject = new File(paramString);
    if (!((File)localObject).exists()) {
      return null;
    }
    paramString = new com.estrongs.fs.c(paramString);
    d = ((File)localObject).isDirectory();
    c = "File";
    e = ((File)localObject).length();
    j = ((File)localObject).lastModified();
    k = ((File)localObject).canRead();
    l = ((File)localObject).canWrite();
    m = ((File)localObject).isHidden();
    return paramString;
  }
  
  public static long e(String paramString)
  {
    com.estrongs.fs.c localc;
    if ((l(paramString)) && (m.a(null, false)))
    {
      localc = m.d(paramString);
      if (localc != null) {
        if (!d) {}
      }
    }
    do
    {
      return -1L;
      return e;
      paramString = new File(paramString);
    } while ((!paramString.exists()) || (!paramString.isFile()));
    return paramString.length();
  }
  
  public static OutputStream f(String paramString)
  {
    return b(paramString, false);
  }
  
  public static boolean g(String paramString)
  {
    if ((l(paramString)) && (m.a(null, false)))
    {
      do
      {
        for (;;)
        {
          File localFile;
          boolean bool1;
          try
          {
            localFile = new File(paramString);
            bool1 = a(localFile.getCanonicalPath());
            if (bool1) {
              return true;
            }
          }
          catch (IOException paramString)
          {
            paramString.printStackTrace();
            return false;
          }
          catch (FileSystemException paramString)
          {
            paramString.printStackTrace();
            return false;
          }
          try
          {
            bool1 = m.a(paramString, true);
            if (bool1) {}
          }
          catch (FileSystemException localFileSystemException)
          {
            for (;;)
            {
              break;
              boolean bool2 = true;
            }
          }
        }
        localFile = localFile.getCanonicalFile().getParentFile();
        if ((localFile == null) || ((!g(localFile.getCanonicalPath())) && (!a(localFile.getCanonicalPath())))) {
          break;
        }
        bool1 = m.a(paramString, true);
      } while (bool1);
      return false;
    }
    localFile = new File(paramString);
    if (!localFile.exists())
    {
      bool2 = localFile.mkdirs();
      if ((z.aa) && (ac.a() >= 9)) {
        a(localFile);
      }
      bool1 = bool2;
      if (!bool2)
      {
        bool1 = bool2;
        if (ac.a() >= 11)
        {
          bool1 = bool2;
          if (ap.bJ(paramString))
          {
            if (ac.a() < 21) {
              break label215;
            }
            bool2 = a.c(paramString, true);
            bool1 = bool2;
            if (!bool2)
            {
              bool1 = bool2;
              if ((ac.a() >= 18) && (!m.c(true))) {
                break label227;
              }
            }
          }
        }
      }
      for (;;)
      {
        try
        {
          bool1 = m.a(paramString, true);
          return bool1;
        }
        catch (Exception paramString)
        {
          label215:
          return false;
        }
        bool2 = k.b(paramString, true);
        break;
        label227:
        paramString = com.estrongs.a.a.getCurrentTask();
        bool1 = bool2;
        if (paramString != null)
        {
          paramString.setTaskResult(17, null);
          bool1 = bool2;
        }
      }
    }
  }
  
  public static boolean h(String paramString)
  {
    boolean bool = false;
    if ((l(paramString)) && (m.a(null, false)))
    {
      com.estrongs.fs.c localc = m.d(paramString);
      if (localc != null) {
        bool = d;
      }
    }
    do
    {
      return bool;
      paramString = new File(paramString);
    } while (!paramString.exists());
    return paramString.isDirectory();
  }
  
  public static void i(String paramString)
  {
    if (ap.bl(paramString))
    {
      if (!bk.f()) {
        break label19;
      }
      com.estrongs.fs.impl.media.e.f(paramString);
    }
    label19:
    do
    {
      return;
      if (b.c(paramString))
      {
        com.estrongs.fs.impl.v.c.b().b(paramString);
        return;
      }
      if (b.b(paramString))
      {
        d.b().b(paramString);
        return;
      }
    } while (!b.a(paramString));
    com.estrongs.fs.impl.p.c.b().b(paramString);
  }
  
  public static void j(String paramString)
  {
    if (ap.bC(paramString))
    {
      try
      {
        if (bk.f())
        {
          com.estrongs.fs.impl.media.e.e(paramString);
          return;
        }
        if (b.c(paramString))
        {
          com.estrongs.fs.impl.v.c.b().a(paramString);
          return;
        }
      }
      catch (MediaStoreInsertException paramString)
      {
        paramString.printStackTrace();
        cm.b();
        return;
      }
      if (b.b(paramString))
      {
        d.b().a(paramString);
        return;
      }
      if (b.a(paramString)) {
        com.estrongs.fs.impl.p.c.b().a(paramString);
      }
    }
  }
  
  /* Error */
  public static boolean k(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: iconst_1
    //   3: istore_1
    //   4: aload_0
    //   5: invokestatic 620	com/estrongs/android/util/ap:bU	(Ljava/lang/String;)Ljava/lang/String;
    //   8: astore_0
    //   9: aload_0
    //   10: ifnonnull +5 -> 15
    //   13: iconst_0
    //   14: ireturn
    //   15: aload_0
    //   16: invokestatic 624	com/estrongs/android/pop/b:b	()Ljava/lang/String;
    //   19: invokevirtual 221	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   22: ifne +133 -> 155
    //   25: getstatic 23	com/estrongs/fs/impl/local/i:b	Ljava/util/Map;
    //   28: aload_0
    //   29: invokeinterface 627 2 0
    //   34: ifeq +19 -> 53
    //   37: getstatic 23	com/estrongs/fs/impl/local/i:b	Ljava/util/Map;
    //   40: aload_0
    //   41: invokeinterface 631 2 0
    //   46: checkcast 246	java/lang/Boolean
    //   49: invokevirtual 634	java/lang/Boolean:booleanValue	()Z
    //   52: ireturn
    //   53: new 404	java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial 405	java/lang/StringBuilder:<init>	()V
    //   60: aload_0
    //   61: invokevirtual 409	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: ldc_w 636
    //   67: invokevirtual 409	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokestatic 641	java/lang/System:currentTimeMillis	()J
    //   73: invokevirtual 644	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   76: invokevirtual 416	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: astore_3
    //   80: aload_3
    //   81: iconst_0
    //   82: iconst_0
    //   83: invokestatic 494	com/estrongs/fs/impl/local/i:b	(Ljava/lang/String;ZZ)Ljava/io/OutputStream;
    //   86: astore 4
    //   88: aload 4
    //   90: ifnull +60 -> 150
    //   93: aload 4
    //   95: invokevirtual 647	java/io/OutputStream:close	()V
    //   98: getstatic 23	com/estrongs/fs/impl/local/i:b	Ljava/util/Map;
    //   101: aload_0
    //   102: iload_1
    //   103: invokestatic 253	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   106: invokeinterface 651 3 0
    //   111: pop
    //   112: iload_1
    //   113: istore_2
    //   114: new 61	java/io/File
    //   117: dup
    //   118: aload_3
    //   119: invokespecial 74	java/io/File:<init>	(Ljava/lang/String;)V
    //   122: invokevirtual 78	java/io/File:exists	()Z
    //   125: ifeq +30 -> 155
    //   128: new 61	java/io/File
    //   131: dup
    //   132: aload_3
    //   133: invokespecial 74	java/io/File:<init>	(Ljava/lang/String;)V
    //   136: invokevirtual 302	java/io/File:delete	()Z
    //   139: pop
    //   140: iload_1
    //   141: ireturn
    //   142: astore_0
    //   143: iconst_0
    //   144: ireturn
    //   145: astore 4
    //   147: goto -49 -> 98
    //   150: iconst_0
    //   151: istore_1
    //   152: goto -54 -> 98
    //   155: iload_2
    //   156: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	paramString	String
    //   3	149	1	bool1	boolean
    //   1	155	2	bool2	boolean
    //   79	54	3	str	String
    //   86	8	4	localOutputStream	OutputStream
    //   145	1	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   4	9	142	com/estrongs/fs/FileSystemException
    //   15	53	142	com/estrongs/fs/FileSystemException
    //   53	88	142	com/estrongs/fs/FileSystemException
    //   93	98	142	com/estrongs/fs/FileSystemException
    //   98	112	142	com/estrongs/fs/FileSystemException
    //   114	140	142	com/estrongs/fs/FileSystemException
    //   93	98	145	java/lang/Exception
  }
  
  private static boolean l(String paramString)
  {
    String str = ap.j();
    if (ap.bC(paramString)) {}
    while ((str != null) && (paramString.startsWith(str))) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */