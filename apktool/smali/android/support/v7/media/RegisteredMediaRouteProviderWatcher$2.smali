.class Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    # invokes: Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->scanPackages()V
    invoke-static {v0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->access$000(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V

    return-void
.end method
