package com.baidu.resultcard;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.resultcard.card.AbstractCommonCard;
import com.baidu.resultcard.card.AntivirusCommonCard;
import com.baidu.resultcard.card.BatteryCommonCard;
import com.baidu.resultcard.card.BoosterCommonCard;
import com.baidu.resultcard.card.CleanerCommonCard;
import com.baidu.resultcard.card.EsCommonCard;
import com.baidu.resultcard.card.MotuCommonCard;
import com.baidu.resultcard.report.ResultCardReport;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.scenery.dispatcher.RuleUtils;
import com.baidu.scenery.utils.LogHelper;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class CommonCardManager
{
  public static Map<String, AbstractCommonCard> PKG_COMMON_CARD_MAP = new HashMap();
  
  static
  {
    PKG_COMMON_CARD_MAP.put("com.estrongs.android.pop", new EsCommonCard());
    PKG_COMMON_CARD_MAP.put("cn.jingling.motu.photowonder", new MotuCommonCard());
    PKG_COMMON_CARD_MAP.put("com.duapps.antivirus", new AntivirusCommonCard());
    PKG_COMMON_CARD_MAP.put("com.duapps.cleaner", new CleanerCommonCard());
    PKG_COMMON_CARD_MAP.put("com.dianxinos.optimizer.duplay", new BoosterCommonCard());
    PKG_COMMON_CARD_MAP.put("com.dianxinos.dxbs", new BatteryCommonCard());
  }
  
  public static BaseResultCardView getCommonCardView(Context paramContext, String paramString)
  {
    List localList = CardPreferences.getCloudCommonCardPkgs(paramContext, CardDataPipe.DEFAULT_COMMON_PKG_LIST);
    if (CardLibrary.sDebug)
    {
      LogHelper.d("SDKCard", "----开始获取通用带量卡片");
      LogHelper.d("SDKCard", "候选卡片列表：" + localList.toString());
    }
    if (localList.isEmpty()) {
      return null;
    }
    int k = localList.size();
    int j = CardPreferences.getCommonCardIndex(paramContext, -1);
    int i;
    if (j >= -1)
    {
      i = j;
      if (j < k) {}
    }
    else
    {
      i = -1;
    }
    if (CardLibrary.sDebug) {
      LogHelper.d("SDKCard", "轮询起点：" + (i + 1));
    }
    j = 0;
    if (j < k)
    {
      j += 1;
      i += 1;
      if (i < k) {
        break label215;
      }
      i = 0;
    }
    label215:
    for (;;)
    {
      AbstractCommonCard localAbstractCommonCard = (AbstractCommonCard)PKG_COMMON_CARD_MAP.get(localList.get(i));
      if (localAbstractCommonCard == null) {
        break;
      }
      if (localAbstractCommonCard.isAvailable(paramString))
      {
        CardPreferences.setCommonCardIndex(paramContext, i);
        ResultCardReport.reportCommonShow(paramContext, localAbstractCommonCard.getPkgName(), RuleUtils.isNetworkAvailable(paramContext));
        return localAbstractCommonCard.getCardView();
      }
      break;
      return null;
    }
  }
  
  public static void onPackageInstall(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!PKG_COMMON_CARD_MAP.keySet().contains(paramString)) {
      return;
    }
    CardPreferences.setCardAppInstallTime(paramContext, paramString, System.currentTimeMillis());
  }
  
  public static void onPackageRemoved(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    long l1;
    long l2;
    do
    {
      do
      {
        return;
      } while (!PKG_COMMON_CARD_MAP.keySet().contains(paramString));
      l1 = CardPreferences.getCardAppInstallTime(paramContext, paramString);
      l2 = System.currentTimeMillis();
    } while ((l1 <= 0L) || (l2 - l1 > 86400000L));
    CardPreferences.setCardAppUnInstallTime(paramContext, paramString, l2);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.CommonCardManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */