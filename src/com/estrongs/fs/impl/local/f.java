package com.estrongs.fs.impl.local;

import android.net.LocalSocket;
import com.estrongs.android.nativetool.c;
import com.estrongs.fs.a;
import com.estrongs.fs.w;
import java.io.File;

public class f
  extends a
{
  public f(LocalSocket paramLocalSocket, File paramFile, boolean paramBoolean)
  {
    this(paramLocalSocket, paramFile, paramBoolean, -1L);
  }
  
  public f(LocalSocket paramLocalSocket, File paramFile, boolean paramBoolean, long paramLong)
  {
    super(paramFile.getPath());
    setName(paramFile.getName());
    size = paramFile.length();
    lastModified = paramFile.lastModified();
    lastAccessed = paramLong;
    isLink = false;
    if (paramLocalSocket != null) {}
    try
    {
      isLink = c.a(paramLocalSocket, paramFile.getAbsolutePath());
      if (paramFile.isDirectory())
      {
        type = w.a;
        if ((getExtra("child_count") == null) && (paramBoolean))
        {
          paramLocalSocket = paramFile.listFiles(new g(this));
          if (paramLocalSocket != null) {
            putExtra("child_count", Integer.valueOf(paramLocalSocket.length));
          }
        }
        return;
      }
      type = w.b;
      return;
    }
    catch (Exception paramLocalSocket)
    {
      for (;;) {}
    }
  }
  
  public f(File paramFile)
  {
    this(null, paramFile, false);
  }
  
  public f(File paramFile, long paramLong)
  {
    this(null, paramFile, false, paramLong);
  }
  
  public void a(long paramLong)
  {
    lastModified = paramLong;
  }
  
  public boolean exists()
  {
    return new File(getAbsolutePath()).exists();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */