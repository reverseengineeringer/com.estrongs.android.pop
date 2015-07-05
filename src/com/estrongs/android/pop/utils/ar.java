package com.estrongs.android.pop.utils;

import com.estrongs.android.util.bc;
import java.io.File;
import java.io.FilenameFilter;

final class ar
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return bc.c(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */