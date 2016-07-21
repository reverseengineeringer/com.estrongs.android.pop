package com.estrongs.android.pop.app.b.b;

import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class b
{
  String a;
  int b = -1;
  boolean c = true;
  
  public b(String paramString, int paramInt)
  {
    a = paramString;
    b = paramInt;
  }
  
  public b(String paramString, int paramInt, boolean paramBoolean)
  {
    a = paramString;
    b = paramInt;
    c = paramBoolean;
  }
  
  public void a(File paramFile, HashMap<Long, h> paramHashMap, long paramLong)
  {
    File[] arrayOfFile = paramFile.listFiles();
    int j = arrayOfFile.length;
    paramFile = null;
    int i = 0;
    if (i < j)
    {
      Object localObject2 = arrayOfFile[i];
      Object localObject1;
      if (((File)localObject2).isDirectory())
      {
        localObject1 = paramFile;
        if (c)
        {
          localObject1 = paramFile;
          if (paramFile == null) {
            localObject1 = new ArrayList();
          }
          ((ArrayList)localObject1).add(localObject2);
        }
      }
      for (;;)
      {
        i += 1;
        paramFile = (File)localObject1;
        break;
        localObject1 = paramFile;
        if (!((File)localObject2).getName().startsWith("."))
        {
          localObject1 = paramFile;
          if (((File)localObject2).lastModified() / 1000L >= paramLong)
          {
            localObject2 = new f((File)localObject2);
            ((h)localObject2).setESFileType(b);
            long l = ((h)localObject2).getAbsolutePath().toLowerCase().hashCode();
            localObject1 = paramFile;
            if (!paramHashMap.containsKey(Long.valueOf(l)))
            {
              paramHashMap.put(Long.valueOf(l), localObject2);
              localObject1 = paramFile;
            }
          }
        }
      }
    }
    if (paramFile != null)
    {
      paramFile = paramFile.iterator();
      while (paramFile.hasNext()) {
        a((File)paramFile.next(), paramHashMap, paramLong);
      }
    }
  }
  
  public void a(HashMap<Long, h> paramHashMap, long paramLong)
  {
    File localFile = new File(a);
    if ((!localFile.exists()) || (!localFile.isDirectory())) {
      return;
    }
    a(localFile, paramHashMap, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */