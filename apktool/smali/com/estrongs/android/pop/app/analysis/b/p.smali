.class Lcom/estrongs/android/pop/app/analysis/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/o;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/a/b/f;

.field final synthetic d:Lcom/estrongs/android/pop/app/analysis/b/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/o;ZZLcom/estrongs/android/a/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->a:Z

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->b:Z

    iput-object p4, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->c:Lcom/estrongs/android/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/o;->e()V

    return-void
.end method

.method public a(ZIJJ)V
    .locals 7

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->a:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/b/o;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/analysis/a/i;->c(Lcom/estrongs/android/pop/app/analysis/b/g;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyItemRemoved(I)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/o;->v:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-wide v2, v1, Lcom/estrongs/android/pop/app/analysis/b/o;->u:J

    sub-long/2addr v2, p5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/o;->o:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-wide v2, v1, Lcom/estrongs/android/pop/app/analysis/b/o;->t:J

    sub-long/2addr v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/o;->h()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/analysis/b/o;->a(Z)V

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/analysis/b/o;->a(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget v1, v1, Lcom/estrongs/android/pop/app/analysis/b/o;->s:I

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-wide v2, v1, Lcom/estrongs/android/pop/app/analysis/b/o;->t:J

    cmp-long v1, v2, p3

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-wide v2, v1, Lcom/estrongs/android/pop/app/analysis/b/o;->u:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p5, v2

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/b/o;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/b/g;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/analysis/a/i;->getItemCount()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v3, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->b(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/analysis/b/o;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/analysis/a/i;->b(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyItemMoved(II)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/analysis/b/o;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyItemChanged(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iput p2, v0, Lcom/estrongs/android/pop/app/analysis/b/o;->s:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iput-wide p3, v0, Lcom/estrongs/android/pop/app/analysis/b/o;->t:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iput-wide p5, v0, Lcom/estrongs/android/pop/app/analysis/b/o;->u:J

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->b:Z

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/b/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->c:Lcom/estrongs/android/a/b/f;

    invoke-virtual {v1}, Lcom/estrongs/android/a/b/f;->h()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/c;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/p;->d:Lcom/estrongs/android/pop/app/analysis/b/o;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/b/o;->r:Lcom/estrongs/android/pop/app/analysis/b/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/b/o;->a(Lcom/estrongs/android/pop/app/analysis/b/g;Z)V

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3
.end method
