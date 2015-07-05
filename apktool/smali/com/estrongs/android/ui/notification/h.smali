.class Lcom/estrongs/android/ui/notification/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/notification/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/notification/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/h;->a:Lcom/estrongs/android/ui/notification/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/estrongs/android/ui/notification/e;->b()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/notification/e;->b()Ljava/util/Map;

    move-result-object v0

    const-string v2, "task_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
