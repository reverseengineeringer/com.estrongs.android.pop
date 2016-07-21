.class Lcom/estrongs/fs/b/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/fs/b/bq;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/bq;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/bs;->b:Lcom/estrongs/fs/b/bq;

    iput-object p2, p0, Lcom/estrongs/fs/b/bs;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/fs/b/bs;->b:Lcom/estrongs/fs/b/bq;

    iget-object v0, v0, Lcom/estrongs/fs/b/bq;->a:Lcom/estrongs/fs/b/bo;

    iget-object v1, p0, Lcom/estrongs/fs/b/bs;->a:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/bo;->b(Lcom/estrongs/a/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Long;

    new-instance v0, Lcom/estrongs/android/ui/dialog/jf;

    iget-object v1, p0, Lcom/estrongs/fs/b/bs;->b:Lcom/estrongs/fs/b/bq;

    iget-object v1, v1, Lcom/estrongs/fs/b/bq;->a:Lcom/estrongs/fs/b/bo;

    iget-object v1, v1, Lcom/estrongs/fs/b/bo;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/jf;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jf;->show()V

    return-void
.end method
