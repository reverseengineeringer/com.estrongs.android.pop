package com.estrongs.fs.impl.w;

import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.w;
import de.aflx.sardine.DavResource;
import java.util.Date;

public class a
  extends com.estrongs.fs.a
{
  protected boolean a = true;
  protected boolean b = true;
  
  public a(String paramString, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    super(paramString);
    size = paramLong1;
    lastModified = paramLong2;
    if (paramBoolean) {}
    for (type = w.a;; type = w.b)
    {
      setName(ap.d(paramString));
      return;
    }
  }
  
  public a(String paramString, DavResource paramDavResource, boolean paramBoolean)
  {
    super(paramString);
    paramString = paramDavResource.getName();
    if (paramBoolean) {
      try
      {
        if ((paramString.length() > 0) && (paramString.endsWith("/")))
        {
          String str = paramString.substring(0, paramString.length() - 1);
          paramString = str;
        }
        for (;;) {}
      }
      catch (Exception paramDavResource)
      {
        try
        {
          lastModified = paramDavResource.getModified().getTime();
          if (paramBoolean) {}
          for (;;)
          {
            try
            {
              type = w.a;
              size = 0L;
              setName(paramString);
              return;
              type = w.b;
              size = paramDavResource.getContentLength().longValue();
              continue;
            }
            catch (Exception paramDavResource)
            {
              paramDavResource.printStackTrace();
              continue;
            }
            paramDavResource = paramDavResource;
          }
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
      }
    }
  }
  
  protected boolean canDelete()
  {
    return canWrite();
  }
  
  protected boolean canRead()
  {
    return b;
  }
  
  protected boolean canWrite()
  {
    return a;
  }
  
  public boolean exists()
  {
    try
    {
      boolean bool = b.d(getAbsolutePath());
      return bool;
    }
    catch (Exception localException)
    {
      throw new FileSystemException(localException);
    }
  }
  
  public void setName(String paramString)
  {
    int i = 0;
    if (name != null) {
      i = 1;
    }
    super.setName(paramString);
    if ((i != 0) && (getFileType().a()))
    {
      if (!path.endsWith("/")) {
        path += "/";
      }
      if (!absolutePath.endsWith("/")) {
        absolutePath += "/";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.w.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */