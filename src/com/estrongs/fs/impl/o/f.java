package com.estrongs.fs.impl.o;

import android.os.AsyncTask;
import com.estrongs.android.view.aw;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import java.util.List;

class f
  extends AsyncTask<String, Integer, List<h>>
{
  private aw b;
  private List<h> c;
  
  public f(aw paramaw, List<h> paramList)
  {
    b = paramList;
    List localList;
    c = localList;
  }
  
  private boolean a(List<h> paramList1, List<h> paramList2)
  {
    if (paramList1.size() != paramList2.size()) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramList1.size()) {
        break label72;
      }
      if (!((h)paramList1.get(i)).getAbsolutePath().equals(((h)paramList2.get(i)).getAbsolutePath())) {
        break;
      }
      i += 1;
    }
    label72:
    return true;
  }
  
  protected List<h> a(String... paramVarArgs)
  {
    try
    {
      paramVarArgs = a.a(a);
      try
      {
        if (a(c, paramVarArgs)) {
          return null;
        }
        a.b(paramVarArgs);
        return paramVarArgs;
      }
      catch (FileSystemException localFileSystemException1) {}
    }
    catch (FileSystemException localFileSystemException2)
    {
      for (;;)
      {
        paramVarArgs = null;
      }
    }
    localFileSystemException1.printStackTrace();
    return paramVarArgs;
  }
  
  protected void a(List<h> paramList)
  {
    if ((paramList != null) && (b != null) && (!b.V())) {
      b.b(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.o.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */