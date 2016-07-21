package com.estrongs.android.pop.spfs.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FlickrPhotoAlbumDialog
  extends ci
{
  private List<Album> albumList;
  private List<Album> allAlbumList;
  private boolean[] checkedInfo = null;
  LayoutInflater factory;
  private boolean isRadio = false;
  private FlickrPhotoAlbumDialog.AlbumOptionCallback mAocb = null;
  private final RadioButton new_album_radio;
  List<Album> selectedList = new ArrayList();
  
  public FlickrPhotoAlbumDialog(Context paramContext, FlickrPhotoAlbumDialog.AlbumOptionCallback paramAlbumOptionCallback, String paramString, List<Album> paramList1, List<Album> paramList2)
  {
    super(paramContext);
    mAocb = paramAlbumOptionCallback;
    setTitle(2131230920);
    albumList = paramList1;
    allAlbumList = paramList2;
    factory = k.a(paramContext);
    setContentView(factory.inflate(2130903236, null));
    paramList2 = (ListView)findViewById(2131624920);
    paramAlbumOptionCallback = (ProgressBar)findViewById(2131624918);
    View localView = findViewById(2131624919);
    paramAlbumOptionCallback.setVisibility(0);
    localView.setVisibility(4);
    paramList1 = new FlickrPhotoAlbumDialog.AlbumAdapter(this);
    if (ap.aB(paramString)) {
      isRadio = true;
    }
    new FlickrPhotoAlbumDialog.1(this, paramAlbumOptionCallback, localView, paramList2, paramList1, paramString).execute(new Void[0]);
    paramString = (CheckBox)findViewById(2131624923);
    new_album_radio = ((RadioButton)findViewById(2131624924));
    paramList2 = (EditText)findViewById(2131624922);
    if (isRadio)
    {
      paramString.setVisibility(8);
      new_album_radio.setVisibility(0);
    }
    new_album_radio.setOnCheckedChangeListener(new FlickrPhotoAlbumDialog.2(this, paramList1));
    setConfirmButton(getString(2131231270), new FlickrPhotoAlbumDialog.3(this, paramAlbumOptionCallback, paramString, paramList2, paramContext));
    setCancelButton(getString(2131231265), null);
  }
  
  private boolean albumContains(List<Album> paramList, Album paramAlbum)
  {
    if ((paramList == null) || (paramAlbum == null) || (paramList.size() < 0)) {
      return false;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (nextid.equals(id)) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */