package com.estrongs.fs.impl.local;

import android.net.LocalSocket;
import com.estrongs.android.nativetool.c;
import com.estrongs.fs.a;
import com.estrongs.fs.m;
import java.io.File;

public class f
  extends a
{
  public f(LocalSocket paramLocalSocket, File paramFile, boolean paramBoolean)
  {
    super(paramFile.getPath());
    setName(paramFile.getName());
    size = paramFile.length();
    lastModified = paramFile.lastModified();
    isLink = false;
    if (paramLocalSocket != null) {}
    try
    {
      isLink = c.a(paramLocalSocket, paramFile.getAbsolutePath());
      if (paramFile.isDirectory())
      {
        type = m.a;
        if ((getExtra("child_count") == null) && (paramBoolean))
        {
          paramLocalSocket = paramFile.listFiles();
          if (paramLocalSocket != null) {
            putExtra("child_count", Integer.valueOf(paramLocalSocket.length));
          }
        }
        return;
      }
      type = m.b;
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