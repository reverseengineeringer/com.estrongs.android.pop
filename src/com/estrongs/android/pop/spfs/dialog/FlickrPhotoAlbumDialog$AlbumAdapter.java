package com.estrongs.android.pop.spfs.dialog;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.TextView;
import com.estrongs.android.pop.spfs.Album;
import java.util.List;

class FlickrPhotoAlbumDialog$AlbumAdapter
  extends BaseAdapter
{
  FlickrPhotoAlbumDialog$AlbumAdapter(FlickrPhotoAlbumDialog paramFlickrPhotoAlbumDialog) {}
  
  public void cancelAllRadio()
  {
    int i = 0;
    while (i < FlickrPhotoAlbumDialog.access$300(this$0).length)
    {
      FlickrPhotoAlbumDialog.access$300(this$0)[i] = 0;
      i += 1;
    }
  }
  
  public int getCount()
  {
    if (FlickrPhotoAlbumDialog.access$100(this$0) == null) {
      return 0;
    }
    return FlickrPhotoAlbumDialog.access$100(this$0).size();
  }
  
  public Object getItem(int paramInt)
  {
    return FlickrPhotoAlbumDialog.access$100(this$0).get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = this$0.factory.inflate(2130903235, null);
    }
    ((TextView)paramViewGroup.findViewById(2131624915)).setText(access$100this$0).get(paramInt)).name);
    paramView = (CheckBox)paramViewGroup.findViewById(2131624916);
    paramView.setOnCheckedChangeListener(new FlickrPhotoAlbumDialog.AlbumAdapter.1(this, paramInt));
    RadioButton localRadioButton = (RadioButton)paramViewGroup.findViewById(2131624917);
    localRadioButton.setOnCheckedChangeListener(new FlickrPhotoAlbumDialog.AlbumAdapter.2(this, paramInt));
    if (FlickrPhotoAlbumDialog.access$500(this$0))
    {
      localRadioButton.setVisibility(0);
      paramView.setVisibility(8);
    }
    if (FlickrPhotoAlbumDialog.access$500(this$0)) {
      if (FlickrPhotoAlbumDialog.access$300(this$0)[paramInt] != 0) {
        localRadioButton.setChecked(true);
      }
    }
    for (;;)
    {
      paramViewGroup.setOnClickListener(new FlickrPhotoAlbumDialog.AlbumAdapter.3(this, localRadioButton, paramView));
      return paramViewGroup;
      localRadioButton.setChecked(false);
      continue;
      if (FlickrPhotoAlbumDialog.access$300(this$0)[paramInt] != 0) {
        paramView.setChecked(true);
      } else {
        paramView.setChecked(false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.AlbumAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */