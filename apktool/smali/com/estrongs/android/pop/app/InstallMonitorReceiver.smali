.class public Lcom/estrongs/android/pop/app/InstallMonitorReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a:Ljava/util/HashSet;

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.supercell.clashofclans"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.umonistudio.tile"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.mobilityware.solitaire"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.supercell.hayday"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.selfawaregames.acecasino"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "air.com.bitrhymes.bingo"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "net.froemling.bombsquad"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.midasplayer.apps.bubblewitchsaga2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.king.candycrushsaga"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.igg.castleclash"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.leftover.CoinDozer"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.gotv.crackle.handset"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.glu.deerhunt2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.midasplayer.apps.diamonddiggersaga"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.explorationbase.ExplorationLite"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.king.farmheroessaga"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.bigduckgames.flow"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.gamecircus.PrizeClaw"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.melimots.WordSearch"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.socialquantum.acityint"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.calculator2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.google.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.google.android.apps.docs"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.google.earth"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.quickoffice.android"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->b:[Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a:Ljava/util/HashSet;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a:Ljava/util/HashSet;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/p;->a()Lcom/estrongs/android/pop/app/analysis/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-nez v0, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "camera"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "youtube"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.lenovo.scg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "qqlive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "youku"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "letv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.storm."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.tudou."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "pplive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v2, v1

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    move v2, v0

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/app/unlock/s;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v2, Lcom/estrongs/android/pop/z;->an:Z

    if-nez v2, :cond_3

    const-string v2, "install_stat"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/estrongs/android/pop/app/InstallMonitorActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "packageName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    sget-boolean v2, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v2, :cond_4

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->g(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/utils/n;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ad/DuSpeedBoosterController;->a(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/InstallMonitorReceiver;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/c/b/a;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "InstallMonitorReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisplayDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/estrongs/android/pop/app/UninstallMonitorActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
