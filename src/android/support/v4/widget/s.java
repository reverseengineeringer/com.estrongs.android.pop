package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

class s
  extends ContentObserver
{
  public s(q paramq)
  {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public void onChange(boolean paramBoolean)
  {
    a.onContentChanged();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */