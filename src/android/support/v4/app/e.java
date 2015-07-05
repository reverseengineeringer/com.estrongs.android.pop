package android.support.v4.app;

import android.view.View;

class e
  implements k
{
  e(Fragment paramFragment) {}
  
  public View a(int paramInt)
  {
    if (a.I == null) {
      throw new IllegalStateException("Fragment does not have a view");
    }
    return a.I.findViewById(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */