package com.estrongs.android.pop.utils;

import com.estrongs.android.util.bg;
import java.io.File;
import java.io.FilenameFilter;

final class az
  implements FilenameFilter
{
  public boolean accept(File paramFile, String paramString)
  {
    return bg.c(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */