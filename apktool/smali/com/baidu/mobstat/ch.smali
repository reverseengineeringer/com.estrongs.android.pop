.class Lcom/baidu/mobstat/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ca;

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
.method public constructor <init>(Lcom/baidu/mobstat/ca;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;I)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/mobstat/ch;->a:Lcom/baidu/mobstat/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/ch;->g:I

    iput-wide p2, p0, Lcom/baidu/mobstat/ch;->b:J

    iput-wide p4, p0, Lcom/baidu/mobstat/ch;->c:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ch;->f:Ljava/lang/ref/WeakReference;

    iput p9, p0, Lcom/baidu/mobstat/ch;->g:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->c:J

    iget-wide v2, p0, Lcom/baidu/mobstat/ch;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mobstat/ch;->a:Lcom/baidu/mobstat/ca;

    invoke-virtual {v2}, Lcom/baidu/mobstat/ca;->b()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/mobstat/ch;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/ch;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lcom/baidu/mobstat/ch;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/baidu/mobstat/ch;->a:Lcom/baidu/mobstat/ca;

    invoke-static {v2}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;)Lcom/baidu/mobstat/by;

    move-result-object v2

    iget-wide v4, p0, Lcom/baidu/mobstat/ch;->b:J

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mobstat/by;->b(J)V

    iget-object v2, p0, Lcom/baidu/mobstat/ch;->a:Lcom/baidu/mobstat/ca;

    invoke-static {v2}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;)Lcom/baidu/mobstat/by;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/by;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/mobstat/DataCore;->putSession(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget v4, p0, Lcom/baidu/mobstat/ch;->g:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Lcom/baidu/mobstat/ca;

    invoke-static {v1}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;)Lcom/baidu/mobstat/by;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/by;->b()V

    iget-object v1, p0, Lcom/baidu/mobstat/ch;->a:Lcom/baidu/mobstat/ca;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;Landroid/content/Context;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/bs;->a()Lcom/baidu/mobstat/bs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/bs;->b(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/baidu/mobstat/ch;->g:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/baidu/mobstat/ch;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-static {v3}, Lcom/baidu/mobstat/ca;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method
