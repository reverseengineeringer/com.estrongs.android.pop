package com.baidu.scenery.dispatcher.commondialog;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.text.TextUtils.TruncateAt;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.baidu.scenery.R.id;
import com.baidu.scenery.R.layout;
import com.baidu.scenery.R.string;

public class TakePhotoDialogFragment
  extends Fragment
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(R.layout.scenery_take_photo_dialog, paramViewGroup, false);
    paramLayoutInflater.findViewById(R.id.dialog_close).setOnClickListener(new TakePhotoDialogFragment.1(this));
    paramLayoutInflater.findViewById(R.id.jump_to_google_play).setOnClickListener(new TakePhotoDialogFragment.2(this));
    paramViewGroup = (CommonTextView)paramLayoutInflater.findViewById(R.id.dialog_content);
    paramViewGroup.setText(Html.fromHtml(getString(R.string.scenery_take_photo_dialog_content)));
    paramViewGroup.setEllipsize(TextUtils.TruncateAt.END);
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.commondialog.TakePhotoDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */