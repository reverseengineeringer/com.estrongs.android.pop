package com.estrongs.fs.impl.g;

import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.local.h;
import com.estrongs.fs.m;
import com.estrongs.fs.n;

class d
  extends n
{
  d(c paramc, String paramString1, String paramString2, m paramm, String paramString3, int[] paramArrayOfInt, String paramString4)
  {
    super(paramString1, paramString2, paramm, paramString3);
  }
  
  public Object getExtra(String paramString)
  {
    if ((super.getExtra(paramString) == null) && (a[0] > 0)) {
      super.putExtra("item_count", Integer.valueOf(a[0]));
    }
    return super.getExtra(paramString);
  }
  
  public long lastModified()
  {
    return h.b(b).lastModified();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.g.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */