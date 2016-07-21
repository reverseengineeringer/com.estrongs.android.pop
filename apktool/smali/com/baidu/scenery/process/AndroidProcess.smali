.class public Lcom/baidu/scenery/process/AndroidProcess;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/scenery/process/AndroidProcess;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field public final pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/scenery/process/AndroidProcess$1;

    invoke-direct {v0}, Lcom/baidu/scenery/process/AndroidProcess$1;-><init>()V

    sput-object v0, Lcom/baidu/scenery/process/AndroidProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/scenery/process/AndroidProcess;->pid:I

    invoke-static {p1}, Lcom/baidu/scenery/process/AndroidProcess;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/scenery/process/AndroidProcess;->name:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/scenery/process/AndroidProcess;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/scenery/process/AndroidProcess;->pid:I

    return-void
.end method

.method static getProcessName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/scenery/process/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/baidu/scenery/process/Stat;->get(I)Lcom/baidu/scenery/process/Stat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/scenery/process/Stat;->getComm()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public cgroup()Lcom/baidu/scenery/process/Cgroup;
    .locals 1

    iget v0, p0, Lcom/baidu/scenery/process/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/baidu/scenery/process/Cgroup;->get(I)Lcom/baidu/scenery/process/Cgroup;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stat()Lcom/baidu/scenery/process/Stat;
    .locals 1

    iget v0, p0, Lcom/baidu/scenery/process/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/baidu/scenery/process/Stat;->get(I)Lcom/baidu/scenery/process/Stat;

    move-result-object v0

    return-object v0
.end method

.method public status()Lcom/baidu/scenery/process/Status;
    .locals 1

    iget v0, p0, Lcom/baidu/scenery/process/AndroidProcess;->pid:I

    invoke-static {v0}, Lcom/baidu/scenery/process/Status;->get(I)Lcom/baidu/scenery/process/Status;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/scenery/process/AndroidProcess;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/scenery/process/AndroidProcess;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
