package com.estrongs.android.ui.dialog;

import com.estrongs.fs.util.g;
import com.estrongs.fs.util.h;
import com.estrongs.fs.util.j;
import java.io.File;

class cz
  implements h
{
  private long b = -1L;
  
  cz(cy paramcy) {}
  
  public void a(File paramFile)
  {
    if ((b == -1L) || (System.currentTimeMillis() - b > 300L))
    {
      b = System.currentTimeMillis();
      cy.a(a, new String[] { "" + a.a.c(), j.c(a.a.b()) });
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */