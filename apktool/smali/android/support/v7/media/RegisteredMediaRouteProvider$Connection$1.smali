.class Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;->this$1:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    # invokes: Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->failPendingCallbacks()V
    invoke-static {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->access$200(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    return-void
.end method
