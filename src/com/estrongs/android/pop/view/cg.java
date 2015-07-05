package com.estrongs.android.pop.view;

import com.estrongs.android.ui.f.a;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;

class cg
  implements fg
{
  cg(FileExplorerActivity paramFileExplorerActivity, a parama) {}
  
  public void a(String paramString, boolean paramBoolean)
  {
    a.g();
    if (paramBoolean) {
      return;
    }
    try
    {
      if ((am.bb(paramString)) || (am.t(paramString)) || (am.W(paramString)) || (am.Y(paramString)) || (am.aG(paramString)) || (am.T(paramString)) || (am.aO(paramString)) || (am.s(paramString)) || (am.M(paramString)))
      {
        b.e(paramString);
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
      if ((d.a(b).h(paramString)) || (am.S(paramString)) || (am.U(paramString)))
      {
        b.e(paramString);
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
    b.a(2131427399);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */