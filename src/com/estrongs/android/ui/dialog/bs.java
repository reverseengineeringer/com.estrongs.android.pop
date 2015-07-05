package com.estrongs.android.ui.dialog;

import com.estrongs.android.appinfo.AppFolderInfoManager.RemnantFolder;
import com.estrongs.fs.b.am;
import com.estrongs.fs.b.an;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.Iterator;

class bs
{
  String a;
  String b;
  ArrayList<AppFolderInfoManager.RemnantFolder> c;
  
  bs(String paramString1, String paramString2, ArrayList<AppFolderInfoManager.RemnantFolder> paramArrayList)
  {
    a = paramString1;
    b = paramString2;
    c = paramArrayList;
  }
  
  String a()
  {
    if (a != null) {
      return a;
    }
    return b;
  }
  
  String b()
  {
    Iterator localIterator = c.iterator();
    long l = 0L;
    if (localIterator.hasNext())
    {
      am localam = (am)((AppFolderInfoManager.RemnantFolder)localIterator.next()).a();
      if (localam == null) {
        break label60;
      }
      l = bc + l;
    }
    label60:
    for (;;)
    {
      break;
      return j.c(l);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */