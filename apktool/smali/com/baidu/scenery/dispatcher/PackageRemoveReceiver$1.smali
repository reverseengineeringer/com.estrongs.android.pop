.class final Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->getDbAppName(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "scenery_extra_uninstall_appname"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scenery_extra_uninstall_pkgname"

    iget-object v2, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scenery_uninstall"

    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->onSceneryOccur(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
