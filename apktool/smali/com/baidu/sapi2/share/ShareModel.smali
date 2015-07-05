.class Lcom/baidu/sapi2/share/ShareModel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/sapi2/share/ShareModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/sapi2/SapiAccount;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/sapi2/share/ShareEvent;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/sapi2/share/d;

    invoke-direct {v0}, Lcom/baidu/sapi2/share/d;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/share/ShareModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/share/ShareModel;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/baidu/sapi2/share/ShareEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    return-void
.end method

.method constructor <init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;)V

    iput-object p2, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    return-void
.end method

.method constructor <init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/share/ShareEvent;",
            "Lcom/baidu/sapi2/SapiAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/share/ShareModel;-><init>(Lcom/baidu/sapi2/share/ShareEvent;Lcom/baidu/sapi2/SapiAccount;)V

    iput-object p3, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/share/ShareEvent;

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    sget-object v1, Lcom/baidu/sapi2/SapiAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    const-class v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/share/ShareModel;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method a(Lcom/baidu/sapi2/SapiAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    return-void
.end method

.method a(Lcom/baidu/sapi2/share/ShareEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    return-void
.end method

.method a(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/SapiAccount;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method b()Lcom/baidu/sapi2/share/ShareEvent;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/baidu/sapi2/share/ShareModel;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShareModel{currentAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", senderStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->c:Lcom/baidu/sapi2/share/ShareEvent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->a:Lcom/baidu/sapi2/SapiAccount;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->e:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
