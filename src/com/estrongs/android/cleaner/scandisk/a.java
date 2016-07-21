package com.estrongs.android.cleaner.scandisk;

import android.content.res.AssetManager;
import android.content.res.Resources;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.fs.util.m;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class a
{
  private static Map<String, b> a;
  
  public static List<String> a(List<String> paramList)
  {
    Object localObject = a().keySet();
    ArrayList localArrayList = new ArrayList();
    localObject = ((Set)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str1 = (String)((Iterator)localObject).next();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        localArrayList.add(str2 + File.separator + str1);
      }
    }
    return localArrayList;
  }
  
  public static Map<String, b> a()
  {
    Object localObject2;
    if (a == null)
    {
      a = new HashMap();
      localObject2 = null;
    }
    try
    {
      InputStream localInputStream = FexApplication.a().getResources().getAssets().open("adjunk.txt");
      localObject2 = localInputStream;
      int i;
      Object localObject5;
      if (localObject4 == null) {
        break label164;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          localObject4 = new JSONArray(m.a(localInputStream, "utf8"));
          i = 0;
          localObject2 = localInputStream;
          if (i < ((JSONArray)localObject4).length())
          {
            localObject2 = localInputStream;
            localObject5 = ((JSONArray)localObject4).getJSONObject(i);
            localObject2 = localInputStream;
            localObject5 = new b(((JSONObject)localObject5).getString("path"), ((JSONObject)localObject5).getString("en"), ((JSONObject)localObject5).getString("cn"));
            localObject2 = localInputStream;
            a.put(a, localObject5);
            i += 1;
            continue;
          }
          if (localInputStream != null) {
            m.a(localInputStream);
          }
          return a;
        }
        finally
        {
          Object localObject4 = localObject1;
          continue;
        }
        localException = localException;
        if (localObject2 != null) {
          m.a((InputStream)localObject2);
        }
      }
    }
    finally
    {
      localObject1 = finally;
      localObject4 = null;
      localObject2 = localObject1;
    }
    m.a((InputStream)localObject4);
    label164:
    throw ((Throwable)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */