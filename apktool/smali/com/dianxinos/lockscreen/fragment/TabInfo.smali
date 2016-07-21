.class public Lcom/dianxinos/lockscreen/fragment/TabInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dianxinos/lockscreen/fragment/TabInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Lcom/dianxinos/lockscreen/fragment/a;

.field public c:Z

.field public d:Ljava/lang/Class;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dianxinos/lockscreen/fragment/d;

    invoke-direct {v0}, Lcom/dianxinos/lockscreen/fragment/d;-><init>()V

    sput-object v0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/Class;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->a:Z

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->c:Z

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->d:Ljava/lang/Class;

    iput-object p2, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->g:Ljava/lang/String;

    iput p1, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->e:I

    iput p3, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->f:I

    iput-object p4, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->d:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dianxinos/lockscreen/fragment/TabInfo;-><init>(ILjava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->a:Z

    iput-object v2, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->c:Z

    iput-object v2, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->d:Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->c:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->e:I

    return v0
.end method

.method public b()Lcom/dianxinos/lockscreen/fragment/a;
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->d:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/fragment/a;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->b:Lcom/dianxinos/lockscreen/fragment/a;

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/fragment/TabInfo;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
