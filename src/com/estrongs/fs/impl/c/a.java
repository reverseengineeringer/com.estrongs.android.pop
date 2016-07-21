package com.estrongs.fs.impl.c;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.appinfo.o;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.u;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a
  implements u
{
  public List<String> a = ap.a();
  
  public h a(String paramString)
  {
    return null;
  }
  
  public OutputStream a(String paramString, TypedMap paramTypedMap)
  {
    return null;
  }
  
  public OutputStream a(String paramString, boolean paramBoolean)
  {
    return null;
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    paramTypedMap = new ArrayList();
    ApplicationInfo localApplicationInfo;
    Object localObject2;
    if ("appfolder://".equals(paramh.getPath()))
    {
      parami = FexApplication.a().a(8192).iterator();
      while (parami.hasNext())
      {
        localApplicationInfo = (ApplicationInfo)parami.next();
        if ((localApplicationInfo != null) && (!TextUtils.isEmpty(sourceDir)))
        {
          localObject2 = new ArrayList();
          paramh = AppFolderInfoManager.d().i(packageName);
          localObject1 = w.a(FexApplication.a().getPackageManager(), localApplicationInfo);
          if ((paramh != null) && (paramh.size() > 0))
          {
            Iterator localIterator1 = paramh.iterator();
            if (localIterator1.hasNext())
            {
              o localo = (o)localIterator1.next();
              Iterator localIterator2 = a.iterator();
              label161:
              label331:
              label362:
              for (;;)
              {
                if (localIterator2.hasNext())
                {
                  paramh = (String)localIterator2.next();
                  if (!paramh.endsWith("/")) {
                    break label331;
                  }
                }
                for (paramh = new File(paramh.substring(0, paramh.length() - 1) + a);; paramh = new File(paramh + a))
                {
                  if ((!paramh.exists()) || (paramh.isFile()) || ((paramh.isHidden()) && (!ad.a(FexApplication.a()).q()))) {
                    break label362;
                  }
                  b localb = new b(paramh);
                  localb.a("appfolder://" + (String)localObject1 + File.separator + paramh.getName() + File.separator);
                  ((List)localObject2).add(localb);
                  break label161;
                  break;
                }
              }
            }
          }
          if (((List)localObject2).size() > 0)
          {
            paramh = new d(localApplicationInfo, (List)localObject2, "", (String)localObject1);
            paramh.a("appfolder://" + (String)localObject1 + File.separator);
            paramTypedMap.add(paramh);
          }
        }
      }
    }
    if ((paramh instanceof d))
    {
      paramh = b.iterator();
      while (paramh.hasNext())
      {
        localObject1 = (b)paramh.next();
        if (parami.a((h)localObject1)) {
          paramTypedMap.add(localObject1);
        }
      }
    }
    Object localObject1 = new File(paramh.getAbsolutePath());
    if ((!((File)localObject1).exists()) || (!((File)localObject1).isDirectory())) {
      return null;
    }
    localObject1 = ((File)localObject1).listFiles();
    int j = localObject1.length;
    int i = 0;
    if (i < j)
    {
      localApplicationInfo = localObject1[i];
      if ((localApplicationInfo.isHidden()) && (!ad.a(FexApplication.a()).q())) {}
      for (;;)
      {
        i += 1;
        break;
        localObject2 = new b(localApplicationInfo);
        ((b)localObject2).a(paramh.getPath() + localApplicationInfo.getName() + File.separator);
        if (parami.a((h)localObject2)) {
          paramTypedMap.add(localObject2);
        }
      }
    }
    return paramTypedMap;
  }
  
  public boolean b(String paramString)
  {
    return false;
  }
  
  public boolean c(String paramString)
  {
    return new File(paramString).exists();
  }
  
  public InputStream d(String paramString)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */