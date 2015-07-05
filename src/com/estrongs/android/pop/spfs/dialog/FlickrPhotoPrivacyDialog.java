package com.estrongs.android.pop.spfs.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import java.util.Iterator;
import java.util.List;

public class FlickrPhotoPrivacyDialog
  extends cg
{
  private static final String ALBUM_DIV = ",";
  private static final String TAG_DIV = " ";
  private List<Album> addAlbumList = null;
  FlickrPhotoAlbumDialog albumDialog = null;
  private List<Album> albumList;
  private List<Album> allAlbumList = null;
  private Button btn_pic_name;
  private CheckBox cbxFamiliy;
  private CheckBox cbxFriend;
  private EditText description;
  private String destPath;
  private SPFileInfo info = null;
  private boolean isAlbumEdit = false;
  private View overwriteOptionView;
  private FlickrPhotoPrivacyDialog.PrivacyOptionCallback pocb = null;
  private TypedMap privacies = new TypedMap();
  private RadioButton radioAnyone;
  private RadioGroup radioGroup;
  private RadioButton radioOnlyYou;
  private List<Album> removeAlbumList = null;
  private List<Album> selectedAlbumList = null;
  private EditText tag;
  private EditText title;
  
  public FlickrPhotoPrivacyDialog(Context paramContext, FlickrPhotoPrivacyDialog.PrivacyOptionCallback paramPrivacyOptionCallback, SPFileObject paramSPFileObject)
  {
    this(paramContext, paramPrivacyOptionCallback, paramSPFileObject, null);
  }
  
  public FlickrPhotoPrivacyDialog(Context paramContext, FlickrPhotoPrivacyDialog.PrivacyOptionCallback paramPrivacyOptionCallback, SPFileObject paramSPFileObject, String paramString)
  {
    super(paramContext);
    pocb = paramPrivacyOptionCallback;
    destPath = paramString;
    if (paramSPFileObject != null) {
      destPath = paramSPFileObject.getPath();
    }
    boolean bool;
    if ((paramString == null) && (am.aK(destPath)))
    {
      bool = true;
      isAlbumEdit = bool;
      setTitle(mContext.getResources().getString(2131428058));
      overwriteOptionView = g.a(paramContext).inflate(2130903132, null);
      setContentView(overwriteOptionView);
      paramPrivacyOptionCallback = (ProgressBar)findViewById(2131362312);
      paramString = findViewById(2131362319);
      title = ((EditText)overwriteOptionView.findViewById(2131361825));
      description = ((EditText)overwriteOptionView.findViewById(2131361951));
      tag = ((EditText)overwriteOptionView.findViewById(2131362323));
      btn_pic_name = ((Button)overwriteOptionView.findViewById(2131362325));
      FlickrPhotoPrivacyDialog.1 local1 = new FlickrPhotoPrivacyDialog.1(this);
      btn_pic_name.setOnClickListener(new FlickrPhotoPrivacyDialog.2(this, local1));
      radioGroup = ((RadioGroup)overwriteOptionView.findViewById(2131362327));
      radioOnlyYou = ((RadioButton)overwriteOptionView.findViewById(2131362328));
      radioAnyone = ((RadioButton)overwriteOptionView.findViewById(2131362331));
      cbxFriend = ((CheckBox)overwriteOptionView.findViewById(2131362329));
      cbxFamiliy = ((CheckBox)overwriteOptionView.findViewById(2131362330));
      radioGroup.setOnCheckedChangeListener(new FlickrPhotoPrivacyDialog.3(this));
      adjustkUI();
      setConfirmButton(paramContext.getText(2131427339), new FlickrPhotoPrivacyDialog.4(this, paramPrivacyOptionCallback, paramSPFileObject));
      setCancelButton(paramContext.getText(2131427340), new FlickrPhotoPrivacyDialog.5(this));
      if (paramSPFileObject != null)
      {
        title.setText(paramSPFileObject.getName());
        if (!paramSPFileObject.isPublicFlag()) {
          break label497;
        }
        radioAnyone.setChecked(true);
        radioOnlyYou.setChecked(false);
        cbxFriend.setChecked(false);
        cbxFriend.setEnabled(false);
        cbxFamiliy.setChecked(false);
        cbxFamiliy.setEnabled(false);
      }
    }
    for (;;)
    {
      paramPrivacyOptionCallback.setVisibility(0);
      paramString.setVisibility(4);
      new FlickrPhotoPrivacyDialog.6(this, paramPrivacyOptionCallback, paramString, paramSPFileObject).execute(new Void[0]);
      return;
      bool = false;
      break;
      label497:
      radioAnyone.setChecked(false);
      radioOnlyYou.setChecked(true);
      cbxFriend.setChecked(paramSPFileObject.isFriendFlag());
      cbxFamiliy.setChecked(paramSPFileObject.isFamilyFlag());
    }
  }
  
  public FlickrPhotoPrivacyDialog(Context paramContext, FlickrPhotoPrivacyDialog.PrivacyOptionCallback paramPrivacyOptionCallback, String paramString)
  {
    this(paramContext, paramPrivacyOptionCallback, (SPFileObject)null, paramString);
    adjustkUI();
  }
  
  private void displayPicName(List<Album> paramList)
  {
    if ((paramList != null) && (paramList.size() >= 1))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localStringBuilder.append(nextname).append(",");
      }
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
      btn_pic_name.setText(localStringBuilder.toString());
      return;
    }
    btn_pic_name.setText(mContext.getText(2131428063));
  }
  
  protected void adjustkUI()
  {
    if (am.ar(destPath))
    {
      findViewById(2131362326).setVisibility(8);
      findViewById(2131362320).setVisibility(8);
      findViewById(2131362321).setVisibility(8);
      description.setVisibility(8);
      tag.setVisibility(8);
    }
    if (isAlbumEdit)
    {
      findViewById(2131362326).setVisibility(8);
      findViewById(2131362321).setVisibility(8);
      tag.setVisibility(8);
      findViewById(2131362322).setVisibility(8);
      findViewById(2131362324).setVisibility(8);
    }
  }
  
  public void dismiss(boolean paramBoolean)
  {
    pocb.setPrivacty(privacies, paramBoolean);
    dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */