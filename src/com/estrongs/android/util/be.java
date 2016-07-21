package com.estrongs.android.util;

import java.io.File;
import java.util.Comparator;

final class be
  implements Comparator<File>
{
  public int a(File paramFile1, File paramFile2)
  {
    if (paramFile1.lastModified() == paramFile2.lastModified()) {
      return 0;
    }
    if (paramFile1.lastModified() < paramFile2.lastModified()) {
      return -1;
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */