package com.duapps.ad.offerwall.ui;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import com.duapps.ad.offerwall.a;

class d
  implements AbsListView.OnScrollListener
{
  d(OfferWallAct paramOfferWallAct) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    OfferWallAct.a(a, paramInt1 + paramInt2 - (OfferWallAct.a(a).getHeaderViewsCount() + OfferWallAct.a(a).getFooterViewsCount()));
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((OfferWallAct.d(a) != OfferWallAct.e(a)) || (paramInt != 0) || (OfferWallAct.f(a).getFooterViewOptions() == 3)) {
      return;
    }
    OfferWallAct.g(a).a(ga).a + 1);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.ui.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */