.class Lcom/estrongs/android/ftp/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ftp/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    check-cast p2, Lcom/estrongs/android/ftp/g;

    invoke-virtual {p2}, Lcom/estrongs/android/ftp/g;->a()Lcom/estrongs/android/ftp/ESFtpService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/k;->a(Lcom/estrongs/android/ftp/k;Lcom/estrongs/android/ftp/ESFtpService;)Lcom/estrongs/android/ftp/ESFtpService;

    iget-object v0, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    invoke-static {v0}, Lcom/estrongs/android/ftp/k;->a(Lcom/estrongs/android/ftp/k;)Lcom/estrongs/android/ftp/ESFtpService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/ftp/k;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    invoke-static {v0}, Lcom/estrongs/android/ftp/k;->b(Lcom/estrongs/android/ftp/k;)Lcom/estrongs/android/ftp/m;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    invoke-static {v0}, Lcom/estrongs/android/ftp/k;->b(Lcom/estrongs/android/ftp/k;)Lcom/estrongs/android/ftp/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/ftp/m;->a()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/k;->a(Lcom/estrongs/android/ftp/k;Lcom/estrongs/android/ftp/m;)Lcom/estrongs/android/ftp/m;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ftp/k;->a(Lcom/estrongs/android/ftp/k;Lcom/estrongs/android/ftp/ESFtpService;)Lcom/estrongs/android/ftp/ESFtpService;

    iget-object v0, p0, Lcom/estrongs/android/ftp/l;->a:Lcom/estrongs/android/ftp/k;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/ftp/k;->b:Z

    return-void
.end method
