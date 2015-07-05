.class Lcom/baidu/mobstat/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ao;

.field private b:J

.field private c:J

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ao;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;I)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/av;->g:I

    iput-wide p2, p0, Lcom/baidu/mobstat/av;->b:J

    iput-wide p4, p0, Lcom/baidu/mobstat/av;->c:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/av;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/av;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/av;->f:Ljava/lang/ref/WeakReference;

    iput p9, p0, Lcom/baidu/mobstat/av;->g:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-wide v0, p0, Lcom/baidu/mobstat/av;->c:J

    iget-wide v2, p0, Lcom/baidu/mobstat/av;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ao;

    invoke-virtual {v2}, Lcom/baidu/mobstat/ao;->b()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/mobstat/av;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/av;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/av;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/baidu/mobstat/av;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ao;

    invoke-static {v2}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;)Lcom/baidu/mobstat/am;

    move-result-object v2

    iget-wide v4, p0, Lcom/baidu/mobstat/av;->b:J

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mobstat/am;->b(J)V

    iget-object v2, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ao;

    invoke-static {v2}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;)Lcom/baidu/mobstat/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/am;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sdkstat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new session:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/mobstat/DataCore;->putSession(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget v4, p0, Lcom/baidu/mobstat/av;->g:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ao;

    invoke-static {v1}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;)Lcom/baidu/mobstat/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/am;->b()V

    iget-object v1, p0, Lcom/baidu/mobstat/av;->a:Lcom/baidu/mobstat/ao;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;Landroid/content/Context;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/ag;->a()Lcom/baidu/mobstat/ag;

    move-result-object v1

    const-string v2, "onresume"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mobstat/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/baidu/mobstat/av;->g:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/baidu/mobstat/av;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-static {v3}, Lcom/baidu/mobstat/ao;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->getInstance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method
