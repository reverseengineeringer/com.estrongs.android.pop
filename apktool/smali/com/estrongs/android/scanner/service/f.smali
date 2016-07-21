.class Lcom/estrongs/android/scanner/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/service/FileMonitorService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/service/FileMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/service/f;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/f;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->b(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const v1, 0x27297

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/scanner/service/f;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v1}, Lcom/estrongs/android/scanner/service/FileMonitorService;->b(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/f;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v1}, Lcom/estrongs/android/scanner/service/FileMonitorService;->c(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/f;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v1}, Lcom/estrongs/android/scanner/service/FileMonitorService;->c(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "FileMonitor"

    const-string v1, "send flush event due to TimeOut threshold!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
