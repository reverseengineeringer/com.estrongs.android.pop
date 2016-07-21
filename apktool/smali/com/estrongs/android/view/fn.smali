.class Lcom/estrongs/android/view/fn;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/fm;

.field private b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/fm;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/view/fn;->b:I

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

    const v5, 0x7fffffff

    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-boolean v0, v0, Lcom/estrongs/android/view/fm;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->a(Lcom/estrongs/android/view/fm;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->b(Lcom/estrongs/android/view/fm;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->b(Lcom/estrongs/android/view/fm;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v1, v1, Lcom/estrongs/android/view/fm;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v1, v1, Lcom/estrongs/android/view/fm;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->a(Lcom/estrongs/android/view/fm;)I

    move-result v0

    if-le v0, v5, :cond_3

    iput v4, p0, Lcom/estrongs/android/view/fn;->b:I

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->a(Lcom/estrongs/android/view/fm;)I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/view/fn;->b:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->a(Lcom/estrongs/android/view/fm;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->d(Lcom/estrongs/android/view/fm;)I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/view/fn;->b:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v1, v0, Lcom/estrongs/android/view/fm;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-boolean v0, v0, Lcom/estrongs/android/view/fm;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->d(Lcom/estrongs/android/view/fm;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v3, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v3}, Lcom/estrongs/android/view/fm;->d(Lcom/estrongs/android/view/fm;)I

    move-result v3

    int-to-long v4, v3

    iget-object v3, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v3}, Lcom/estrongs/android/view/fm;->a(Lcom/estrongs/android/view/fm;)I

    move-result v3

    int-to-long v6, v3

    invoke-static {v2, v4, v5, v6, v7}, Lcom/estrongs/android/view/fm;->a(Lcom/estrongs/android/view/fm;JJ)D

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

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->d(Lcom/estrongs/android/view/fm;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->e(Lcom/estrongs/android/view/fm;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->e(Lcom/estrongs/android/view/fm;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-boolean v0, v0, Lcom/estrongs/android/view/fm;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->f(Lcom/estrongs/android/view/fm;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v1, v1, Lcom/estrongs/android/view/fm;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->f(Lcom/estrongs/android/view/fm;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->g(Lcom/estrongs/android/view/fm;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->h(Lcom/estrongs/android/view/fm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0, v3}, Lcom/estrongs/android/view/fm;->a(Lcom/estrongs/android/view/fm;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->h(Lcom/estrongs/android/view/fm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-boolean v0, v0, Lcom/estrongs/android/view/fm;->a:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->i(Lcom/estrongs/android/view/fm;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->b(Lcom/estrongs/android/view/fm;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->b(Lcom/estrongs/android/view/fm;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v1, v1, Lcom/estrongs/android/view/fm;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v1, v1, Lcom/estrongs/android/view/fm;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->i(Lcom/estrongs/android/view/fm;)I

    move-result v0

    if-le v0, v5, :cond_b

    iput v4, p0, Lcom/estrongs/android/view/fn;->b:I

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->i(Lcom/estrongs/android/view/fm;)I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/view/fn;->b:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->i(Lcom/estrongs/android/view/fm;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_8
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v1}, Lcom/estrongs/android/view/fm;->j(Lcom/estrongs/android/view/fm;)I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/view/fn;->b:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v1, v0, Lcom/estrongs/android/view/fm;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-boolean v0, v0, Lcom/estrongs/android/view/fm;->a:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->j(Lcom/estrongs/android/view/fm;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v2, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v2}, Lcom/estrongs/android/view/fm;->j(Lcom/estrongs/android/view/fm;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v4}, Lcom/estrongs/android/view/fm;->i(Lcom/estrongs/android/view/fm;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/estrongs/android/view/fm;->a(Lcom/estrongs/android/view/fm;JJ)D

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

    iget-object v1, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v1, v1, Lcom/estrongs/android/view/fm;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->j(Lcom/estrongs/android/view/fm;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_9
    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    invoke-static {v0}, Lcom/estrongs/android/view/fm;->c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/fn;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/fn;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/fn;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/fn;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fn;->a:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/view/fn;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
