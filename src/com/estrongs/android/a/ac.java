package com.estrongs.android.a;

import com.estrongs.android.a.b.o;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.List;
import java.util.concurrent.Callable;

class ac
  implements Callable<Void>
{
  public Void a()
  {
    Object localObject = new File(a);
    if (!((File)localObject).exists()) {}
    do
    {
      return null;
      localObject = ((File)localObject).listFiles();
    } while (localObject == null);
    int j = localObject.length;
    int i = 0;
    if (i < j)
    {
      o localo = localObject[i];
      String str = ap.bR(localo.getName());
      if (str == null) {}
      for (;;)
      {
        i += 1;
        break;
        if ((str.equalsIgnoreCase(".jpg")) || (str.equalsIgnoreCase(".jpeg")))
        {
          localo = new o(localo.getParent(), localo.getName(), localo.length(), localo.lastModified());
          ab.a(b).add(localo);
        }
      }
    }
    l.c(ab.b(), "mThumbnails: " + ab.a(b).size());
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */