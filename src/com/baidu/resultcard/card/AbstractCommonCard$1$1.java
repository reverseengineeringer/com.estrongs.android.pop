package com.baidu.resultcard.card;

import com.baidu.resultcard.view.BaseResultCardView;
import com.dianxinos.library.dxbase.o;
import java.lang.ref.WeakReference;

class AbstractCommonCard$1$1
  implements AbstractCommonCard.OnBackgroundRefreshListener
{
  AbstractCommonCard$1$1(AbstractCommonCard.1 param1) {}
  
  public void onBackgroundRefresh(Object... paramVarArgs)
  {
    BaseResultCardView localBaseResultCardView = (BaseResultCardView)this$1.val$view.get();
    if (localBaseResultCardView != null) {
      o.a(new AbstractCommonCard.1.1.1(this, localBaseResultCardView, paramVarArgs));
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.card.AbstractCommonCard.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */