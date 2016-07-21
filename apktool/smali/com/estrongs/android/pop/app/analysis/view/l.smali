.class Lcom/estrongs/android/pop/app/analysis/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/view/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v6, 0x1

    const-wide v4, 0x408f400000000000L    # 1000.0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/view/s;

    iput-boolean v6, v0, Lcom/estrongs/android/pop/app/analysis/view/s;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->e(Lcom/estrongs/android/pop/app/analysis/view/i;)Lcom/estrongs/android/pop/app/analysis/view/u;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/u;->notifyItemChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->g(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->h(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->k(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/view/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/view/m;-><init>(Lcom/estrongs/android/pop/app/analysis/view/l;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->k(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->l(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->c(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->d(Lcom/estrongs/android/pop/app/analysis/view/i;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->h(Lcom/estrongs/android/pop/app/analysis/view/i;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->b(Lcom/estrongs/android/pop/app/analysis/view/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/l;->a:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->k(Lcom/estrongs/android/pop/app/analysis/view/i;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
