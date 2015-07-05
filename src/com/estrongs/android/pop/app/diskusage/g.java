package com.estrongs.android.pop.app.diskusage;

import java.io.File;
import java.util.Comparator;
import java.util.Map.Entry;

class g
  implements Comparator<Map.Entry<File, com.estrongs.fs.util.g>>
{
  private boolean a = true;
  
  private int a(long paramLong)
  {
    if (paramLong > 0L) {
      return 1;
    }
    if (paramLong < 0L) {
      return -1;
    }
    return 0;
  }
  
  public int a(Map.Entry<File, com.estrongs.fs.util.g> paramEntry1, Map.Entry<File, com.estrongs.fs.util.g> paramEntry2)
  {
    long l = ((com.estrongs.fs.util.g)paramEntry1.getValue()).b() - ((com.estrongs.fs.util.g)paramEntry2.getValue()).b();
    if (a) {
      return a(l);
    }
    return a(l) * -1;
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.diskusage.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */