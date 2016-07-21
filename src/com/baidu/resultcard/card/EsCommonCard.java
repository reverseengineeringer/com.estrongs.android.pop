package com.baidu.resultcard.card;

import android.content.Context;
import com.baidu.resultcard.CardPreferences;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.resultcard.view.ESResultCardView;
import com.baidu.scenery.utils.TrashUtils;
import java.util.Random;

public class EsCommonCard
  extends AbstractCommonCard
{
  private static final int CYCLE_COUNT = 10;
  
  private static long getSdcardNewSize(Context paramContext)
  {
    int k = CardPreferences.getEsCardRecordIndex(paramContext);
    if (k <= 0) {
      return 0L;
    }
    long l1 = CardPreferences.getEsCardRecordIndexTime(paramContext, k);
    long l2 = CardPreferences.getEsCardRecordIndexSize(paramContext, k);
    int m = CardPreferences.getEsCardDays(paramContext, 3);
    int j = k;
    int i;
    long l3;
    do
    {
      j -= 1;
      i = j;
      if (j == 0) {
        i = 10;
      }
      if (i == k) {}
      do
      {
        return 0L;
        l3 = CardPreferences.getEsCardRecordIndexTime(paramContext, i);
      } while (l3 <= 0L);
      j = i;
    } while (l1 - l3 < m * 86400000L);
    return CardPreferences.getEsCardRecordIndexSize(paramContext, i) - l2;
  }
  
  private static void scanSdcardToday(Context paramContext)
  {
    int j = CardPreferences.getEsCardRecordIndex(paramContext);
    int i = j;
    if (j < 0) {
      i = 0;
    }
    long l2 = CardPreferences.getEsCardRecordIndexTime(paramContext, i);
    long l1 = System.currentTimeMillis();
    if (l1 - l2 > 86400000L)
    {
      l2 = TrashUtils.getAllSDInfoUsedSize(paramContext);
      if (i != 10) {
        break label68;
      }
      i = 1;
    }
    for (;;)
    {
      CardPreferences.setEsCardRecordIndexTime(paramContext, i, l1);
      CardPreferences.setEsCardRecordIndexSize(paramContext, i, l2);
      CardPreferences.setEsCardRecordIndex(paramContext, i);
      return;
      label68:
      i += 1;
    }
  }
  
  protected void doInBackground(AbstractCommonCard.OnBackgroundRefreshListener paramOnBackgroundRefreshListener)
  {
    scanSdcardToday(mContext);
    if (paramOnBackgroundRefreshListener == null) {
      return;
    }
    int i = CardPreferences.getEsCardSizeMB(mContext, 300);
    long l2 = getSdcardNewSize(mContext) / 1048576L;
    long l1 = l2;
    if (l2 < i) {
      l1 = new Random().nextInt(100) + i;
    }
    paramOnBackgroundRefreshListener.onBackgroundRefresh(new Object[] { Long.valueOf(l1) });
  }
  
  public String getPkgName()
  {
    return "com.estrongs.android.pop";
  }
  
  protected BaseResultCardView getView()
  {
    ESResultCardView localESResultCardView = new ESResultCardView(mContext);
    localESResultCardView.init();
    return localESResultCardView;
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
 * Qualified Name:     com.baidu.resultcard.card.EsCommonCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */