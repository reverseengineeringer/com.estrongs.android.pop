.class Lcom/estrongs/android/pop/app/diskusage/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/s;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/diskusage/s;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 4

    const/4 v3, 0x5

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    if-ne p3, v3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/s;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->g(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/s;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->g(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/s;->a:Ljava/util/List;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/s;->b:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->g(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
