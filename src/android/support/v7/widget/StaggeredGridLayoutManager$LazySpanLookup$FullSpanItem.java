package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Arrays;

class StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem
  implements Parcelable
{
  public static final Parcelable.Creator<FullSpanItem> CREATOR = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1();
  int mGapDir;
  int[] mGapPerSpan;
  boolean mHasUnwantedGapAfter;
  int mPosition;
  
  public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem() {}
  
  public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(Parcel paramParcel)
  {
    mPosition = paramParcel.readInt();
    mGapDir = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      mHasUnwantedGapAfter = bool;
      int i = paramParcel.readInt();
      if (i > 0)
      {
        mGapPerSpan = new int[i];
        paramParcel.readIntArray(mGapPerSpan);
      }
      return;
      bool = false;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  int getGapForSpan(int paramInt)
  {
    if (mGapPerSpan == null) {
      return 0;
    }
    return mGapPerSpan[paramInt];
  }
  
  public String toString()
  {
    return "FullSpanItem{mPosition=" + mPosition + ", mGapDir=" + mGapDir + ", mHasUnwantedGapAfter=" + mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(mGapPerSpan) + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(mPosition);
    paramParcel.writeInt(mGapDir);
    if (mHasUnwantedGapAfter) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      if ((mGapPerSpan == null) || (mGapPerSpan.length <= 0)) {
        break;
      }
      paramParcel.writeInt(mGapPerSpan.length);
      paramParcel.writeIntArray(mGapPerSpan);
      return;
    }
    paramParcel.writeInt(0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */