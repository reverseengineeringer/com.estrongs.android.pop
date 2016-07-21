.class public Lcom/baidu/scenery/process/AndroidAppProcess;
.super Lcom/baidu/scenery/process/AndroidProcess;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/scenery/process/AndroidAppProcess;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYS_SUPPORTS_SCHEDGROUPS:Z


# instance fields
.field public final foreground:Z

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/cpuctl/tasks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/scenery/process/AndroidAppProcess;->SYS_SUPPORTS_SCHEDGROUPS:Z

    new-instance v0, Lcom/baidu/scenery/process/AndroidAppProcess$1;

    invoke-direct {v0}, Lcom/baidu/scenery/process/AndroidAppProcess$1;-><init>()V

    sput-object v0, Lcom/baidu/scenery/process/AndroidAppProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/baidu/scenery/process/AndroidProcess;-><init>(I)V

    sget-boolean v0, Lcom/baidu/scenery/process/AndroidAppProcess;->SYS_SUPPORTS_SCHEDGROUPS:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/baidu/scenery/process/AndroidAppProcess;->cgroup()Lcom/baidu/scenery/process/Cgroup;

    move-result-object v0

    const-string v3, "cpuacct"

    invoke-virtual {v0, v3}, Lcom/baidu/scenery/process/Cgroup;->getGroup(Ljava/lang/String;)Lcom/baidu/scenery/process/ControlGroup;

    move-result-object v4

    const-string v3, "cpu"

    invoke-virtual {v0, v3}, Lcom/baidu/scenery/process/Cgroup;->getGroup(Ljava/lang/String;)Lcom/baidu/scenery/process/ControlGroup;

    move-result-object v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/baidu/scenery/process/ControlGroup;->group:Ljava/lang/String;

    const-string v3, "pid_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/baidu/scenery/process/AndroidAppProcess$NotAndroidAppProcessException;

    invoke-direct {v0, p1}, Lcom/baidu/scenery/process/AndroidAppProcess$NotAndroidAppProcessException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, v5, Lcom/baidu/scenery/process/ControlGroup;->group:Ljava/lang/String;

    const-string v3, "bg_non_interactive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    :try_start_0
    iget-object v3, v4, Lcom/baidu/scenery/process/ControlGroup;->group:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v6, "uid_"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    const-string v6, "name=%s, pid=%d, uid=%d, foreground=%b, cpuacct=%s, cpu=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->name:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v10

    invoke-virtual {v4}, Lcom/baidu/scenery/process/ControlGroup;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v11

    const/4 v1, 0x5

    invoke-virtual {v5}, Lcom/baidu/scenery/process/ControlGroup;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Lcom/baidu/scenery/process/ProcessManager;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iput-boolean v0, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->foreground:Z

    iput v3, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->uid:I

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lcom/baidu/scenery/process/AndroidAppProcess;->status()Lcom/baidu/scenery/process/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/scenery/process/Status;->getUid()I

    move-result v3

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    iget-object v0, v5, Lcom/baidu/scenery/process/ControlGroup;->group:Ljava/lang/String;

    const-string v3, "apps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lcom/baidu/scenery/process/AndroidAppProcess$NotAndroidAppProcessException;

    invoke-direct {v0, p1}, Lcom/baidu/scenery/process/AndroidAppProcess$NotAndroidAppProcessException;-><init>(I)V

    throw v0

    :cond_5
    iget-object v0, v5, Lcom/baidu/scenery/process/ControlGroup;->group:Ljava/lang/String;

    const-string v3, "bg_non_interactive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    :try_start_1
    iget-object v3, v4, Lcom/baidu/scenery/process/ControlGroup;->group:Ljava/lang/String;

    iget-object v6, v4, Lcom/baidu/scenery/process/ControlGroup;->group:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_4
    const-string v6, "name=%s, pid=%d, uid=%d foreground=%b, cpuacct=%s, cpu=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->name:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v10

    invoke-virtual {v4}, Lcom/baidu/scenery/process/ControlGroup;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v11

    const/4 v1, 0x5

    invoke-virtual {v5}, Lcom/baidu/scenery/process/ControlGroup;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Lcom/baidu/scenery/process/ProcessManager;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {p0}, Lcom/baidu/scenery/process/AndroidAppProcess;->status()Lcom/baidu/scenery/process/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/scenery/process/Status;->getUid()I

    move-result v3

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->name:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data"

    invoke-virtual {p0}, Lcom/baidu/scenery/process/AndroidAppProcess;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    new-instance v0, Lcom/baidu/scenery/process/AndroidAppProcess$NotAndroidAppProcessException;

    invoke-direct {v0, p1}, Lcom/baidu/scenery/process/AndroidAppProcess$NotAndroidAppProcessException;-><init>(I)V

    throw v0

    :cond_9
    invoke-virtual {p0}, Lcom/baidu/scenery/process/AndroidAppProcess;->stat()Lcom/baidu/scenery/process/Stat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/scenery/process/AndroidAppProcess;->status()Lcom/baidu/scenery/process/Status;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/scenery/process/Stat;->policy()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v3}, Lcom/baidu/scenery/process/Status;->getUid()I

    move-result v3

    const-string v4, "name=%s, pid=%d, uid=%d foreground=%b"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-static {v4, v5}, Lcom/baidu/scenery/process/ProcessManager;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto :goto_5
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/scenery/process/AndroidProcess;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->foreground:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->uid:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->name:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/scenery/process/AndroidProcess;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->foreground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/baidu/scenery/process/AndroidAppProcess;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
