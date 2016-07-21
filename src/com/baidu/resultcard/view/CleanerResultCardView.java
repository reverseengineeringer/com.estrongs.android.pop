package com.baidu.resultcard.view;

import android.content.Context;
import com.baidu.scenery.R.drawable;
import com.baidu.scenery.R.string;

public class CleanerResultCardView
  extends BaseResultCardView
{
  public CleanerResultCardView(Context paramContext)
  {
    super(paramContext);
    bannerId = R.drawable.scenery_card_banner_cleaner;
    titleId = R.string.scenery_card_cleaner_title;
    contentId = R.string.scenery_card_cleaner_content;
    iconId = 0;
    buttonId = R.string.scenery_card_cleaner_button;
    pkgName = "com.duapps.cleaner";
  }
  
  private static String getMemoryContent(long paramLong)
  {
    if (paramLong >= 1048576L) {
      return Math.round(paramLong / 1024L / 1024.0D * 10.0D) / 10.0D + "GB";
    }
    return Math.round((float)(paramLong / 1024L)) * 10 / 10.0D + "MB";
  }
  
  public void setContentParam(Object... paramVarArgs)
  {
    setArgContent(new Object[] { getMemoryContent(((Long)paramVarArgs[0]).longValue()) });
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.view.CleanerResultCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */