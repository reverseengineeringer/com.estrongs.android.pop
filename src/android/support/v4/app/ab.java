package android.support.v4.app;

import android.view.View;

class ab
  extends ag
{
  ab(Fragment paramFragment) {}
  
  public View a(int paramInt)
  {
    if (a.mView == null) {
      throw new IllegalStateException("Fragment does not have a view");
    }
    return a.mView.findViewById(paramInt);
  }
  
  public boolean a()
  {
    return a.mView != null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */