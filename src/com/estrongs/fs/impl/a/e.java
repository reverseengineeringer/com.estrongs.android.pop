package com.estrongs.fs.impl.a;

import android.database.DatabaseUtils;
import android.util.SparseArray;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class e
  extends com.estrongs.fs.impl.media.e
{
  private static final String[] a = { "/sdcard/Tencent/tassistant/apk/" };
  
  protected h a(f paramf)
  {
    return new b(paramf);
  }
  
  protected String a()
  {
    return "_data like " + DatabaseUtils.sqlEscapeString("%.apk");
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    a locala = new a();
    Object localObject1 = new ArrayList();
    String[] arrayOfString = a;
    int k = arrayOfString.length;
    int i = 0;
    if (i < k)
    {
      Object localObject2 = new File(arrayOfString[i]);
      if (!((File)localObject2).isDirectory()) {}
      for (;;)
      {
        i += 1;
        break;
        localObject2 = ((File)localObject2).listFiles(locala);
        if ((localObject2 != null) && (localObject2.length > 0))
        {
          int m = localObject2.length;
          j = 0;
          while (j < m)
          {
            ((ArrayList)localObject1).add(a(new f(new File(ap.bV(localObject2[j].getAbsolutePath()).toLowerCase()))));
            j += 1;
          }
        }
      }
    }
    parami = super.a(paramh, parami, paramTypedMap);
    if (((ArrayList)localObject1).isEmpty()) {
      paramh = parami;
    }
    do
    {
      return paramh;
      paramh = (h)localObject1;
    } while (parami.isEmpty());
    paramh = new SparseArray();
    paramTypedMap = ((ArrayList)localObject1).iterator();
    while (paramTypedMap.hasNext())
    {
      localObject1 = (h)paramTypedMap.next();
      paramh.put(((h)localObject1).getAbsolutePath().hashCode(), localObject1);
    }
    paramTypedMap = parami.iterator();
    while (paramTypedMap.hasNext())
    {
      localObject1 = (h)paramTypedMap.next();
      paramh.put(ap.bV(((h)localObject1).getAbsolutePath()).toLowerCase().hashCode(), localObject1);
    }
    parami.clear();
    int j = paramh.size();
    i = 0;
    while (i < j)
    {
      parami.add(paramh.valueAt(i));
      i += 1;
    }
    return parami;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */