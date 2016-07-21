package com.baidu.mobstat;

import java.io.File;
import java.util.Comparator;

class am
  implements Comparator<File>
{
  am(ak paramak) {}
  
  public int a(File paramFile1, File paramFile2)
  {
    return (int)(paramFile2.lastModified() - paramFile1.lastModified());
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */