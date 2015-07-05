package com.estrongs.android.pop.app.diskusage;

import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.a.p;
import java.util.List;

class s
  implements p
{
  s(h paramh, List paramList) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if ((paramInt2 == 4) || (paramInt2 == 5)) {
      h.g(b).sendMessage(h.g(b).obtainMessage(5, a));
    }
    while (paramInt2 != 2) {
      return;
    }
    h.g(b).sendEmptyMessage(4);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */