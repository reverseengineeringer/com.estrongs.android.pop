.class Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    # invokes: Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->scanPackages()V
    invoke-static {v0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->access$000(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V

    return-void
.end method
