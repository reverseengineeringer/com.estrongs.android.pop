.class public Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;
.super Landroid/support/v4/app/FragmentActivity;


# static fields
.field private static final sFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sType:Ljava/lang/String;


# instance fields
.field private mHomeKeyEventReceiver:Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity$HomeKeyReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->sFragments:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    sget-object v0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->sFragments:Ljava/util/Map;

    const-string v1, "scenery_charge"

    const-class v2, Lcom/baidu/scenery/dispatcher/commondialog/ChargeDialogFragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->sFragments:Ljava/util/Map;

    const-string v1, "scenery_disk_usage"

    const-class v2, Lcom/baidu/scenery/dispatcher/commondialog/DiskUsageDialogFragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->sFragments:Ljava/util/Map;

    const-string v1, "scenery_uninstall"

    const-class v2, Lcom/baidu/scenery/dispatcher/commondialog/UninstallDialogFragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->sFragments:Ljava/util/Map;

    const-string v1, "scenery_take_photo"

    const-class v2, Lcom/baidu/scenery/dispatcher/commondialog/TakePhotoDialogFragment;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->sType:Ljava/lang/String;

    return-object v0
.end method

.method private static createPageFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->sFragments:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public gotoPage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/aj;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/aj;->a()Landroid/support/v4/app/az;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->createPageFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v0, Lcom/baidu/scenery/R$id;->dialog_content:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/az;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/az;

    invoke-virtual {v1}, Landroid/support/v4/app/az;->c()I

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scenery_extra_recommend_package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "scenery_extra_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scenery_take_photo"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "scenery_extra_source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_source_home"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "home"

    invoke-static {v1, v0, v2}, Lcom/baidu/scenery/utils/ReportHelper;->reportShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "extra_source_gallery"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gallery"

    invoke-static {v1, v0, v2}, Lcom/baidu/scenery/utils/ReportHelper;->reportShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/scenery/utils/ReportHelper;->reportShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/scenery/utils/ReportHelper;->reportShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scenery_extra_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "duscenery_sdk_close"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_back"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/baidu/scenery/utils/ReportHelper;->reportEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/baidu/scenery/R$layout;->activity_dialog:I

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scenery_extra_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->sType:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity$HomeKeyReceiver;

    invoke-direct {v1, p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity$HomeKeyReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->mHomeKeyEventReceiver:Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity$HomeKeyReceiver;

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->mHomeKeyEventReceiver:Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity$HomeKeyReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scenery_extra_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->gotoPage(Ljava/lang/String;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->mHomeKeyEventReceiver:Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity$HomeKeyReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->mHomeKeyEventReceiver:Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity$HomeKeyReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->mHomeKeyEventReceiver:Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity$HomeKeyReceiver;

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scenery_extra_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/commondialog/DialogActivity;->gotoPage(Ljava/lang/String;)Z

    return-void
.end method
