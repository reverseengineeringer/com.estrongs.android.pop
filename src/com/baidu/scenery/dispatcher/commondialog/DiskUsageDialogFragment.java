package com.baidu.scenery.dispatcher.commondialog;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.text.TextUtils.TruncateAt;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.scenery.R.id;
import com.baidu.scenery.R.layout;
import com.baidu.scenery.R.string;

public class DiskUsageDialogFragment
  extends Fragment
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(R.layout.scenery_disk_usage_dialog, paramViewGroup, false);
    paramLayoutInflater.findViewById(R.id.dialog_close).setOnClickListener(new DiskUsageDialogFragment.1(this));
    paramLayoutInflater.findViewById(R.id.jump_to_google_play).setOnClickListener(new DiskUsageDialogFragment.2(this));
    paramViewGroup = (CommonTextView)paramLayoutInflater.findViewById(R.id.dialog_content);
    long l = getActivity().getIntent().getLongExtra("scenery_extra_disk_usage_size", 0L) / 1048576L;
    int i = (int)Math.round(getActivity().getIntent().getLongExtra("scenery_extra_disk_usage_day", 0L) / 8.64E7D);
    paramViewGroup.setText(Html.fromHtml(getString(R.string.scenery_disk_usage_dialog_content, new Object[] { Long.valueOf(l), Integer.valueOf(i) })));
    paramViewGroup.setEllipsize(TextUtils.TruncateAt.END);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.DiskUsageDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */