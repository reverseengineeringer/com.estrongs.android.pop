package com.estrongs.android.pop.view;

import java.io.File;
import java.io.FileFilter;

class ez
  implements FileFilter
{
  ez(ey paramey) {}
  
  public boolean accept(File paramFile)
  {
    return (paramFile.isFile()) && (paramFile.getName().endsWith(".apk"));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */