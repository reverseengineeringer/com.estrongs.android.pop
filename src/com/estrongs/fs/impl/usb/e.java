package com.estrongs.fs.impl.usb;

import android.content.Context;
import android.hardware.usb.UsbDevice;
import com.estrongs.a.a.n;
import com.estrongs.a.b.o;
import com.estrongs.a.b.s;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.av;
import com.estrongs.android.util.l;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.w;
import com.estrongs.fs.x;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class e
{
  private static final String a = e.class.getSimpleName();
  private static g[] b = null;
  private static Object c = new Object();
  private static boolean d = false;
  private static String e = null;
  private static n f = new f();
  
  static
  {
    com.estrongs.a.a.addTaskAllFinishedListener(f);
  }
  
  public static g a(UsbDevice paramUsbDevice)
  {
    for (;;)
    {
      int i;
      synchronized (c)
      {
        if (ac.a() < 12) {
          return null;
        }
        if (b != null)
        {
          g[] arrayOfg = b;
          int j = arrayOfg.length;
          i = 0;
          if (i < j)
          {
            g localg = arrayOfg[i];
            if (!localg.i().equalsIgnoreCase(paramUsbDevice.getDeviceId() + "")) {
              break label93;
            }
            return localg;
          }
        }
        return null;
      }
      label93:
      i += 1;
    }
  }
  
  public static InputStream a(String paramString, long paramLong)
  {
    b localb = null;
    try
    {
      com.estrongs.fs.impl.usb.fs.c localc = c(paramString);
      com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
      if (localc == null)
      {
        if (locala != null)
        {
          locala.setTaskResult(2, new q(paramString, null));
          return null;
        }
      }
      else if (paramLong > localc.f())
      {
        if (locala != null)
        {
          locala.setTaskResult(10, new q("offset > filesize", null));
          return null;
        }
      }
      else {
        localb = new b(localc, paramLong);
      }
      return localb;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static ArrayList<h> a(w paramw)
  {
    synchronized (c)
    {
      ArrayList localArrayList = new ArrayList();
      if (ac.a() < 12) {
        return null;
      }
      if (c()) {
        a();
      }
      if (b != null)
      {
        g[] arrayOfg = b;
        int j = arrayOfg.length;
        int i = 0;
        while (i < j)
        {
          g localg = arrayOfg[i];
          localArrayList.add(new x(localg.j(), paramw, localg.k()));
          i += 1;
        }
      }
      return localArrayList;
    }
  }
  
  public static List<h> a(String paramString, i parami, o<String> paramo)
  {
    int i = 0;
    LinkedList localLinkedList = new LinkedList();
    for (;;)
    {
      Object localObject2;
      try
      {
        Object localObject1;
        if (a(paramString))
        {
          localObject1 = a(b(paramString));
          com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
          if (localObject1 != null)
          {
            int j = localObject1.length;
            if (i < j)
            {
              localObject2 = localObject1[i];
              if ((locala == null) || (!locala.taskStopped())) {
                break label240;
              }
              return null;
            }
          }
        }
        else
        {
          localObject1 = c(paramString);
          if ((localObject1 == null) || (!((com.estrongs.fs.impl.usb.fs.c)localObject1).a())) {
            break label238;
          }
          localObject1 = ((com.estrongs.fs.impl.usb.fs.c)localObject1).e();
          continue;
          if ((((com.estrongs.fs.impl.usb.fs.c)localObject2).b() == null) || (((com.estrongs.fs.impl.usb.fs.c)localObject2).b().equals(".")) || (((com.estrongs.fs.impl.usb.fs.c)localObject2).b().equals(".."))) {
            break label245;
          }
          localObject2 = new c((com.estrongs.fs.impl.usb.fs.c)localObject2, paramString + ((com.estrongs.fs.impl.usb.fs.c)localObject2).b());
          if (parami.a((h)localObject2)) {
            localLinkedList.add(localObject2);
          }
          paramo.a(((c)localObject2).getAbsolutePath(), new long[0]);
          boolean bool = paramo.a();
          if (!bool) {
            break label245;
          }
        }
        return localLinkedList;
      }
      catch (Throwable paramString)
      {
        throw new FileSystemException(paramString);
      }
      label238:
      return null;
      label240:
      if (localObject2 == null) {
        label245:
        i += 1;
      }
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public static boolean a(Context paramContext, String paramString, s params)
  {
    com.estrongs.fs.impl.usb.fs.c localc;
    try
    {
      params.a(paramString, new long[0]);
      localc = c(paramString);
      if (localc == null)
      {
        params.a(new FileNotFoundException(paramString));
        return false;
      }
      if (localc.c() == null) {
        throw new RuntimeException(paramContext.getString(2131231905));
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      throw new FileSystemException(paramContext);
    }
    localc.h();
    return true;
  }
  
  public static boolean a(String paramString)
  {
    if ((paramString == null) || (!paramString.startsWith("usb://")) || (b == null)) {}
    int i;
    do
    {
      return false;
      paramString = paramString.substring("usb://".length());
      i = paramString.indexOf("/");
    } while ((i >= 0) && (i != paramString.length() - 1));
    return true;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    try
    {
      localc = c(paramString1);
      if (localc == null) {
        throw new FileSystemException(new FileNotFoundException(paramString1));
      }
    }
    catch (IOException paramString2)
    {
      com.estrongs.fs.impl.usb.fs.c localc;
      throw new FileExistException(paramString1);
      if (localc.c() == null)
      {
        l.e(a, "can not rename root dir");
        return false;
      }
      localc.a(ap.d(paramString2));
      return true;
    }
    catch (Exception paramString1)
    {
      throw new FileSystemException(paramString1);
    }
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    com.estrongs.fs.impl.usb.fs.c localc;
    for (;;)
    {
      int i;
      try
      {
        localc = c(ap.bB(paramString));
        if (localc == null)
        {
          l.e(a, "Failed to get the path " + ap.bB(paramString));
          return false;
        }
        paramString = ap.d(paramString);
        String[] arrayOfString = localc.d();
        int j = arrayOfString.length;
        i = 0;
        if (i >= j) {
          break;
        }
        if (arrayOfString[i].equalsIgnoreCase(paramString))
        {
          l.e(a, "The file exist.");
          return false;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        throw new FileSystemException(paramString);
      }
      i += 1;
    }
    if (paramBoolean) {
      localc.b(paramString);
    } else {
      localc.c(paramString);
    }
    return true;
  }
  
  private static com.estrongs.fs.impl.usb.fs.c[] a(g paramg)
  {
    if (paramg == null) {
      return null;
    }
    com.estrongs.fs.impl.usb.fs.c[] arrayOfc = new com.estrongs.fs.impl.usb.fs.c[paramg.h().size()];
    int i = 0;
    while (i < paramg.h().size())
    {
      arrayOfc[i] = ((com.estrongs.fs.impl.usb.a.b)paramg.h().get(i)).c().a();
      i += 1;
    }
    return arrayOfc;
  }
  
  public static g[] a()
  {
    synchronized (c)
    {
      if (ac.a() < 12) {
        return null;
      }
      if (b != null)
      {
        g[] arrayOfg1 = b;
        int j = arrayOfg1.length;
        int i = 0;
        for (;;)
        {
          if (i < j)
          {
            g localg = arrayOfg1[i];
            try
            {
              localg.e();
              i += 1;
            }
            catch (Exception localException)
            {
              for (;;)
              {
                localException.printStackTrace();
              }
            }
          }
        }
      }
    }
    b = g.a();
    g[] arrayOfg2 = b;
    return arrayOfg2;
  }
  
  public static g b(String paramString)
  {
    int i = 0;
    Object localObject1 = null;
    if ((paramString == null) || (!paramString.startsWith("usb://")) || (b == null)) {}
    do
    {
      return null;
      paramString = paramString.substring("usb://".length()).split("/");
    } while (paramString.length < 1);
    String str = paramString[0];
    Object localObject2 = c;
    paramString = (String)localObject1;
    for (;;)
    {
      try
      {
        if (b != null)
        {
          paramString = (String)localObject1;
          if (i < b.length)
          {
            if (!b[i].i().equalsIgnoreCase(str)) {
              break label106;
            }
            paramString = b[i];
          }
        }
        return paramString;
      }
      finally {}
      label106:
      i += 1;
    }
  }
  
  public static OutputStream b(String paramString, long paramLong)
  {
    for (;;)
    {
      try
      {
        com.estrongs.fs.impl.usb.fs.c localc = c(paramString);
        if (localc == null)
        {
          localc = c(ap.bB(paramString));
          if (localc == null) {
            return null;
          }
        }
        paramString = localc;
      }
      catch (Throwable paramString)
      {
        try
        {
          paramString = localc.c(ap.d(paramString));
          paramString = new d(paramString, paramLong);
          return paramString;
        }
        catch (IOException paramString)
        {
          paramString.printStackTrace();
          throw new FileSystemException(paramString);
        }
        paramString = paramString;
        throw new FileSystemException(paramString);
      }
    }
  }
  
  public static boolean b(String paramString1, String paramString2)
  {
    com.estrongs.fs.impl.usb.fs.c localc;
    try
    {
      localc = c(paramString1);
      if (localc == null) {
        throw new FileNotFoundException(paramString1);
      }
    }
    catch (Exception paramString1)
    {
      throw new FileSystemException(paramString1);
    }
    paramString1 = ap.bB(paramString2);
    paramString2 = c(paramString1);
    if (paramString2 == null) {
      throw new FileNotFoundException(paramString1);
    }
    localc.b(paramString2);
    return true;
  }
  
  public static g[] b()
  {
    synchronized (c)
    {
      g[] arrayOfg = b;
      return arrayOfg;
    }
  }
  
  public static com.estrongs.fs.impl.usb.fs.c c(String paramString)
  {
    Object localObject1;
    Object localObject2;
    String[] arrayOfString;
    try
    {
      localObject1 = c;
      if (paramString != null) {}
      try
      {
        if ((!paramString.startsWith("usb://")) || (b == null)) {
          return null;
        }
        localObject2 = paramString.substring("usb://".length());
        arrayOfString = ((String)localObject2).split("/");
        if (arrayOfString.length > 1) {
          break label300;
        }
        return null;
      }
      finally {}
      if (i >= b.length) {
        break label295;
      }
      if (!b[i].i().equalsIgnoreCase(paramString)) {
        break label310;
      }
      paramString = b[i];
      label93:
      if (paramString == null) {
        return null;
      }
      String str = arrayOfString[1];
      Iterator localIterator = paramString.h().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        paramString = (com.estrongs.fs.impl.usb.a.b)localIterator.next();
      } while (!str.equalsIgnoreCase(paramString.d()));
      label152:
      if (paramString == null)
      {
        l.e(a, "getFile file failed to get partion " + (String)localObject2);
        throw new RuntimeException(FexApplication.a().getString(2131231905));
      }
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    paramString = paramString.c().a();
    int i = 2;
    for (;;)
    {
      int k;
      int j;
      if (i < arrayOfString.length)
      {
        localObject2 = paramString.e();
        k = localObject2.length;
        j = 0;
      }
      for (;;)
      {
        if (j < k)
        {
          paramString = localObject2[j];
          if (!paramString.b().equalsIgnoreCase(arrayOfString[i])) {}
        }
        else
        {
          while (paramString == null)
          {
            return null;
            return paramString;
            paramString = null;
          }
          paramString = null;
          break label152;
          label295:
          paramString = null;
          break label93;
          label300:
          paramString = arrayOfString[0];
          i = 0;
          break;
          label310:
          i += 1;
          break;
        }
        j += 1;
      }
      i += 1;
    }
  }
  
  public static boolean c()
  {
    if (ac.a() < 12) {
      return false;
    }
    g[] arrayOfg1 = g.a();
    synchronized (c)
    {
      if ((b == null) || (arrayOfg1 == null) || (arrayOfg1.length != b.length)) {
        return true;
      }
    }
    int m = localObject2.length;
    int i = 0;
    for (;;)
    {
      Object localObject3;
      g[] arrayOfg2;
      int n;
      int j;
      int k;
      if (i < m)
      {
        localObject3 = localObject2[i];
        arrayOfg2 = b;
        n = arrayOfg2.length;
        j = 0;
        k = 0;
      }
      for (;;)
      {
        if (j < n)
        {
          g localg = arrayOfg2[j];
          if (((g)localObject3).i().equalsIgnoreCase(localg.i())) {
            k = 1;
          }
        }
        else
        {
          if (k != 0) {
            break;
          }
          return true;
          return false;
        }
        j += 1;
      }
      i += 1;
    }
  }
  
  public static void d()
  {
    if (com.estrongs.a.a.isAllTaskFinished()) {
      synchronized (c)
      {
        if (b != null)
        {
          g[] arrayOfg = b;
          int j = arrayOfg.length;
          int i = 0;
          while (i < j)
          {
            arrayOfg[i].e();
            b = null;
            i += 1;
          }
        }
        return;
      }
    }
  }
  
  public static boolean d(String paramString)
  {
    try
    {
      paramString = c(paramString);
      return paramString != null;
    }
    catch (Throwable paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static boolean e()
  {
    if (d) {
      return true;
    }
    label74:
    for (;;)
    {
      try
      {
        Object localObject = ap.c();
        boolean bool2;
        if (localObject != null)
        {
          localObject = ((List)localObject).iterator();
          boolean bool1 = false;
          bool2 = bool1;
          if (((Iterator)localObject).hasNext())
          {
            if (!ap.bM(nextc)) {
              break label74;
            }
            d = true;
            bool1 = true;
            continue;
          }
        }
        else
        {
          bool2 = false;
        }
        return bool2;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return false;
      }
    }
  }
  
  public static boolean e(String paramString)
  {
    int i = 0;
    try
    {
      localc = c(paramString);
      if (localc != null) {
        return true;
      }
      str = ap.bB(paramString);
      if (str != null) {
        break label130;
      }
      return false;
    }
    catch (Exception paramString)
    {
      com.estrongs.fs.impl.usb.fs.c localc;
      String str;
      throw new FileSystemException(paramString);
    }
    str = ap.bB(str);
    label130:
    for (;;)
    {
      if (str != null)
      {
        localc = c(str);
        if (localc == null) {
          break;
        }
      }
      if (localc == null)
      {
        l.e(a, "Failed to get the path " + paramString);
        return false;
      }
      paramString = paramString.substring(str.length()).split("/");
      int j = paramString.length;
      while (i < j)
      {
        localc = localc.b(paramString[i]);
        i += 1;
      }
    }
    return true;
  }
  
  public static long f(String paramString)
  {
    try
    {
      localc = c(paramString);
      if (localc == null) {
        throw new FileNotFoundException(paramString);
      }
    }
    catch (FileNotFoundException paramString)
    {
      com.estrongs.fs.impl.usb.fs.c localc;
      throw new FileSystemException(paramString);
      if (localc.a()) {
        return 0L;
      }
      long l = localc.f();
      return l;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static String f()
  {
    if (e == null)
    {
      Object localObject = ap.c();
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          av localav = (av)((Iterator)localObject).next();
          if (ap.bM(c)) {
            e = ap.d(b);
          }
        }
      }
    }
    return e;
  }
  
  public static boolean g(String paramString)
  {
    try
    {
      paramString = c(paramString);
      if (paramString != null)
      {
        boolean bool = paramString.a();
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (Throwable paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static c h(String paramString)
  {
    try
    {
      com.estrongs.fs.impl.usb.fs.c localc = c(paramString);
      if (localc != null)
      {
        paramString = new c(localc, paramString);
        return paramString;
      }
      return null;
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static com.estrongs.fs.c i(String paramString)
  {
    boolean bool = true;
    for (;;)
    {
      com.estrongs.fs.impl.usb.fs.c localc;
      int i;
      try
      {
        localc = c(paramString);
        if (localc == null) {
          return null;
        }
        paramString = new com.estrongs.fs.c(paramString);
        d = localc.a();
        if (d)
        {
          com.estrongs.fs.impl.usb.fs.c[] arrayOfc = localc.e();
          if (arrayOfc == null) {
            break label133;
          }
          int j = arrayOfc.length;
          i = 0;
          if (i >= j) {
            break label133;
          }
          if (arrayOfc[i].a()) {
            f += 1;
          } else {
            g += 1;
          }
        }
      }
      catch (Exception paramString)
      {
        throw new FileSystemException(paramString);
      }
      c = "File";
      e = localc.f();
      label133:
      paramString.j = localc.i();
      h = localc.j();
      k = true;
      if (!localc.k()) {}
      for (;;)
      {
        l = bool;
        m = localc.l();
        return paramString;
        bool = false;
      }
      i += 1;
    }
  }
  
  public static OutputStream j(String paramString)
  {
    return b(paramString, 0L);
  }
  
  public static long k(String paramString)
  {
    paramString = m(paramString);
    if (paramString == null) {
      return 0L;
    }
    return paramString.e();
  }
  
  public static long l(String paramString)
  {
    paramString = m(paramString);
    if (paramString == null) {
      return 0L;
    }
    return paramString.f();
  }
  
  private static com.estrongs.fs.impl.usb.a.b m(String paramString)
  {
    int i = 0;
    for (;;)
    {
      Object localObject2;
      try
      {
        localObject1 = c;
        if (paramString != null) {}
        String str;
        try
        {
          if ((!paramString.startsWith("usb://")) || (b == null)) {
            return null;
          }
          str = paramString.substring("usb://".length());
          localObject2 = str.split("/");
          if (localObject2.length >= 1) {
            break label248;
          }
          return null;
        }
        finally {}
        if (i >= b.length) {
          break label243;
        }
        if (!b[i].i().equalsIgnoreCase(paramString)) {
          break label256;
        }
        paramString = b[i];
        if (paramString == null) {
          return null;
        }
        if (paramString.h().size() == 1)
        {
          paramString = (com.estrongs.fs.impl.usb.a.b)paramString.h().get(0);
          if (paramString == null)
          {
            l.e(a, "getFile file failed to get partion " + str);
            return null;
          }
        }
        else
        {
          if (localObject2.length < 2) {
            return null;
          }
          localObject2 = localObject2[1];
          Iterator localIterator = paramString.h().iterator();
          if (!localIterator.hasNext()) {
            break label238;
          }
          paramString = (com.estrongs.fs.impl.usb.a.b)localIterator.next();
          if (!((String)localObject2).equalsIgnoreCase(paramString.d())) {
            continue;
          }
          continue;
        }
        return paramString;
      }
      catch (Exception paramString)
      {
        Object localObject1;
        paramString.printStackTrace();
        return null;
      }
      label238:
      paramString = null;
      continue;
      label243:
      paramString = null;
      continue;
      label248:
      paramString = localObject2[0];
      continue;
      label256:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */