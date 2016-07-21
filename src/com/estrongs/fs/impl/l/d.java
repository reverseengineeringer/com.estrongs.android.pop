package com.estrongs.fs.impl.l;

import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.w;
import com.estrongs.fs.x;

class d
  extends x
{
  d(c paramc, String paramString1, String paramString2, w paramw, String paramString3, int[] paramArrayOfInt, String paramString4)
  {
    super(paramString1, paramString2, paramw, paramString3);
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
    return i.b(b).lastModified();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.l.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */