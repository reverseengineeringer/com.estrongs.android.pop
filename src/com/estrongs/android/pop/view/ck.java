package com.estrongs.android.pop.view;

import com.estrongs.android.ui.f.c;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;

class ck
  implements fg
{
  ck(cj paramcj, c paramc) {}
  
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
        b.a.e(paramString);
        return;
      }
    }
    catch (FileSystemException paramString)
    {
      paramString.printStackTrace();
      return;
      if (!d.a(b.a).b(paramString)) {
        break label174;
      }
      if ((d.a(b.a).h(paramString)) || (am.S(paramString)) || (am.U(paramString)))
      {
        b.a.e(paramString);
        return;
      }
    }
    catch (NullPointerException paramString)
    {
      paramString.printStackTrace();
      return;
    }
    b.a.a(null, paramString);
    return;
    label174:
    b.a.a(2131427399);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */