package com.estrongs.android.pop.view;

import com.estrongs.android.ui.view.ag;
import com.estrongs.android.view.aw;
import com.estrongs.fs.impl.j.e;

public class fh
  implements e
{
  private aw b;
  private String c;
  
  public fh(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(aw paramaw, String paramString)
  {
    b = paramaw;
    c = paramString;
  }
  
  public void a(String paramString1, int paramInt, String paramString2)
  {
    if (paramString2 != null) {
      ag.a(a, paramString2, 0);
    }
    if ((paramInt >= 31041) && (paramInt <= 31046)) {
      a.runOnUiThread(new fi(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */