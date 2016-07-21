.class public Lcom/baidu/scenery/utils/ProcessUtils;
.super Ljava/lang/Object;


# static fields
.field private static final BUILD_VERSION_LOLLIP:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackgroudProcessCount(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/baidu/scenery/utils/ProcessUtils;->getBackgroudProcessCountForLollip(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/baidu/scenery/utils/ProcessUtils;->getBackgroudProcessCountForGingerbread(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private static getBackgroudProcessCountForGingerbread(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBackgroudProcessCountForLollip(Landroid/content/Context;)I
    .locals 1

    invoke-static {}, Lcom/baidu/scenery/process/ProcessManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBackgroudProcessPids(Landroid/content/Context;)[I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/baidu/scenery/utils/ProcessUtils;->getBackgroudProcessPidsForLollip(Landroid/content/Context;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/baidu/scenery/utils/ProcessUtils;->getBackgroudProcessPidsForGingerbread(Landroid/content/Context;)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static getBackgroudProcessPidsForGingerbread(Landroid/content/Context;)[I
    .locals 5

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    new-array v4, v1, [I

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private static getBackgroudProcessPidsForLollip(Landroid/content/Context;)[I
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/scenery/process/ProcessManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    new-array v4, v1, [I

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/scenery/process/AndroidAppProcess;

    iget v0, v0, Lcom/baidu/scenery/process/AndroidAppProcess;->pid:I

    aput v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public static getBackgroundMemoryCount(Landroid/content/Context;)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/baidu/scenery/utils/ProcessUtils;->getBackgroudProcessPids(Landroid/content/Context;)[I

    move-result-object v2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return v2
.end method
