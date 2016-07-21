package com.estrongs.fs.impl.c;

import com.estrongs.fs.a;
import com.estrongs.fs.w;
import java.io.File;

public class b
  extends a
{
  public b() {}
  
  public b(File paramFile)
  {
    super(paramFile.getPath());
    setName(paramFile.getName());
    lastModified = paramFile.lastModified();
    if (paramFile.isDirectory())
    {
      size = -1L;
      type = w.a;
      if (getExtra("child_count") == null)
      {
        paramFile = paramFile.listFiles(new c(this));
        if (paramFile != null) {
          putExtra("child_count", Integer.valueOf(paramFile.length));
        }
      }
      return;
    }
    size = paramFile.length();
    type = w.b;
  }
  
  public void a(String paramString)
  {
    path = paramString;
  }
  
  public boolean exists()
  {
    return new File(getAbsolutePath()).exists();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */