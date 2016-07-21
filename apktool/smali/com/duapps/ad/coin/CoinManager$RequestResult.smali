.class public Lcom/duapps/ad/coin/CoinManager$RequestResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duapps/ad/coin/CoinManager$RequestResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/duapps/ad/coin/c;

    invoke-direct {v0}, Lcom/duapps/ad/coin/c;-><init>()V

    sput-object v0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duapps/ad/coin/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duapps/ad/coin/CoinManager$RequestResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a:I

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->e:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/coin/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/coin/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/duapps/ad/coin/CoinManager$RequestResult;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/duapps/ad/coin/CoinManager$RequestResult;

    invoke-direct {v3, v1, v2}, Lcom/duapps/ad/coin/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "total"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a:I

    const-string v1, "midscore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/duapps/ad/coin/CoinManager$RequestResult;->b:I

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const-string v1, "integalMax"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/duapps/ad/coin/CoinManager$RequestResult;->d:I

    const-string v1, "midpayscore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/duapps/ad/coin/CoinManager$RequestResult;->g:I

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/duapps/ad/coin/CoinManager$RequestResult;->i:Z

    return-object v3
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/duapps/ad/coin/CoinManager$RequestResult;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
