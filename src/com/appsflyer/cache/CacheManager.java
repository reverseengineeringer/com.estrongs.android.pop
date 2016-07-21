package com.appsflyer.cache;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

public class CacheManager
{
  private static CacheManager a = new CacheManager();
  
  public static CacheManager a()
  {
    return a;
  }
  
  private RequestCacheData a(File paramFile)
  {
    try
    {
      FileReader localFileReader = new FileReader(paramFile);
      Object localObject = new char[(int)paramFile.length()];
      localFileReader.read((char[])localObject);
      localObject = new RequestCacheData((char[])localObject);
      ((RequestCacheData)localObject).a(paramFile.getName());
      localFileReader.close();
      return (RequestCacheData)localObject;
    }
    catch (Exception paramFile) {}
    return null;
  }
  
  private File c(Context paramContext)
  {
    return new File(paramContext.getFilesDir(), "AFRequestCache");
  }
  
  public void a(Context paramContext)
  {
    try
    {
      if (!c(paramContext).exists()) {
        c(paramContext).mkdir();
      }
      return;
    }
    catch (Exception paramContext)
    {
      Log.i("AppsFlyer_3.2", "Could not create cache directory");
    }
  }
  
  public void a(RequestCacheData paramRequestCacheData, Context paramContext)
  {
    try
    {
      File localFile = c(paramContext);
      if (!localFile.exists())
      {
        localFile.mkdir();
        return;
      }
      if (localFile.listFiles().length > 20)
      {
        Log.i("AppsFlyer_3.2", "reached cache limit, not caching request");
        return;
      }
    }
    catch (Exception paramRequestCacheData)
    {
      Log.i("AppsFlyer_3.2", "Could not cache request");
      return;
    }
    Log.i("AppsFlyer_3.2", "caching request...");
    paramContext = new File(c(paramContext), Long.toString(System.currentTimeMillis()));
    paramContext.createNewFile();
    paramContext = new OutputStreamWriter(new FileOutputStream(paramContext.getPath(), true));
    paramContext.write("version=");
    paramContext.write(paramRequestCacheData.a());
    paramContext.write(10);
    paramContext.write("url=");
    paramContext.write(paramRequestCacheData.c());
    paramContext.write(10);
    paramContext.write("data=");
    paramContext.write(paramRequestCacheData.b());
    paramContext.write(10);
    paramContext.flush();
    paramContext.close();
  }
  
  public void a(String paramString, Context paramContext)
  {
    paramContext = new File(c(paramContext), paramString);
    Log.i("AppsFlyer_3.2", "Deleting " + paramString + " from cache");
    if (paramContext.exists()) {}
    try
    {
      paramContext.delete();
      return;
    }
    catch (Exception paramContext)
    {
      Log.i("AppsFlyer_3.2", "Could not delete " + paramString + " from cache", paramContext);
    }
  }
  
  public List<RequestCacheData> b(Context paramContext)
  {
    localArrayList = new ArrayList();
    try
    {
      paramContext = c(paramContext);
      if (!paramContext.exists())
      {
        paramContext.mkdir();
        return localArrayList;
      }
      paramContext = paramContext.listFiles();
      int j = paramContext.length;
      int i = 0;
      while (i < j)
      {
        File localFile = paramContext[i];
        Log.i("AppsFlyer_3.2", "Found cached request" + localFile.getName());
        localArrayList.add(a(localFile));
        i += 1;
      }
      return localArrayList;
    }
    catch (Exception paramContext)
    {
      Log.i("AppsFlyer_3.2", "Could not cache request");
    }
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.cache.CacheManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */