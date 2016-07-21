package com.baidu.resultcard.view;

import android.content.Context;
import com.baidu.scenery.R.drawable;
import com.baidu.scenery.R.string;

public class MotuResultCardView
  extends BaseResultCardView
{
  public MotuResultCardView(Context paramContext)
  {
    super(paramContext);
    bannerId = R.drawable.scenery_card_banner_photowonder;
    titleId = R.string.scenery_card_photowonder_title;
    contentId = R.string.scenery_card_photowonder_content;
    iconId = 0;
    buttonId = R.string.scenery_card_photowonder_button;
    pkgName = "cn.jingling.motu.photowonder";
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.view.MotuResultCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */