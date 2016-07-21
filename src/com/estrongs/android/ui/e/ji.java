package com.estrongs.android.ui.e;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;

class ji
  extends ci
{
  public ji(PopAudioPlayer paramPopAudioPlayer)
  {
    super(paramPopAudioPlayer);
    setTitle(getString(2131231617));
    View localView = k.a(paramPopAudioPlayer).inflate(2130903423, null);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131624070);
    boolean bool = ad.a(paramPopAudioPlayer).az();
    localCheckBox.setChecked(bool);
    ((TextView)localView.findViewById(2131624641)).setText(paramPopAudioPlayer.getString(2131231050));
    setContentView(localView);
    localView.setOnClickListener(new jj(this, localCheckBox));
    setConfirmButton(getString(2131231270), new jk(this, localCheckBox, bool, paramPopAudioPlayer));
    setCancelButton(getString(2131231265), new jl(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */