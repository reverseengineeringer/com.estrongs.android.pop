package com.estrongs.fs.b;

import com.estrongs.fs.d;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

class aa
  extends ao
{
  List<h> a = new ArrayList();
  
  public aa(List<h> paramList, d paramd)
  {
    super(paramList, paramd, false);
  }
  
  protected boolean a(h paramh)
  {
    if (paramh.getAbsolutePath().endsWith(".eslock")) {
      a.add(paramh);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */