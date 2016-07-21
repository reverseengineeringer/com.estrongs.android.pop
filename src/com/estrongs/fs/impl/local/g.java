package com.estrongs.fs.impl.local;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import java.io.File;
import java.io.FilenameFilter;

class g
  implements FilenameFilter
{
  g(f paramf) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    if (ad.a(FexApplication.a()).q()) {}
    while (!paramString.startsWith(".")) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */