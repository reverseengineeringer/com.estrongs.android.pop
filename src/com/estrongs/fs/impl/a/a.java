package com.estrongs.fs.impl.a;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class a
  implements FileFilter
{
  Pattern a = Pattern.compile(".+\\.apk$", 2);
  
  public boolean accept(File paramFile)
  {
    return a.matcher(paramFile.getAbsolutePath()).matches();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */