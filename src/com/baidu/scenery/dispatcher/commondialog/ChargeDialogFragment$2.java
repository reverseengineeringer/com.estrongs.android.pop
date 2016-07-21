package com.baidu.scenery.dispatcher.commondialog;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.dispatcher.RuleUtils;
import com.baidu.scenery.dispatcher.SceneryPreferences;
import com.baidu.scenery.utils.ReportHelper;

class ChargeDialogFragment$2
  implements View.OnClickListener
{
  ChargeDialogFragment$2(ChargeDialogFragment paramChargeDialogFragment) {}
  
  public void onClick(View paramView)
  {
    RuleUtils.jumpToInstall(this$0.getActivity(), "com.dianxinos.dxbs", "scenesdk", SceneryLibrary.getBdct());
    SceneryPreferences.setClickTimeStamp(this$0.getActivity(), "com.dianxinos.dxbs", System.currentTimeMillis());
    ReportHelper.reportClick(this$0.getActivity(), "com.dianxinos.dxbs");
    this$0.getActivity().finish();
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.ChargeDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */