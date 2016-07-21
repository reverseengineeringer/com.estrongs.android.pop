package com.baidu.resultcard.view;

import android.content.Context;
import com.baidu.scenery.R.drawable;
import com.baidu.scenery.R.string;

public class BoosterResultCardView
  extends BaseResultCardView
{
  public BoosterResultCardView(Context paramContext)
  {
    super(paramContext);
    bannerId = R.drawable.scenery_card_banner_booster;
    titleId = R.string.scenery_card_booster_title;
    contentId = R.string.scenery_card_booster_content;
    iconId = R.drawable.scenery_card_rocket_icon;
    buttonId = R.string.scenery_card_booster_button;
    pkgName = "com.dianxinos.optimizer.duplay";
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.view.BoosterResultCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */