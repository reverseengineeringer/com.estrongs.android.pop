package com.estrongs.fs.impl.p;

import android.content.Context;
import com.estrongs.a.b.o;
import com.estrongs.a.b.s;
import com.estrongs.a.q;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.util.LinkedList;
import java.util.List;
import jcifs.Config;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbFileInputStream;
import jcifs.smb.SmbFileOutputStream;
import jcifs.smb.SmbRandomAccessFile;

public class b
{
  static {}
  
  public static InputStream a(String paramString, long paramLong)
  {
    c localc = null;
    if (paramLong == 0L) {}
    try
    {
      return g(paramString);
    }
    catch (Exception paramString) {}
    SmbFile localSmbFile = new SmbFile(a(paramString));
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    if (!localSmbFile.exists())
    {
      if (locala != null)
      {
        locala.setTaskResult(2, new q(paramString, null));
        return null;
      }
    }
    else if (paramLong > localSmbFile.length())
    {
      if (locala != null)
      {
        locala.setTaskResult(10, new q("offset > filesize", null));
        return null;
      }
    }
    else
    {
      paramString = new SmbRandomAccessFile(localSmbFile, "r");
      if (paramLong != 0L) {
        paramString.seek(paramLong);
      }
      localc = new c(paramString, localSmbFile.length());
    }
    return localc;
    return null;
  }
  
  public static String a(String paramString)
  {
    if (paramString.indexOf("@") == -1) {
      return paramString;
    }
    Object localObject = am.y(paramString);
    String str1 = am.A(paramString);
    String str2 = am.br(paramString);
    paramString = am.D(paramString);
    StringBuffer localStringBuffer = new StringBuffer(paramString);
    if (!bd.a((CharSequence)localObject))
    {
      if (str2 != null) {
        break label136;
      }
      i = am.bf(paramString);
      localObject = new StringBuilder().append(e.a((String)localObject));
      if (str1 != null) {
        break label110;
      }
    }
    label110:
    for (paramString = "";; paramString = ":" + e.a(str1))
    {
      localStringBuffer.insert(i, paramString + "@");
      return localStringBuffer.toString();
    }
    label136:
    int i = am.bf(paramString);
    localObject = new StringBuilder().append(e.a(str2)).append(";").append(e.a((String)localObject));
    if (str1 == null) {}
    for (paramString = "";; paramString = ":" + e.a(str1))
    {
      localStringBuffer.insert(i, paramString + "@");
      break;
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
        Object localObject1 = new SmbFile(a(paramString));
        if (((SmbFile)localObject1).exists())
        {
          if (!((SmbFile)localObject1).isDirectory()) {
            return null;
          }
          com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
          localObject1 = ((SmbFile)localObject1).listFiles();
          if (localObject1 != null)
          {
            int j = localObject1.length;
            if (i < j)
            {
              localObject2 = localObject1[i];
              if (locala == null) {
                break label198;
              }
              if (locala.taskStopped()) {
                break label196;
              }
              break label198;
              localObject2 = new a((SmbFile)localObject2, paramString + ((SmbFile)localObject2).getName());
              if (parami.a((h)localObject2)) {
                localLinkedList.add(localObject2);
              }
              paramo.a(((a)localObject2).getAbsolutePath(), new long[0]);
              boolean bool = paramo.a();
              if (!bool) {
                break label203;
              }
            }
          }
          return localLinkedList;
        }
      }
      catch (SmbException paramString)
      {
        throw new FileSystemException(paramString);
      }
      catch (Throwable paramString)
      {
        throw new FileSystemException(paramString);
      }
      label196:
      return null;
      label198:
      if (localObject2 == null) {
        label203:
        i += 1;
      }
    }
  }
  
  public static void a(String paramString, h paramh)
  {
    try
    {
      new SmbFile(a(paramString)).setLastModified(paramh.lastModified());
      return;
    }
    catch (MalformedURLException paramString)
    {
      throw new FileSystemException(paramString);
    }
    catch (SmbException paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static boolean a(Context paramContext, String paramString, s params)
  {
    try
    {
      params.a(paramString, new long[0]);
      paramContext = new SmbFile(a(paramString));
      if (!paramContext.exists())
      {
        params.a(new FileNotFoundException(paramString));
        return false;
      }
      paramContext.delete();
      return true;
    }
    catch (MalformedURLException paramContext)
    {
      throw new FileSystemException(paramContext);
    }
    catch (SmbException paramContext)
    {
      throw new FileSystemException(paramContext);
    }
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    SmbFile localSmbFile;
    try
    {
      localSmbFile = new SmbFile(a(paramString1));
      if (!localSmbFile.exists()) {
        throw new FileSystemException(new FileNotFoundException(am.D(paramString1)));
      }
    }
    catch (MalformedURLException paramString1)
    {
      throw new FileSystemException(paramString1);
      paramString2 = new SmbFile(a(paramString2));
      if (paramString2.exists()) {
        throw new FileExistException(am.D(paramString1));
      }
    }
    catch (SmbException paramString1)
    {
      throw new FileSystemException(paramString1);
    }
    localSmbFile.renameTo(paramString2);
    return true;
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    try
    {
      paramString = new SmbFile(a(paramString));
      if (paramBoolean)
      {
        if (!paramString.exists())
        {
          paramString.mkdir();
          return true;
        }
      }
      else if (!paramString.exists())
      {
        paramString.createNewFile();
        return true;
      }
    }
    catch (MalformedURLException paramString)
    {
      throw new FileSystemException(paramString);
    }
    catch (SmbException paramString)
    {
      throw new FileSystemException(paramString);
    }
    return false;
  }
  
  public static OutputStream b(String paramString, long paramLong)
  {
    if (paramLong == 0L) {
      return h(paramString);
    }
    try
    {
      paramString = new d(new SmbFile(a(paramString)), paramLong);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static boolean b(String paramString)
  {
    try
    {
      boolean bool = new SmbFile(a(paramString)).exists();
      return bool;
    }
    catch (SmbException paramString)
    {
      throw new FileSystemException(paramString);
    }
    catch (MalformedURLException paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static boolean b(String paramString1, String paramString2)
  {
    for (;;)
    {
      try
      {
        SmbFile localSmbFile1 = new SmbFile(a(paramString1));
        if (!localSmbFile1.exists()) {
          return false;
        }
        if (paramString2.charAt(paramString2.length() - 1) == '/')
        {
          paramString1 = paramString2;
          SmbFile localSmbFile2 = new SmbFile(a(paramString1));
          if (localSmbFile2.exists())
          {
            paramString1 = new SmbFile(am.e(paramString2) + "/" + am.d(paramString2) + (int)System.currentTimeMillis() + "/");
            localSmbFile1.renameTo(paramString1);
            localSmbFile2.delete();
            paramString1.renameTo(localSmbFile2);
            return true;
          }
        }
        else
        {
          paramString1 = paramString2 + "/";
          continue;
        }
        paramString1 = localSmbFile1;
      }
      catch (MalformedURLException paramString1)
      {
        throw new FileSystemException(paramString1);
      }
      catch (SmbException paramString1)
      {
        throw new FileSystemException(paramString1);
      }
    }
  }
  
  public static boolean c(String paramString)
  {
    try
    {
      paramString = new SmbFile(a(paramString));
      if (!paramString.exists()) {
        paramString.mkdirs();
      }
      return true;
    }
    catch (SmbException paramString)
    {
      throw new FileSystemException(paramString);
    }
    catch (MalformedURLException paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static long d(String paramString)
  {
    try
    {
      SmbFile localSmbFile = new SmbFile(a(paramString));
      if (localSmbFile.exists())
      {
        if (localSmbFile.isFile()) {
          return localSmbFile.length();
        }
      }
      else {
        throw new FileNotFoundException(am.D(paramString));
      }
    }
    catch (SmbException paramString)
    {
      throw new FileSystemException(paramString);
    }
    catch (FileNotFoundException paramString)
    {
      throw new FileSystemException(paramString);
    }
    catch (MalformedURLException paramString)
    {
      throw new FileSystemException(paramString);
    }
    return 0L;
  }
  
  public static boolean e(String paramString)
  {
    try
    {
      paramString = new SmbFile(a(paramString));
      if (!paramString.exists()) {
        return false;
      }
      boolean bool = paramString.isDirectory();
      return bool;
    }
    catch (MalformedURLException paramString)
    {
      throw new FileSystemException(paramString);
    }
    catch (SmbException paramString)
    {
      throw new FileSystemException(paramString);
    }
  }
  
  public static com.estrongs.fs.c f(String paramString)
  {
    for (;;)
    {
      int i;
      try
      {
        localSmbFile = new SmbFile(a(paramString));
        if (!localSmbFile.exists()) {
          return null;
        }
        paramString = new com.estrongs.fs.c(paramString);
        d = localSmbFile.isDirectory();
        if (d)
        {
          paramString.a(localSmbFile.getType());
          SmbFile[] arrayOfSmbFile = localSmbFile.listFiles();
          if (arrayOfSmbFile == null) {
            continue;
          }
          int j = arrayOfSmbFile.length;
          i = 0;
          if (i >= j) {
            continue;
          }
          if (arrayOfSmbFile[i].isDirectory()) {
            f += 1;
          } else {
            g += 1;
          }
        }
      }
      catch (MalformedURLException paramString)
      {
        SmbFile localSmbFile;
        throw new FileSystemException(paramString);
        c = "File";
        e = localSmbFile.length();
        paramString.j = localSmbFile.lastModified();
        h = localSmbFile.createTime();
        k = localSmbFile.canRead();
        l = localSmbFile.canWrite();
        m = localSmbFile.isHidden();
        return paramString;
      }
      catch (SmbException paramString)
      {
        throw new FileSystemException(paramString);
      }
      catch (NullPointerException paramString)
      {
        throw new FileSystemException(paramString);
      }
      i += 1;
    }
  }
  
  public static InputStream g(String paramString)
  {
    try
    {
      paramString = new SmbFileInputStream(a(paramString));
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString.getMessage());
    }
  }
  
  public static OutputStream h(String paramString)
  {
    try
    {
      paramString = new SmbFileOutputStream(a(paramString));
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new FileSystemException(paramString.getMessage());
    }
  }
  
  public static a i(String paramString)
  {
    try
    {
      paramString = new a(new SmbFile(a(paramString)), paramString);
      return paramString;
    }
    catch (MalformedURLException paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.p.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */