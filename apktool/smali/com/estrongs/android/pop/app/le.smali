.class Lcom/estrongs/android/pop/app/le;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/le;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/le;->a:Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1e24c
        :pswitch_0
    .end packed-switch
.end method
