package com.baidu.scenery.dispatcher.commondialog;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.baidu.scenery.utils.ReportHelper;

class DiskUsageDialogFragment$1
  implements View.OnClickListener
{
  DiskUsageDialogFragment$1(DiskUsageDialogFragment paramDiskUsageDialogFragment) {}
  
  public void onClick(View paramView)
  {
    this$0.getActivity().finish();
    ReportHelper.reportEvent(this$0.getActivity(), "duscenery_sdk_close", "scenery_disk_usage_dialog", Integer.valueOf(1));
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.DiskUsageDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */