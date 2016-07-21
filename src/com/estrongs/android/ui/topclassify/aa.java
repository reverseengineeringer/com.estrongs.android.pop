package com.estrongs.android.ui.topclassify;

import com.estrongs.android.pop.app.c.j;
import com.estrongs.fs.x;

public class aa
  extends x
{
  private j a;
  
  public aa(String paramString, j paramj)
  {
    super(paramString + "/" + paramj.a());
    setName(paramj.a());
    a = paramj;
  }
  
  public j a()
  {
    return a;
  }
  
  public String getName()
  {
    if (a != null) {
      return a.a();
    }
    return super.getName();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */