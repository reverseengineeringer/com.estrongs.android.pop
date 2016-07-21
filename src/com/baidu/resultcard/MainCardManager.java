package com.baidu.resultcard;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.baidu.resultcard.card.AbstractCommonCard;
import com.baidu.resultcard.card.BatteryCommonCard;
import com.baidu.resultcard.card.BoosterCommonCard;
import com.baidu.resultcard.report.ResultCardReport;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.scenery.dispatcher.RuleUtils;
import com.baidu.scenery.utils.LogHelper;

public class MainCardManager
{
  private static final int BATTERY = 2;
  public static final String BATTERY_PKGNAME = "com.dianxinos.dxbs";
  private static final int BOOSTER = 1;
  public static final String BOOSTER_PKGNAME = "com.dianxinos.optimizer.duplay";
  private static final int MAXMODULE = 1000;
  private static final int MAXSHOWNUM = 3;
  
  private static int calcCard(Context paramContext)
  {
    int i = 2;
    boolean bool1 = isPkgInstalled(paramContext, "com.dianxinos.optimizer.duplay");
    boolean bool2 = isPkgInstalled(paramContext, "com.dianxinos.dxbs");
    if (CardLibrary.sDebug)
    {
      LogHelper.d("SDKCard", "----开始获取主线带量卡片");
      LogHelper.d("SDKCard", "booster 是否安装：" + bool1);
      LogHelper.d("SDKCard", "battery 是否安装：" + bool2);
      LogHelper.d("SDKCard", "轮播标志：" + MainCardManager.Preference.getTakeTurnFlag(paramContext));
      LogHelper.d("SDKCard", "最近三次展示（1. booster, 2.battery）：" + MainCardManager.Preference.getApkCode(paramContext));
    }
    if ((!(bool2 ^ bool1)) || (MainCardManager.Preference.getTakeTurnFlag(paramContext))) {
      i = getNextShowType(paramContext);
    }
    for (;;)
    {
      updateShowCode(paramContext, i);
      if (CardLibrary.sDebug) {
        LogHelper.d("SDKCard", "本次展示（1. booster, 2.battery）：" + i);
      }
      return i;
      if (bool1)
      {
        if (getCount(paramContext, 2) >= 3)
        {
          MainCardManager.Preference.setTakeTurnFlag(paramContext, true);
          i = 1;
        }
      }
      else if (getCount(paramContext, 1) < 3) {
        i = 1;
      } else {
        MainCardManager.Preference.setTakeTurnFlag(paramContext, true);
      }
    }
  }
  
  private static int getCount(Context paramContext, int paramInt)
  {
    int i = MainCardManager.Preference.getApkCode(paramContext);
    int j = 0;
    while ((i > 0) && (i % 10 == paramInt))
    {
      j += 1;
      i /= 10;
    }
    return j;
  }
  
  public static BaseResultCardView getMainView(Context paramContext)
  {
    if (calcCard(paramContext) == 1) {}
    for (Object localObject = new BoosterCommonCard(CardLibrary.CardType.CARD_MAIN);; localObject = new BatteryCommonCard(CardLibrary.CardType.CARD_MAIN))
    {
      ResultCardReport.reportMainCardShow(paramContext, ((AbstractCommonCard)localObject).getPkgName(), isPkgInstalled(paramContext, ((AbstractCommonCard)localObject).getPkgName()), RuleUtils.isNetworkAvailable(paramContext));
      return ((AbstractCommonCard)localObject).getCardView();
    }
  }
  
  private static int getNextShowType(Context paramContext)
  {
    int i = 1;
    if (MainCardManager.Preference.getApkCode(paramContext) % 10 == 1) {
      i = 2;
    }
    return i;
  }
  
  private static boolean isPkgInstalled(Context paramContext, String paramString)
  {
    boolean bool = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getApplicationInfo(paramString, 0);
      if (paramContext != null) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  private static void updateShowCode(Context paramContext, int paramInt)
  {
    MainCardManager.Preference.setApkCode(paramContext, (MainCardManager.Preference.getApkCode(paramContext) * 10 + paramInt) % 1000);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.MainCardManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */