package com.baidu.resultcard.view;

import android.content.Context;
import com.baidu.scenery.R.drawable;
import com.baidu.scenery.R.string;

public class ESResultCardView
  extends BaseResultCardView
{
  public ESResultCardView(Context paramContext)
  {
    super(paramContext);
    bannerId = R.drawable.scenery_card_banner_es;
    titleId = R.string.scenery_card_es_title;
    contentId = R.string.scenery_card_es_content;
    iconId = 0;
    buttonId = R.string.scenery_card_es_button;
    pkgName = "com.estrongs.android.pop";
  }
  
  private static String getSdcardSizeContent(long paramLong)
  {
    if (paramLong >= 1024L) {
      return Math.round(paramLong / 1024.0D * 10.0D) / 10.0D + "GB";
    }
    return paramLong + "MB";
  }
  
  public void setContentParam(Object... paramVarArgs)
  {
    setArgContent(new Object[] { getSdcardSizeContent(((Long)paramVarArgs[0]).longValue()) });
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.view.ESResultCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */