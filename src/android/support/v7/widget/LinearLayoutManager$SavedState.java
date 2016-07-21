package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LinearLayoutManager$SavedState
  implements Parcelable
{
  public static final Parcelable.Creator<SavedState> CREATOR = new LinearLayoutManager.SavedState.1();
  boolean mAnchorLayoutFromEnd;
  int mAnchorOffset;
  int mAnchorPosition;
  
  public LinearLayoutManager$SavedState() {}
  
  LinearLayoutManager$SavedState(Parcel paramParcel)
  {
    mAnchorPosition = paramParcel.readInt();
    mAnchorOffset = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      mAnchorLayoutFromEnd = bool;
      return;
      bool = false;
    }
  }
  
  public LinearLayoutManager$SavedState(SavedState paramSavedState)
  {
    mAnchorPosition = mAnchorPosition;
    mAnchorOffset = mAnchorOffset;
    mAnchorLayoutFromEnd = mAnchorLayoutFromEnd;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  boolean hasValidAnchor()
  {
    return mAnchorPosition >= 0;
  }
  
  void invalidateAnchor()
  {
    mAnchorPosition = -1;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(mAnchorPosition);
    paramParcel.writeInt(mAnchorOffset);
    if (mAnchorLayoutFromEnd) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */