package android.support.v4.widget;

import android.view.View;
import android.widget.ListView;

class ar
{
  static void a(ListView paramListView, int paramInt)
  {
    int i = paramListView.getFirstVisiblePosition();
    if (i == -1) {}
    View localView;
    do
    {
      return;
      localView = paramListView.getChildAt(0);
    } while (localView == null);
    paramListView.setSelectionFromTop(i, localView.getTop() - paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */