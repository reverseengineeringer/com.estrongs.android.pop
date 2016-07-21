.class Lcom/estrongs/android/scanner/service/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/al;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/service/FileScannerService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/service/FileScannerService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/service/h;->a:Lcom/estrongs/android/scanner/service/FileScannerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/h;->a:Lcom/estrongs/android/scanner/service/FileScannerService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileMonitorService;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "FileScannerService"

    const-string v1, "onStoreFinish"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/h;->a:Lcom/estrongs/android/scanner/service/FileScannerService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileScannerService;->a(Lcom/estrongs/android/scanner/service/FileScannerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a;->c()V

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/l;->d()V

    return-void
.end method
