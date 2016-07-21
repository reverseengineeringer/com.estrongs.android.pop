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

public class UninstallDialogFragment
  extends Fragment
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(R.layout.scenery_uninstall_dialog, paramViewGroup, false);
    paramLayoutInflater.findViewById(R.id.dialog_close).setOnClickListener(new UninstallDialogFragment.1(this));
    paramLayoutInflater.findViewById(R.id.jump_to_google_play).setOnClickListener(new UninstallDialogFragment.2(this));
    paramViewGroup = (CommonTextView)paramLayoutInflater.findViewById(R.id.dialog_content);
    paramBundle = getActivity().getIntent().getStringExtra("scenery_extra_uninstall_appname");
    paramViewGroup.setText(Html.fromHtml(getString(R.string.scenery_uninstall_dialog_content, new Object[] { paramBundle })));
    paramViewGroup.setEllipsize(TextUtils.TruncateAt.END);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.UninstallDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */