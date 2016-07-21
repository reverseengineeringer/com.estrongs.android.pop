package com.flurry.sdk;

import java.io.File;
import java.io.FilenameFilter;

class jf$3
  implements FilenameFilter
{
  jf$3(jf paramjf) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    return paramString.startsWith(".flurryagent.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jf.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */