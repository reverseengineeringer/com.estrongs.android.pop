.class final Lcom/estrongs/android/ui/preference/esswitch/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/preference/esswitch/c;->a(Landroid/os/Parcel;)Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/preference/esswitch/c;->a(I)[Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;

    move-result-object v0

    return-object v0
.end method
