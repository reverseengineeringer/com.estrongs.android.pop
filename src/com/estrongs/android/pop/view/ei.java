package com.estrongs.android.pop.view;

import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.cr;
import com.estrongs.fs.impl.o.e;

public class ei
  implements e
{
  private cr b;
  private String c;
  
  public ei(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(cr paramcr, String paramString)
  {
    b = paramcr;
    c = paramString;
  }
  
  public void a(String paramString1, int paramInt, String paramString2)
  {
    if (paramString2 != null) {
      ak.a(a, paramString2, 0);
    }
    if ((paramInt >= 31041) && (paramInt <= 31046)) {
      a.runOnUiThread(new ej(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */