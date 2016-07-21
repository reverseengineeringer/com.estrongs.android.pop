.class Lcom/estrongs/android/scanner/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/service/FileMonitorService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/service/FileMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/service/e;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "FileMonitor"

    const-string v1, "bind succeffully! onServiceConnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/e;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/scanner/service/FileMonitorService;->a(Lcom/estrongs/android/scanner/service/FileMonitorService;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/e;->a:Lcom/estrongs/android/scanner/service/FileMonitorService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/scanner/service/FileMonitorService;->a(Lcom/estrongs/android/scanner/service/FileMonitorService;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
