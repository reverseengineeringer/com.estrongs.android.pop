package com.estrongs.fs.impl.b;

import java.io.File;
import java.io.FilenameFilter;

class e
  implements FilenameFilter
{
  e(d paramd) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.endsWith(".apk");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */