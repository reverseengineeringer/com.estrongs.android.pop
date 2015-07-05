package com.estrongs.fs;

import com.estrongs.android.util.am;

public class n
  extends a
{
  protected String displayName;
  
  public n(String paramString)
  {
    super(paramString, m.a);
  }
  
  public n(String paramString, m paramm)
  {
    super(paramString, paramm);
  }
  
  public n(String paramString1, m paramm, String paramString2)
  {
    super(paramString1, paramm);
    displayName = paramString2;
  }
  
  public n(String paramString1, String paramString2, m paramm, String paramString3)
  {
    super(paramString1, paramString2, paramm);
    displayName = paramString3;
  }
  
  protected m doGetFileType()
  {
    return m.a;
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
    return am.d(path);
  }
  
  public void setDisplayName(String paramString)
  {
    displayName = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */