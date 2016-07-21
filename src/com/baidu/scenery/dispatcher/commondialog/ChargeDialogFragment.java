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
import android.widget.ImageView;
import com.baidu.scenery.R.id;
import com.baidu.scenery.R.layout;
import com.baidu.scenery.R.string;

public class ChargeDialogFragment
  extends Fragment
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(R.layout.scenery_charge_dialog, paramViewGroup, false);
    ((ImageView)paramLayoutInflater.findViewById(R.id.dialog_close)).setOnClickListener(new ChargeDialogFragment.1(this));
    paramLayoutInflater.findViewById(R.id.jump_to_google_play).setOnClickListener(new ChargeDialogFragment.2(this));
    paramViewGroup = (CommonTextView)paramLayoutInflater.findViewById(R.id.dialog_content);
    int i = (int)Math.round(getActivity().getIntent().getLongExtra("scenery_charge_extra_minutes", 0L) / 60000.0D);
    paramViewGroup.setText(Html.fromHtml(getString(R.string.scenery_charge_dialog_content, new Object[] { Integer.valueOf(i) })));
    paramViewGroup.setEllipsize(TextUtils.TruncateAt.END);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.ChargeDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */