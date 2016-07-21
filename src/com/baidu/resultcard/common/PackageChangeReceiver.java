package com.baidu.resultcard.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.resultcard.CardLibrary;
import com.baidu.resultcard.CardLibrary.CardType;
import com.baidu.resultcard.CardPreferences;
import com.baidu.resultcard.CommonCardManager;
import com.baidu.resultcard.MainCardManager.Preference;
import com.baidu.resultcard.report.ResultCardReport;
import com.baidu.scenery.utils.LogHelper;
import java.net.URI;

public class PackageChangeReceiver
  extends BroadcastReceiver
{
  public static void onPackageAdded(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false)) {}
    long l2;
    do
    {
      long l1;
      do
      {
        do
        {
          return;
          paramIntent = URI.create(paramIntent.getDataString()).getSchemeSpecificPart();
        } while (TextUtils.isEmpty(paramIntent));
        updateMainCardFlag(paramContext, paramIntent);
        CommonCardManager.onPackageInstall(paramContext, paramIntent);
        String str1 = paramIntent + CardLibrary.CardType.CARD_MAIN;
        String str2 = paramIntent + CardLibrary.CardType.CARD_COMMON;
        l1 = CardPreferences.getCardClickTime(paramContext, str1, 0L);
        l2 = CardPreferences.getCardClickTime(paramContext, str2, 0L);
        if (l2 >= l1) {
          break;
        }
      } while ((l1 <= 0L) || (System.currentTimeMillis() - l1 >= 86400000L));
      ResultCardReport.reportMainInstall(paramContext, paramIntent);
      return;
    } while ((l2 <= 0L) || (System.currentTimeMillis() - l2 >= 86400000L));
    ResultCardReport.reportCommonInstall(paramContext, paramIntent);
  }
  
  public static void onPackageRemoved(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false)) {}
    do
    {
      return;
      paramIntent = paramIntent.getData().getSchemeSpecificPart();
    } while (TextUtils.isEmpty(paramIntent));
    updateMainCardFlag(paramContext, paramIntent);
    CommonCardManager.onPackageRemoved(paramContext, paramIntent);
  }
  
  private static void updateMainCardFlag(Context paramContext, String paramString)
  {
    if ((TextUtils.equals(paramString, "com.dianxinos.dxbs")) || (TextUtils.equals(paramString, "com.dianxinos.optimizer.duplay")))
    {
      if (CardLibrary.sDebug) {
        LogHelper.d("SDKCard", "安装/卸载 省电（booster），更新轮询标志");
      }
      MainCardManager.Preference.setTakeTurnFlag(paramContext, false);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null) {}
    String str;
    do
    {
      return;
      str = paramIntent.getAction();
      LogHelper.d("SDKCard", "action = " + str);
      if (TextUtils.equals(str, "android.intent.action.PACKAGE_REMOVED"))
      {
        onPackageRemoved(paramContext, paramIntent);
        return;
      }
    } while (!TextUtils.equals(str, "android.intent.action.PACKAGE_ADDED"));
    onPackageAdded(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.common.PackageChangeReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */