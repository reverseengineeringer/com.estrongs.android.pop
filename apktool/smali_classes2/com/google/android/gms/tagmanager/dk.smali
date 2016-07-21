.class Lcom/google/android/gms/tagmanager/dk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/di;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/di;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dk;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->e()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dk;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/di;->a()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dk;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->b(Lcom/google/android/gms/tagmanager/di;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dk;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->c(Lcom/google/android/gms/tagmanager/di;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dk;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->d(Lcom/google/android/gms/tagmanager/di;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/dk;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/di;->d(Lcom/google/android/gms/tagmanager/di;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/dk;->a:Lcom/google/android/gms/tagmanager/di;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/di;->b(Lcom/google/android/gms/tagmanager/di;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return v4
.end method
