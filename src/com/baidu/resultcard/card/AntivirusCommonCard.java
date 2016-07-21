package com.baidu.resultcard.card;

import com.baidu.resultcard.view.AntivirusResultCardView;
import com.baidu.resultcard.view.BaseResultCardView;

public class AntivirusCommonCard
  extends AbstractCommonCard
{
  public String getPkgName()
  {
    return "com.duapps.antivirus";
  }
  
  protected BaseResultCardView getView()
  {
    AntivirusResultCardView localAntivirusResultCardView = new AntivirusResultCardView(mContext);
    localAntivirusResultCardView.init();
    return localAntivirusResultCardView;
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.card.AntivirusCommonCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */