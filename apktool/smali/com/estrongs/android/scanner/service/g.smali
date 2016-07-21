.class Lcom/estrongs/android/scanner/service/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/service/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/service/FileMonitorService;

.field private b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/service/FileMonitorService;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/scanner/service/g;->b:I

    return-void
.end method

.method private a(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(ILjava/lang/String;)Z
    .locals 5

    const/16 v4, 0x200

    const/16 v3, 0x40

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/estrongs/android/scanner/service/g;->b:I

    if-nez v0, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/estrongs/android/scanner/service/g;->b:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/estrongs/android/scanner/service/g;->b:I

    if-ne v0, v2, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    iput v2, p0, Lcom/estrongs/android/scanner/service/g;->b:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/scanner/service/g;->b:I

    if-ne v0, v1, :cond_5

    const/16 v0, 0x80

    if-eq p1, v0, :cond_4

    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->a(Lcom/estrongs/android/scanner/service/FileMonitorService;)Lcom/estrongs/android/scanner/service/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/scanner/service/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eq p1, v3, :cond_6

    if-ne p1, v4, :cond_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->a(Lcom/estrongs/android/scanner/service/FileMonitorService;)Lcom/estrongs/android/scanner/service/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/scanner/service/a;->b(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->c(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p3, p0, Lcom/estrongs/android/scanner/service/g;->b:I

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/scanner/service/g;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVENT_ID"

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/service/g;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PATH"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PATH_TYPE"

    iget v2, p0, Lcom/estrongs/android/scanner/service/g;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v1, 0x27245

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->c(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->b(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->b(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const v1, 0x27297

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v1}, Lcom/estrongs/android/scanner/service/FileMonitorService;->c(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->b(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "FileMonitor"

    const-string v1, "send flush event due to arrive the number threshold!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->b(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->e(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v1}, Lcom/estrongs/android/scanner/service/FileMonitorService;->d(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->e(Lcom/estrongs/android/scanner/service/FileMonitorService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/g;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-static {v1}, Lcom/estrongs/android/scanner/service/FileMonitorService;->d(Lcom/estrongs/android/scanner/service/FileMonitorService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
