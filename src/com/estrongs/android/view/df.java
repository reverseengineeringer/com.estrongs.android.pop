package com.estrongs.android.view;

import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.i;

class df
  implements i
{
  private int a = 0;
  
  public df(int paramInt)
  {
    a = paramInt;
  }
  
  public boolean a(h paramh)
  {
    boolean bool2 = true;
    boolean bool3 = bd.b(paramh.getExtra("item_is_scanned_server"));
    boolean bool1;
    if (a == 1) {
      bool1 = bool3;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (a != 2);
      bool1 = bool2;
    } while (!bool3);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */