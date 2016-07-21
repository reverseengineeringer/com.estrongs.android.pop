package com.estrongs.android.widget;

import com.estrongs.android.pop.ad;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.List;

public class ac
{
  protected ac(f paramf) {}
  
  public List<h> a(ad paramad, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    a(paramad, paramString, localArrayList);
    return localArrayList;
  }
  
  void a(ad paramad, String paramString, List<h> paramList)
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
      if ("dropbox".equalsIgnoreCase(paramString))
      {
        paramad.b(paramList);
        return;
      }
    } while (!"adb".equalsIgnoreCase(paramString));
    paramad.e(paramList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */