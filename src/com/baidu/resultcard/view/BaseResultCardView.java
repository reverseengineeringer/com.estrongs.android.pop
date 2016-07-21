package com.baidu.resultcard.view;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.baidu.resultcard.CardLibrary;
import com.baidu.resultcard.CardLibrary.CardType;
import com.baidu.resultcard.CardPreferences;
import com.baidu.resultcard.report.ResultCardReport;
import com.baidu.scenery.R.id;
import com.baidu.scenery.R.layout;
import com.baidu.scenery.dispatcher.RuleUtils;
import com.baidu.scenery.dispatcher.commondialog.CommonTextView;
import java.util.Iterator;
import java.util.List;

public abstract class BaseResultCardView
  extends LinearLayout
  implements View.OnClickListener
{
  protected int bannerId = 0;
  protected int buttonId = 0;
  protected int contentId = 0;
  protected int iconId = 0;
  protected CardLibrary.CardType mCardType;
  protected View.OnClickListener mClickListener;
  protected Context mContext;
  protected String pkgName;
  protected int titleId = 0;
  
  public BaseResultCardView(Context paramContext)
  {
    super(paramContext);
    mContext = paramContext;
    LayoutInflater.from(paramContext).inflate(R.layout.common_card_layout, this);
  }
  
  private void initCardView()
  {
    Object localObject = getContext();
    if (bannerId != 0) {
      ((ImageView)findViewById(R.id.scenery_card_banner)).setImageResource(bannerId);
    }
    if (titleId != 0) {
      ((CommonTextView)findViewById(R.id.scenery_card_title)).setText(((Context)localObject).getString(titleId));
    }
    if (buttonId != 0)
    {
      CommonTextView localCommonTextView = (CommonTextView)findViewById(R.id.scenery_card_button);
      localCommonTextView.setText(((Context)localObject).getString(buttonId));
      localCommonTextView.setOnClickListener(this);
    }
    if (iconId != 0)
    {
      localObject = (ImageView)findViewById(R.id.scenery_card_button_icon);
      ((ImageView)localObject).setImageResource(iconId);
      ((ImageView)localObject).setOnClickListener(this);
    }
    if (RuleUtils.isPkgInstalled(mContext, pkgName)) {
      ((ImageView)findViewById(R.id.scenery_card_adview)).setVisibility(4);
    }
    ((LinearLayout)findViewById(R.id.scenery_card_layout)).setOnClickListener(this);
  }
  
  private void startApplication(String paramString)
  {
    try
    {
      if (TextUtils.equals(paramString, "com.dianxinos.dxbs")) {}
      for (Intent localIntent = new Intent("com.dianxinos.dxbs.action.DIAGNOSTIC", null);; localIntent = new Intent("android.intent.action.MAIN", null))
      {
        localIntent.addCategory("android.intent.category.DEFAULT");
        localIntent.addFlags(268468224);
        localIntent.setPackage(paramString);
        if (TextUtils.equals(paramString, "com.dianxinos.optimizer.duplay")) {
          localIntent.putExtra("extra.autoscan", true);
        }
        mContext.startActivity(localIntent);
        return;
      }
      return;
    }
    catch (Exception paramString) {}
  }
  
  private void startWirelessActivity(Context paramContext)
  {
    Object localObject1;
    if (Build.VERSION.SDK_INT > 20)
    {
      localObject1 = new Intent("android.settings.WIRELESS_SETTINGS");
      ((Intent)localObject1).addFlags(268435456);
      paramContext.startActivity((Intent)localObject1);
    }
    for (;;)
    {
      return;
      localObject1 = paramContext.getPackageManager().queryIntentActivities(new Intent("android.settings.SETTINGS"), 65536).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (ResolveInfo)((Iterator)localObject1).next();
        if ((localObject2 != null) && (activityInfo != null) && (!TextUtils.isEmpty(activityInfo.packageName))) {
          try
          {
            localObject2 = activityInfo.packageName;
            localObject2 = new Intent().setComponent(new ComponentName((String)localObject2, (String)localObject2 + ".Settings$DataUsageSummaryActivity"));
            ((Intent)localObject2).addFlags(268435456);
            paramContext.startActivity((Intent)localObject2);
            return;
          }
          catch (ActivityNotFoundException localActivityNotFoundException) {}
        }
      }
    }
  }
  
  protected int getArgs()
  {
    return -1;
  }
  
  public String getPkgName()
  {
    return pkgName;
  }
  
  public void init()
  {
    initCardView();
    int i = getArgs();
    if (-1 == i)
    {
      setArgContent(new Object[] { "..." });
      return;
    }
    if (-2 == i)
    {
      setArgContent(new Object[] { "...", "...", "..." });
      return;
    }
    setArgContent(new Object[] { Integer.valueOf(i) });
  }
  
  public void onClick(View paramView)
  {
    boolean bool1 = RuleUtils.isPkgInstalled(mContext, pkgName);
    boolean bool2 = RuleUtils.isNetworkAvailable(mContext);
    if ((mCardType == CardLibrary.CardType.CARD_MAIN) && (bool1))
    {
      startApplication(pkgName);
      if (mCardType != CardLibrary.CardType.CARD_COMMON) {
        break label155;
      }
      ResultCardReport.reportCommonClick(mContext, pkgName, bool2);
    }
    for (;;)
    {
      String str = pkgName + mCardType;
      CardPreferences.setCardClickTime(mContext, str, System.currentTimeMillis());
      if (mClickListener != null) {
        mClickListener.onClick(paramView);
      }
      return;
      if (bool2)
      {
        RuleUtils.jumpToInstall(getContext(), pkgName, "resultsdk", CardLibrary.getBdct());
        break;
      }
      startWirelessActivity(mContext);
      break;
      label155:
      if (mCardType == CardLibrary.CardType.CARD_MAIN) {
        ResultCardReport.reportMainCardClick(mContext, pkgName, bool1, bool2);
      }
    }
  }
  
  public void onDestroy()
  {
    mContext = null;
    mClickListener = null;
  }
  
  protected void setArgContent(Object... paramVarArgs)
  {
    ((CommonTextView)findViewById(R.id.scenery_card_content)).setText(Html.fromHtml(getContext().getString(contentId, paramVarArgs)));
  }
  
  public void setCardOnClickListener(View.OnClickListener paramOnClickListener)
  {
    mClickListener = paramOnClickListener;
  }
  
  public void setCardType(CardLibrary.CardType paramCardType)
  {
    mCardType = paramCardType;
  }
  
  public void setContentParam(Object... paramVarArgs)
  {
    setArgContent(paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.view.BaseResultCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */