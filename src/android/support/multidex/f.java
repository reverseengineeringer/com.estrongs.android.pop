package android.support.multidex;

import java.io.File;
import java.io.FileFilter;

final class f
  implements FileFilter
{
  f(String paramString) {}
  
  public boolean accept(File paramFile)
  {
    return !paramFile.getName().startsWith(a);
  }
}

/* Location:
 * Qualified Name:     android.support.multidex.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */