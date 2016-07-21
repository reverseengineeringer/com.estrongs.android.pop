package android.support.v7.app;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class AlertController$4
  implements AbsListView.OnScrollListener
{
  AlertController$4(AlertController paramAlertController, View paramView1, View paramView2) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    AlertController.access$800(paramAbsListView, val$top, val$bottom);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     android.support.v7.app.AlertController.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */