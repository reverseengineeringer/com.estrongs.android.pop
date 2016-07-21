.class Lcom/estrongs/android/view/bq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bo;

.field private b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bo;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/bq;->b:I

    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v5, 0x64

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->a(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->a(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->c(Lcom/estrongs/android/view/bo;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iput v5, p0, Lcom/estrongs/android/view/bq;->b:I

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->a(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->c(Lcom/estrongs/android/view/bo;)J

    move-result-wide v2

    iget v1, p0, Lcom/estrongs/android/view/bq;->b:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->a(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->d(Lcom/estrongs/android/view/bo;)J

    move-result-wide v2

    iget v1, p0, Lcom/estrongs/android/view/bq;->b:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->e(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    iget-object v3, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v3}, Lcom/estrongs/android/view/bo;->d(Lcom/estrongs/android/view/bo;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v3}, Lcom/estrongs/android/view/bo;->c(Lcom/estrongs/android/view/bo;)J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/estrongs/android/view/bo;->a(Lcom/estrongs/android/view/bo;JJ)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    iget-object v1, v1, Lcom/estrongs/android/view/bo;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->f(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    iget-object v2, v2, Lcom/estrongs/android/view/bo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    iget-object v1, v1, Lcom/estrongs/android/view/bo;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->h(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->h(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    iget-object v2, v2, Lcom/estrongs/android/view/bo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->k(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v2}, Lcom/estrongs/android/view/bo;->j(Lcom/estrongs/android/view/bo;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->f(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v2}, Lcom/estrongs/android/view/bo;->g(Lcom/estrongs/android/view/bo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->i(Lcom/estrongs/android/view/bo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v2}, Lcom/estrongs/android/view/bo;->i(Lcom/estrongs/android/view/bo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->h(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->h(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->h(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v2}, Lcom/estrongs/android/view/bo;->i(Lcom/estrongs/android/view/bo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v2}, Lcom/estrongs/android/view/bo;->j(Lcom/estrongs/android/view/bo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->l(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->m(Lcom/estrongs/android/view/bo;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iput v5, p0, Lcom/estrongs/android/view/bq;->b:I

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->m(Lcom/estrongs/android/view/bo;)J

    move-result-wide v2

    iget v1, p0, Lcom/estrongs/android/view/bq;->b:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->n(Lcom/estrongs/android/view/bo;)J

    move-result-wide v2

    iget v1, p0, Lcom/estrongs/android/view/bq;->b:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    iget-object v2, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v2}, Lcom/estrongs/android/view/bo;->n(Lcom/estrongs/android/view/bo;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v4}, Lcom/estrongs/android/view/bo;->m(Lcom/estrongs/android/view/bo;)J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/estrongs/android/view/bo;->a(Lcom/estrongs/android/view/bo;JJ)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->o(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->a(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->f(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->k(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->p(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->q(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->e(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->o(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->r(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->s(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->r(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->t(Lcom/estrongs/android/view/bo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->t(Lcom/estrongs/android/view/bo;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->u(Lcom/estrongs/android/view/bo;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->u(Lcom/estrongs/android/view/bo;)I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->o(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->o(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080698

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->u(Lcom/estrongs/android/view/bo;)I

    move-result v0

    if-le v0, v2, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->e(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->e(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080698

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->u(Lcom/estrongs/android/view/bo;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->e(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->s(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v1}, Lcom/estrongs/android/view/bo;->u(Lcom/estrongs/android/view/bo;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/bq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_a

    move-object v1, v0

    :goto_4
    invoke-static {v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->v(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->v(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bq;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->v(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e02a6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method
