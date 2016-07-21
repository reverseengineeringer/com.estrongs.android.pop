package com.estrongs.fs;

import com.estrongs.android.util.ap;
import java.io.File;

public class x
  extends a
{
  protected String displayName;
  private long mOriginalLastModified;
  
  public x(String paramString)
  {
    super(paramString, w.a);
  }
  
  public x(String paramString, w paramw)
  {
    super(paramString, paramw);
  }
  
  public x(String paramString1, w paramw, String paramString2)
  {
    super(paramString1, paramw);
    displayName = paramString2;
  }
  
  public x(String paramString1, String paramString2, w paramw, String paramString3)
  {
    super(paramString1, paramString2, paramw);
    displayName = paramString3;
  }
  
  protected w doGetFileType()
  {
    return w.a;
  }
  
  public boolean exists()
  {
    return false;
  }
  
  public String getName()
  {
    if (displayName != null) {
      return displayName;
    }
    return ap.d(path);
  }
  
  public final long getOriginalLastModified()
  {
    return mOriginalLastModified;
  }
  
  public final long getRealLastModified()
  {
    return new File(getAbsolutePath()).lastModified();
  }
  
  public void setDisplayName(String paramString)
  {
    displayName = paramString;
  }
  
  public final void setOriginalLastModified(long paramLong)
  {
    mOriginalLastModified = paramLong;
  }
  
  public void setTotalSize(long paramLong)
  {
    size = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */