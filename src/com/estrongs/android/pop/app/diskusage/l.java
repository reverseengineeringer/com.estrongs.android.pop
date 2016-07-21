package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.view.bn;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.io.FileFilter;
import java.util.Iterator;
import java.util.List;

class l
  implements FileFilter
{
  l(k paramk, bn parambn) {}
  
  public boolean accept(File paramFile)
  {
    String str1 = paramFile.getAbsolutePath();
    Iterator localIterator = b.a.iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      if (str2.equalsIgnoreCase(str1)) {
        return false;
      }
      if ((str2.startsWith("/mnt/")) && (!str1.startsWith("/mnt/")) && (str2.equalsIgnoreCase("/mnt" + str1))) {
        return false;
      }
      if ((str1.startsWith("/mnt/")) && (!str2.startsWith("/mnt/")) && (str1.equalsIgnoreCase("/mnt" + str2))) {
        return false;
      }
    }
    return a.a(new f(null, paramFile, false));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */