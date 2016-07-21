package com.baidu.resultcard.card;

import com.baidu.resultcard.CardLibrary.CardType;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.resultcard.view.BoosterResultCardView;
import com.baidu.scenery.utils.ProcessUtils;
import java.util.Random;

public class BoosterCommonCard
  extends AbstractCommonCard
{
  public BoosterCommonCard() {}
  
  public BoosterCommonCard(CardLibrary.CardType paramCardType)
  {
    super(paramCardType);
  }
  
  protected void doInBackground(AbstractCommonCard.OnBackgroundRefreshListener paramOnBackgroundRefreshListener)
  {
    if (paramOnBackgroundRefreshListener == null) {
      return;
    }
    int j = ProcessUtils.getBackgroudProcessCount(mContext);
    int i = j;
    if (j <= 3) {
      i = new Random().nextInt(6) + 5;
    }
    paramOnBackgroundRefreshListener.onBackgroundRefresh(new Object[] { Integer.valueOf(i) });
  }
  
  public String getPkgName()
  {
    return "com.dianxinos.optimizer.duplay";
  }
  
  protected BaseResultCardView getView()
  {
    BoosterResultCardView localBoosterResultCardView = new BoosterResultCardView(mContext);
    localBoosterResultCardView.init();
    return localBoosterResultCardView;
  }
  
  protected boolean isNeedLoadData()
  {
    return true;
  }
  
  protected void updateViewUI(BaseResultCardView paramBaseResultCardView, Object... paramVarArgs)
  {
    paramBaseResultCardView.setContentParam(paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.card.BoosterCommonCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */