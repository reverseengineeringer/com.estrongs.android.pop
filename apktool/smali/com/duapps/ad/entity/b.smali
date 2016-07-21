.class final Lcom/duapps/ad/entity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/duapps/ad/entity/AdModel;",
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
.method public a(Landroid/os/Parcel;)Lcom/duapps/ad/entity/AdModel;
    .locals 2

    new-instance v0, Lcom/duapps/ad/entity/AdModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/duapps/ad/entity/AdModel;-><init>(Landroid/os/Parcel;Lcom/duapps/ad/entity/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/duapps/ad/entity/AdModel;
    .locals 1

    new-array v0, p1, [Lcom/duapps/ad/entity/AdModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duapps/ad/entity/b;->a(Landroid/os/Parcel;)Lcom/duapps/ad/entity/AdModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duapps/ad/entity/b;->a(I)[Lcom/duapps/ad/entity/AdModel;

    move-result-object v0

    return-object v0
.end method
