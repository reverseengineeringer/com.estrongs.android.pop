package com.estrongs.android.ui.b;

import android.widget.EditText;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.ap;
import com.estrongs.fs.d;

class o
  implements com.estrongs.android.ui.pcs.n
{
  o(n paramn, String paramString) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (bd.b(paramString2))) {
      new ap(d.a(b.a), paramString2, a, l.b(b.b).getText().toString()).execute();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */