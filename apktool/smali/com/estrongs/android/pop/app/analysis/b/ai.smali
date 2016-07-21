.class Lcom/estrongs/android/pop/app/analysis/b/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/o;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/a/b/f;

.field final synthetic d:Lcom/estrongs/android/pop/app/analysis/b/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/ag;ZZLcom/estrongs/android/a/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->a:Z

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->b:Z

    iput-object p4, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->c:Lcom/estrongs/android/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->e()V

    return-void
.end method

.method public a(ZIJJ)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->a:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->b(Lcom/estrongs/android/pop/app/analysis/b/ag;)Lcom/estrongs/android/pop/app/analysis/a/ac;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(Lcom/estrongs/android/pop/app/analysis/b/ag;)Lcom/estrongs/android/pop/app/analysis/a/u;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/analysis/a/ac;->a(Lcom/estrongs/android/pop/app/analysis/a/u;)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->v:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-wide v4, v3, Lcom/estrongs/android/pop/app/analysis/b/ag;->u:J

    sub-long/2addr v4, p5

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->o:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-wide v4, v3, Lcom/estrongs/android/pop/app/analysis/b/ag;->t:J

    sub-long/2addr v4, p3

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->h()V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->b(Lcom/estrongs/android/pop/app/analysis/b/ag;)Lcom/estrongs/android/pop/app/analysis/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/ac;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(Z)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/analysis/b/ag;->b(Lcom/estrongs/android/pop/app/analysis/b/ag;)Lcom/estrongs/android/pop/app/analysis/a/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/analysis/a/ac;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget v0, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->s:I

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->t:J

    cmp-long v0, v4, p3

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->u:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_9

    cmp-long v0, p5, v6

    if-nez v0, :cond_9

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iput p2, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->s:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iput-wide p3, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->t:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iput-wide p5, v0, Lcom/estrongs/android/pop/app/analysis/b/ag;->u:J

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->c:Lcom/estrongs/android/a/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/util/bk;->l()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/analysis/b/ag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/utils/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/analysis/b/ag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "open app permisssions page success !"

    invoke-static {v0}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_4
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/ag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->c:Lcom/estrongs/android/a/b/f;

    invoke-virtual {v3}, Lcom/estrongs/android/a/b/f;->h()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/utils/c;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/ai;->d:Lcom/estrongs/android/pop/app/analysis/b/ag;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/analysis/b/ag;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/pop/app/analysis/b/ag;->a(Lcom/estrongs/android/pop/app/analysis/b/g;Z)V

    goto/16 :goto_2

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method
