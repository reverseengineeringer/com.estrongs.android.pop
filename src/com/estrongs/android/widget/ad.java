package com.estrongs.android.widget;

import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

public class ad
{
  protected ad(g paramg) {}
  
  public List<h> a(com.estrongs.android.pop.ad paramad, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    a(paramad, paramString, localArrayList);
    return localArrayList;
  }
  
  void a(com.estrongs.android.pop.ad paramad, String paramString, List<h> paramList)
  {
    if ("smb".equalsIgnoreCase(paramString)) {
      paramad.a(paramList);
    }
    do
    {
      return;
      if ("ftp".equalsIgnoreCase(paramString))
      {
        paramad.d(paramList);
        return;
      }
      if (("dropbox".equalsIgnoreCase(paramString)) || ("kanbox".equalsIgnoreCase(paramString)))
      {
        paramad.b(paramList);
        return;
      }
    } while (!"adb".equalsIgnoreCase(paramString));
    paramad.e(paramList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */