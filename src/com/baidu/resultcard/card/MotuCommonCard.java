package com.baidu.resultcard.card;

import com.baidu.resultcard.CardPreferences;
import com.baidu.resultcard.common.PhotoScanner;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.resultcard.view.MotuResultCardView;

public class MotuCommonCard
  extends AbstractCommonCard
{
  protected void doInBackground(AbstractCommonCard.OnBackgroundRefreshListener paramOnBackgroundRefreshListener)
  {
    if (paramOnBackgroundRefreshListener == null) {
      return;
    }
    int i = CardPreferences.getMotuCardDays(mContext, 3);
    int j = PhotoScanner.getInstance(mContext).getPhotoNum(i);
    i = j;
    if (j < 1) {
      i = 1;
    }
    paramOnBackgroundRefreshListener.onBackgroundRefresh(new Object[] { Integer.valueOf(i) });
  }
  
  public String getPkgName()
  {
    return "cn.jingling.motu.photowonder";
  }
  
  protected BaseResultCardView getView()
  {
    MotuResultCardView localMotuResultCardView = new MotuResultCardView(mContext);
    localMotuResultCardView.init();
    return localMotuResultCardView;
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
 * Qualified Name:     com.baidu.resultcard.card.MotuCommonCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */