package com.baidu.resultcard.card;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.resultcard.CardLibrary;
import com.baidu.resultcard.CardLibrary.CardType;
import com.baidu.resultcard.CardPreferences;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.scenery.dispatcher.RuleUtils;
import com.baidu.scenery.utils.LogHelper;
import java.lang.ref.WeakReference;

public abstract class AbstractCommonCard
{
  protected CardLibrary.CardType mCardType;
  protected Context mContext = CardLibrary.getAppContext();
  
  public AbstractCommonCard()
  {
    this(CardLibrary.CardType.CARD_COMMON);
  }
  
  public AbstractCommonCard(CardLibrary.CardType paramCardType)
  {
    mCardType = paramCardType;
  }
  
  private void loadData(WeakReference<BaseResultCardView> paramWeakReference)
  {
    new AbstractCommonCard.1(this, paramWeakReference).start();
  }
  
  protected void doInBackground(AbstractCommonCard.OnBackgroundRefreshListener paramOnBackgroundRefreshListener) {}
  
  protected CardLibrary.CardType getCardType()
  {
    return mCardType;
  }
  
  public BaseResultCardView getCardView()
  {
    BaseResultCardView localBaseResultCardView = getView();
    if (localBaseResultCardView == null) {
      return null;
    }
    if (isNeedLoadData()) {
      loadData(new WeakReference(localBaseResultCardView));
    }
    localBaseResultCardView.setCardType(mCardType);
    return localBaseResultCardView;
  }
  
  public abstract String getPkgName();
  
  protected abstract BaseResultCardView getView();
  
  public boolean isAvailable(String paramString)
  {
    String str = getPkgName();
    if (CardLibrary.sDebug) {
      LogHelper.d("SDKCard", "判断" + str + "是否展示");
    }
    if (TextUtils.equals(paramString, str)) {
      if (CardLibrary.sDebug) {
        LogHelper.d("SDKCard", "与主线卡片冲突，不展示");
      }
    }
    do
    {
      do
      {
        return false;
        if (!RuleUtils.isPkgInstalled(mContext, str)) {
          break;
        }
      } while (!CardLibrary.sDebug);
      LogHelper.d("SDKCard", "已经安装，不展示");
      return false;
      long l = CardPreferences.getCardAppUnInstallTime(mContext, str);
      if ((l <= 0L) || (System.currentTimeMillis() - l >= 259200000L)) {
        break;
      }
    } while (!CardLibrary.sDebug);
    LogHelper.d("SDKCard", "72小时内安装又卸载，不展示");
    return false;
    if (CardLibrary.sDebug) {
      LogHelper.d("SDKCard", "展示" + str);
    }
    return true;
  }
  
  protected boolean isNeedLoadData()
  {
    return false;
  }
  
  protected void updateViewUI(BaseResultCardView paramBaseResultCardView, Object... paramVarArgs) {}
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.card.AbstractCommonCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */