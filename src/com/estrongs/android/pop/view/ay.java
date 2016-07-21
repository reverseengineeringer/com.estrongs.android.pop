package com.estrongs.android.pop.view;

import com.estrongs.android.util.ap;
import com.estrongs.android.widget.bc;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;

class ay
  implements eh
{
  ay(FileExplorerActivity paramFileExplorerActivity, bc parambc) {}
  
  public void a(String paramString, boolean paramBoolean)
  {
    a.g();
    if (paramBoolean) {
      return;
    }
    try
    {
      if ((ap.bm(paramString)) || (ap.v(paramString)) || (ap.ag(paramString)) || (ap.ai(paramString)) || (ap.aQ(paramString)) || (ap.X(paramString)) || (ap.aY(paramString)) || (ap.u(paramString)) || (ap.O(paramString)))
      {
        b.g(paramString);
        return;
      }
    }
    catch (FileSystemException paramString)
    {
      paramString.printStackTrace();
      return;
      if (!d.a(b).b(paramString)) {
        break label159;
      }
      if ((d.a(b).h(paramString)) || (ap.V(paramString)) || (ap.Z(paramString)))
      {
        b.g(paramString);
        return;
      }
    }
    catch (NullPointerException paramString)
    {
      paramString.printStackTrace();
      return;
    }
    b.a(null, paramString);
    return;
    label159:
    b.a(2131231719);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */