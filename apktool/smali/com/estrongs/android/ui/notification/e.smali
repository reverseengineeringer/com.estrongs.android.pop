.class final Lcom/estrongs/android/ui/notification/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    instance-of v0, p2, Lcom/estrongs/android/ui/notification/c;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/estrongs/android/ui/notification/c;

    invoke-virtual {p2}, Lcom/estrongs/android/ui/notification/c;->a()Lcom/estrongs/android/ui/notification/ESTaskService;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/d;->a(Lcom/estrongs/android/ui/notification/ESTaskService;)Lcom/estrongs/android/ui/notification/ESTaskService;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/ui/notification/d;->a(Lcom/estrongs/android/ui/notification/ESTaskService;)Lcom/estrongs/android/ui/notification/ESTaskService;

    return-void
.end method
