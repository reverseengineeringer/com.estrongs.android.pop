package com.baidu.resultcard.view;

import android.content.Context;
import com.baidu.scenery.R.drawable;
import com.baidu.scenery.R.string;
import java.util.Random;

public class AntivirusResultCardView
  extends BaseResultCardView
{
  public AntivirusResultCardView(Context paramContext)
  {
    super(paramContext);
    bannerId = R.drawable.scenery_card_banner_antivirus;
    titleId = R.string.scenery_card_antivirus_title;
    contentId = R.string.scenery_card_antivirus_content;
    buttonId = R.string.scenery_card_antivirus_button;
    pkgName = "com.duapps.antivirus";
  }
  
  public int getArgs()
  {
    return new Random().nextInt(2) + 1;
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.view.AntivirusResultCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */