package com.estrongs.android.util;

import java.io.File;
import java.util.Comparator;

final class t
  implements Comparator<File>
{
  public int a(File paramFile1, File paramFile2)
  {
    return s.a(paramFile1.getName(), paramFile1.isDirectory(), true).compareToIgnoreCase(s.a(paramFile2.getName(), paramFile2.isDirectory(), true));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */