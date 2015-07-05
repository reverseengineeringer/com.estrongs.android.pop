package com.estrongs.android.pop.app.diskusage;

import com.estrongs.fs.impl.local.f;
import java.io.File;

public class u
  extends f
{
  protected File a = null;
  
  public u(File paramFile)
  {
    super(paramFile);
    a = paramFile;
  }
  
  public File a()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof u))) {
      return false;
    }
    paramObject = (u)paramObject;
    return a.equals(a);
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */