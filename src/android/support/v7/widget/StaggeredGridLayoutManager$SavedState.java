package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.List;

public class StaggeredGridLayoutManager$SavedState
  implements Parcelable
{
  public static final Parcelable.Creator<SavedState> CREATOR = new StaggeredGridLayoutManager.SavedState.1();
  boolean mAnchorLayoutFromEnd;
  int mAnchorPosition;
  List<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> mFullSpanItems;
  boolean mLastLayoutRTL;
  boolean mReverseLayout;
  int[] mSpanLookup;
  int mSpanLookupSize;
  int[] mSpanOffsets;
  int mSpanOffsetsSize;
  int mVisibleAnchorPosition;
  
  public StaggeredGridLayoutManager$SavedState() {}
  
  StaggeredGridLayoutManager$SavedState(Parcel paramParcel)
  {
    mAnchorPosition = paramParcel.readInt();
    mVisibleAnchorPosition = paramParcel.readInt();
    mSpanOffsetsSize = paramParcel.readInt();
    if (mSpanOffsetsSize > 0)
    {
      mSpanOffsets = new int[mSpanOffsetsSize];
      paramParcel.readIntArray(mSpanOffsets);
    }
    mSpanLookupSize = paramParcel.readInt();
    if (mSpanLookupSize > 0)
    {
      mSpanLookup = new int[mSpanLookupSize];
      paramParcel.readIntArray(mSpanLookup);
    }
    if (paramParcel.readInt() == 1)
    {
      bool1 = true;
      mReverseLayout = bool1;
      if (paramParcel.readInt() != 1) {
        break label152;
      }
      bool1 = true;
      label113:
      mAnchorLayoutFromEnd = bool1;
      if (paramParcel.readInt() != 1) {
        break label157;
      }
    }
    label152:
    label157:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      mLastLayoutRTL = bool1;
      mFullSpanItems = paramParcel.readArrayList(StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.class.getClassLoader());
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label113;
    }
  }
  
  public StaggeredGridLayoutManager$SavedState(SavedState paramSavedState)
  {
    mSpanOffsetsSize = mSpanOffsetsSize;
    mAnchorPosition = mAnchorPosition;
    mVisibleAnchorPosition = mVisibleAnchorPosition;
    mSpanOffsets = mSpanOffsets;
    mSpanLookupSize = mSpanLookupSize;
    mSpanLookup = mSpanLookup;
    mReverseLayout = mReverseLayout;
    mAnchorLayoutFromEnd = mAnchorLayoutFromEnd;
    mLastLayoutRTL = mLastLayoutRTL;
    mFullSpanItems = mFullSpanItems;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  void invalidateAnchorPositionInfo()
  {
    mSpanOffsets = null;
    mSpanOffsetsSize = 0;
    mAnchorPosition = -1;
    mVisibleAnchorPosition = -1;
  }
  
  void invalidateSpanInfo()
  {
    mSpanOffsets = null;
    mSpanOffsetsSize = 0;
    mSpanLookupSize = 0;
    mSpanLookup = null;
    mFullSpanItems = null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeInt(mAnchorPosition);
    paramParcel.writeInt(mVisibleAnchorPosition);
    paramParcel.writeInt(mSpanOffsetsSize);
    if (mSpanOffsetsSize > 0) {
      paramParcel.writeIntArray(mSpanOffsets);
    }
    paramParcel.writeInt(mSpanLookupSize);
    if (mSpanLookupSize > 0) {
      paramParcel.writeIntArray(mSpanLookup);
    }
    if (mReverseLayout)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!mAnchorLayoutFromEnd) {
        break label120;
      }
      paramInt = 1;
      label87:
      paramParcel.writeInt(paramInt);
      if (!mLastLayoutRTL) {
        break label125;
      }
    }
    label120:
    label125:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeList(mFullSpanItems);
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label87;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */