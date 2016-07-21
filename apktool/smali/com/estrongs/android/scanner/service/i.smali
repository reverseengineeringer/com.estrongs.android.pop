.class Lcom/estrongs/android/scanner/service/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/service/FileScannerService;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/service/FileScannerService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/service/i;->a:Lcom/estrongs/android/scanner/service/FileScannerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "FileScannerService"

    const-string v1, "scanner service starting"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/scanner/x;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aput-object v0, v4, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/l;->b()V

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a;->b()V

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/l;->c()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/service/i;->a:Lcom/estrongs/android/scanner/service/FileScannerService;

    invoke-static {v0}, Lcom/estrongs/android/scanner/service/FileScannerService;->a(Lcom/estrongs/android/scanner/service/FileScannerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/estrongs/android/scanner/af;

    iget-object v1, p0, Lcom/estrongs/android/scanner/service/i;->a:Lcom/estrongs/android/scanner/service/FileScannerService;

    invoke-static {v1}, Lcom/estrongs/android/scanner/service/FileScannerService;->b(Lcom/estrongs/android/scanner/service/FileScannerService;)Lcom/estrongs/android/scanner/al;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/scanner/af;-><init>(Lcom/estrongs/android/scanner/al;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/scanner/af;->a([Ljava/lang/String;)V

    return-void
.end method
