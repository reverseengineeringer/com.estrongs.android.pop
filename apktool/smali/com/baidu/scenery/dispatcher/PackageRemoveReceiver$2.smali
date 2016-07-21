.class final Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/scenery/dispatcher/PackageRemoveReceiver$2;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/scenery/dispatcher/appinfo/AppInfoManager;->onPackageInstalled(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
