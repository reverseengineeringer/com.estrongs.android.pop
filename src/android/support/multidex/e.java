package android.support.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

final class e
{
  private static Method a;
  
  static
  {
    try
    {
      a = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      a = null;
    }
  }
  
  private static SharedPreferences a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 11) {}
    for (int i = 0;; i = 4) {
      return paramContext.getSharedPreferences("multidex.version", i);
    }
  }
  
  static List<File> a(Context paramContext, ApplicationInfo paramApplicationInfo, File paramFile, boolean paramBoolean)
  {
    Log.i("MultiDex", "MultiDexExtractor.load(" + sourceDir + ", " + paramBoolean + ")");
    File localFile = new File(sourceDir);
    long l = c(localFile);
    if ((!paramBoolean) && (!a(paramContext, localFile, l))) {}
    for (;;)
    {
      try
      {
        paramApplicationInfo = a(paramContext, localFile, paramFile);
        paramContext = paramApplicationInfo;
      }
      catch (IOException paramApplicationInfo)
      {
        Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", paramApplicationInfo);
        paramApplicationInfo = a(localFile, paramFile);
        a(paramContext, b(localFile), l, paramApplicationInfo.size() + 1);
        paramContext = paramApplicationInfo;
        continue;
      }
      Log.i("MultiDex", "load found " + paramContext.size() + " secondary dex files");
      return paramContext;
      Log.i("MultiDex", "Detected that extraction must be performed.");
      paramApplicationInfo = a(localFile, paramFile);
      a(paramContext, b(localFile), l, paramApplicationInfo.size() + 1);
      paramContext = paramApplicationInfo;
    }
  }
  
  private static List<File> a(Context paramContext, File paramFile1, File paramFile2)
  {
    Log.i("MultiDex", "loading existing secondary dex files");
    paramFile1 = paramFile1.getName() + ".classes";
    int j = a(paramContext).getInt("dex.number", 1);
    paramContext = new ArrayList(j);
    int i = 2;
    while (i <= j)
    {
      File localFile = new File(paramFile2, paramFile1 + i + ".zip");
      if (localFile.isFile())
      {
        paramContext.add(localFile);
        if (!a(localFile))
        {
          Log.i("MultiDex", "Invalid zip file: " + localFile);
          throw new IOException("Invalid ZIP file.");
        }
      }
      else
      {
        throw new IOException("Missing extracted secondary dex file '" + localFile.getPath() + "'");
      }
      i += 1;
    }
    return paramContext;
  }
  
  private static List<File> a(File paramFile1, File paramFile2)
  {
    String str2 = paramFile1.getName() + ".classes";
    a(paramFile2, str2);
    localArrayList = new ArrayList();
    localZipFile = new ZipFile(paramFile1);
    try
    {
      paramFile1 = localZipFile.getEntry("classes" + 2 + ".dex");
      j = 2;
    }
    finally
    {
      for (;;)
      {
        try
        {
          int j;
          File localFile;
          boolean bool;
          int i;
          localZipFile.close();
          throw paramFile1;
          j += 1;
          paramFile1 = localZipFile.getEntry("classes" + j + ".dex");
          continue;
          try
          {
            localZipFile.close();
            return localArrayList;
          }
          catch (IOException paramFile1)
          {
            Log.w("MultiDex", "Failed to close resource", paramFile1);
            return localArrayList;
          }
        }
        catch (IOException paramFile2)
        {
          Log.w("MultiDex", "Failed to close resource", paramFile2);
          continue;
        }
        continue;
        String str1 = "failed";
      }
    }
    if (paramFile1 != null)
    {
      localFile = new File(paramFile2, str2 + j + ".zip");
      localArrayList.add(localFile);
      Log.i("MultiDex", "Extraction is needed for file " + localFile);
      bool = false;
      i = 0;
      while ((i < 3) && (!bool))
      {
        i += 1;
        a(localZipFile, paramFile1, localFile, str2);
        bool = a(localFile);
        StringBuilder localStringBuilder = new StringBuilder().append("Extraction ");
        if (!bool) {
          break label444;
        }
        str1 = "success";
        Log.i("MultiDex", str1 + " - length " + localFile.getAbsolutePath() + ": " + localFile.length());
        if (bool) {
          break label441;
        }
        localFile.delete();
        if (!localFile.exists()) {
          break label441;
        }
        Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + localFile.getPath() + "'");
      }
      if (!bool) {
        throw new IOException("Could not create zip file " + localFile.getAbsolutePath() + " for secondary dex (" + j + ")");
      }
    }
  }
  
  private static void a(Context paramContext, long paramLong1, long paramLong2, int paramInt)
  {
    paramContext = a(paramContext).edit();
    paramContext.putLong("timestamp", paramLong1);
    paramContext.putLong("crc", paramLong2);
    paramContext.putInt("dex.number", paramInt);
    a(paramContext);
  }
  
  private static void a(SharedPreferences.Editor paramEditor)
  {
    if (a != null) {}
    try
    {
      a.invoke(paramEditor, new Object[0]);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      paramEditor.commit();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
  }
  
  private static void a(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable)
    {
      Log.w("MultiDex", "Failed to close resource", paramCloseable);
    }
  }
  
  private static void a(File paramFile, String paramString)
  {
    d(paramFile.getParentFile());
    d(paramFile);
    paramString = paramFile.listFiles(new f(paramString));
    if (paramString == null)
    {
      Log.w("MultiDex", "Failed to list secondary dex dir content (" + paramFile.getPath() + ").");
      return;
    }
    int j = paramString.length;
    int i = 0;
    label69:
    if (i < j)
    {
      paramFile = paramString[i];
      Log.i("MultiDex", "Trying to delete old file " + paramFile.getPath() + " of size " + paramFile.length());
      if (paramFile.delete()) {
        break label163;
      }
      Log.w("MultiDex", "Failed to delete old file " + paramFile.getPath());
    }
    for (;;)
    {
      i += 1;
      break label69;
      break;
      label163:
      Log.i("MultiDex", "Deleted old file " + paramFile.getPath());
    }
  }
  
  private static void a(ZipFile paramZipFile, ZipEntry paramZipEntry, File paramFile, String paramString)
  {
    paramZipFile = paramZipFile.getInputStream(paramZipEntry);
    paramString = File.createTempFile(paramString, ".zip", paramFile.getParentFile());
    Log.i("MultiDex", "Extracting " + paramString.getPath());
    try
    {
      ZipOutputStream localZipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(paramString)));
      ZipEntry localZipEntry;
      int i;
      a(paramZipFile);
    }
    finally
    {
      try
      {
        localZipEntry = new ZipEntry("classes.dex");
        localZipEntry.setTime(paramZipEntry.getTime());
        localZipOutputStream.putNextEntry(localZipEntry);
        paramZipEntry = new byte['䀀'];
        for (i = paramZipFile.read(paramZipEntry); i != -1; i = paramZipFile.read(paramZipEntry)) {
          localZipOutputStream.write(paramZipEntry, 0, i);
        }
        localZipOutputStream.closeEntry();
        localZipOutputStream.close();
        Log.i("MultiDex", "Renaming to " + paramFile.getPath());
        if (paramString.renameTo(paramFile)) {
          break label253;
        }
        throw new IOException("Failed to rename \"" + paramString.getAbsolutePath() + "\" to \"" + paramFile.getAbsolutePath() + "\"");
      }
      finally
      {
        localZipOutputStream.close();
      }
      paramZipEntry = finally;
      a(paramZipFile);
      paramString.delete();
    }
    label253:
    paramString.delete();
  }
  
  private static boolean a(Context paramContext, File paramFile, long paramLong)
  {
    paramContext = a(paramContext);
    return (paramContext.getLong("timestamp", -1L) != b(paramFile)) || (paramContext.getLong("crc", -1L) != paramLong);
  }
  
  static boolean a(File paramFile)
  {
    try
    {
      ZipFile localZipFile = new ZipFile(paramFile);
      try
      {
        localZipFile.close();
        return true;
      }
      catch (IOException localIOException1)
      {
        Log.w("MultiDex", "Failed to close zip file: " + paramFile.getAbsolutePath());
      }
    }
    catch (ZipException localZipException)
    {
      for (;;)
      {
        Log.w("MultiDex", "File " + paramFile.getAbsolutePath() + " is not a valid zip file.", localZipException);
      }
    }
    catch (IOException localIOException2)
    {
      for (;;)
      {
        Log.w("MultiDex", "Got an IOException trying to open zip file: " + paramFile.getAbsolutePath(), localIOException2);
      }
    }
    return false;
  }
  
  private static long b(File paramFile)
  {
    long l2 = paramFile.lastModified();
    long l1 = l2;
    if (l2 == -1L) {
      l1 = l2 - 1L;
    }
    return l1;
  }
  
  private static long c(File paramFile)
  {
    long l2 = g.a(paramFile);
    long l1 = l2;
    if (l2 == -1L) {
      l1 = l2 - 1L;
    }
    return l1;
  }
  
  private static void d(File paramFile)
  {
    paramFile.mkdir();
    if (!paramFile.isDirectory())
    {
      File localFile = paramFile.getParentFile();
      if (localFile == null) {
        Log.e("MultiDex", "Failed to create dir " + paramFile.getPath() + ". Parent file is null.");
      }
      for (;;)
      {
        throw new IOException("Failed to create cache directory " + paramFile.getPath());
        Log.e("MultiDex", "Failed to create dir " + paramFile.getPath() + ". parent file is a dir " + localFile.isDirectory() + ", a file " + localFile.isFile() + ", exists " + localFile.exists() + ", readable " + localFile.canRead() + ", writable " + localFile.canWrite());
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.multidex.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */