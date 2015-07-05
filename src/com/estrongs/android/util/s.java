package com.estrongs.android.util;

import java.io.File;
import java.util.Comparator;

public abstract class s
  implements Comparator<File>
{
  private boolean a = true;
  
  public int a(File paramFile1, File paramFile2)
  {
    paramFile1 = q.a(a(paramFile1), paramFile1.isDirectory());
    paramFile2 = q.a(a(paramFile2), paramFile2.isDirectory());
    if (a) {
      return paramFile1.compareTo(paramFile2);
    }
    return paramFile2.compareTo(paramFile1);
  }
  
  protected abstract String a(File paramFile);
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */