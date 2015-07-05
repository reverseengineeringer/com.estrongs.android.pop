package com.estrongs.fs.b;

import android.app.Activity;
import android.content.pm.ApplicationInfo;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.c;
import com.estrongs.fs.impl.b.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class k
  extends r
{
  private ArrayList<u> A;
  Activity a;
  List<c> b;
  
  public k(Activity paramActivity, d paramd, List<c> paramList, String paramString)
  {
    super(paramd, a(paramList), d.m(paramString));
    a = paramActivity;
    b = paramList;
    processData.p = false;
    c(false);
  }
  
  public static List<h> a(List<c> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      c localc = (c)paramList.next();
      l locall = new l(localc.f().d(), localc);
      locall.putExtra("item_paste_name", localc.g());
      localArrayList.add(locall);
    }
    return localArrayList;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    if ((paramInt == 1) || (paramInt == 2)) {}
    try
    {
      if (A != null) {
        processData.q = A.get((int)processData.d)).a.getName();
      }
      super.handleMessage(paramInt, paramVarArgs);
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public boolean task()
  {
    A = ((ArrayList)f.clone());
    boolean bool = super.task();
    if (bool)
    {
      try
      {
        if ((b.size() == 1) && (((c)b.get(0)).f().h()))
        {
          String str = b.get(0)).c().packageName;
          localObject = A.get(0)).b;
          if (!d.a().b((String)localObject)) {
            return bool;
          }
          if (w.a(str))
          {
            a.runOnUiThread(new m(this, str, (String)localObject));
            return bool;
          }
          AppRunner.r(a, (String)localObject);
          return bool;
        }
      }
      catch (FileSystemException localFileSystemException)
      {
        localFileSystemException.printStackTrace();
        return bool;
      }
      ArrayList localArrayList = new ArrayList();
      Object localObject = A.iterator();
      while (((Iterator)localObject).hasNext())
      {
        u localu = (u)((Iterator)localObject).next();
        if (d.a().b(b)) {
          localArrayList.add(b);
        }
      }
      if (localArrayList.size() > 0) {
        AppRunner.a(a, localArrayList, null);
      }
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */