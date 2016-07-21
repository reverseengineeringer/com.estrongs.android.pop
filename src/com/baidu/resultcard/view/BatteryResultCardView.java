package com.baidu.resultcard.view;

import android.content.Context;
import com.baidu.scenery.R.drawable;
import com.baidu.scenery.R.string;

public class BatteryResultCardView
  extends BaseResultCardView
{
  public BatteryResultCardView(Context paramContext)
  {
    super(paramContext);
    bannerId = R.drawable.scenery_card_banner_battery;
    titleId = R.string.scenery_card_battery_title;
    contentId = R.string.scenery_card_battery_content;
    iconId = R.drawable.scenery_card_button_icon_battery;
    buttonId = R.string.scenery_card_battery_button;
    pkgName = "com.dianxinos.dxbs";
  }
  
  protected int getArgs()
  {
    return -2;
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.view.BatteryResultCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */