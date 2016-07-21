package com.baidu.resultcard.card;

import com.baidu.resultcard.CardLibrary;
import com.baidu.resultcard.CardLibrary.CardType;
import com.baidu.resultcard.common.BatteryExtendTime;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.resultcard.view.BatteryResultCardView;
import com.baidu.scenery.utils.ProcessUtils;
import java.util.Random;

public class BatteryCommonCard
  extends AbstractCommonCard
{
  public BatteryCommonCard() {}
  
  public BatteryCommonCard(CardLibrary.CardType paramCardType)
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
    double d = BatteryExtendTime.getExtendTime(CardLibrary.getAppContext());
    j = (int)(d / 3600.0D);
    paramOnBackgroundRefreshListener.onBackgroundRefresh(new Object[] { Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf((int)((d - j * 3600) / 60.0D)) });
  }
  
  public String getPkgName()
  {
    return "com.dianxinos.dxbs";
  }
  
  protected BaseResultCardView getView()
  {
    BatteryResultCardView localBatteryResultCardView = new BatteryResultCardView(mContext);
    localBatteryResultCardView.init();
    return localBatteryResultCardView;
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
 * Qualified Name:     com.baidu.resultcard.card.BatteryCommonCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */