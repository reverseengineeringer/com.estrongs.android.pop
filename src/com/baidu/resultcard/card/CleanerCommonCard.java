package com.baidu.resultcard.card;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug.MemoryInfo;
import com.baidu.resultcard.view.BaseResultCardView;
import com.baidu.resultcard.view.CleanerResultCardView;
import com.baidu.scenery.utils.ProcessUtils;

public class CleanerCommonCard
  extends AbstractCommonCard
{
  protected void doInBackground(AbstractCommonCard.OnBackgroundRefreshListener paramOnBackgroundRefreshListener)
  {
    if (paramOnBackgroundRefreshListener == null)
    {
      paramOnBackgroundRefreshListener.onBackgroundRefresh(new Object[] { Integer.valueOf(0) });
      return;
    }
    int[] arrayOfInt = ProcessUtils.getBackgroudProcessPids(mContext);
    if ((arrayOfInt == null) || (arrayOfInt.length == 0)) {
      paramOnBackgroundRefreshListener.onBackgroundRefresh(new Object[] { Integer.valueOf(0) });
    }
    ActivityManager localActivityManager = (ActivityManager)mContext.getSystemService("activity");
    long l1 = 0L;
    int i = 0;
    if (i < arrayOfInt.length)
    {
      Debug.MemoryInfo[] arrayOfMemoryInfo = localActivityManager.getProcessMemoryInfo(new int[] { arrayOfInt[i] });
      long l2 = l1;
      if (arrayOfMemoryInfo != null)
      {
        if (arrayOfMemoryInfo.length == 1) {
          break label129;
        }
        l2 = l1;
      }
      for (;;)
      {
        i += 1;
        l1 = l2;
        break;
        label129:
        l2 = l1 + arrayOfMemoryInfo[0].getTotalPss();
        paramOnBackgroundRefreshListener.onBackgroundRefresh(new Object[] { Long.valueOf(l2) });
      }
    }
    paramOnBackgroundRefreshListener.onBackgroundRefresh(new Object[] { Long.valueOf(l1) });
  }
  
  public String getPkgName()
  {
    return "com.duapps.cleaner";
  }
  
  protected BaseResultCardView getView()
  {
    CleanerResultCardView localCleanerResultCardView = new CleanerResultCardView(mContext);
    localCleanerResultCardView.init();
    return localCleanerResultCardView;
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
 * Qualified Name:     com.baidu.resultcard.card.CleanerCommonCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */