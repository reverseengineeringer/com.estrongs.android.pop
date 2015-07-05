.class Lcom/estrongs/android/widget/bh;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/bg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    invoke-static {v0}, Lcom/estrongs/android/widget/bg;->a(Lcom/estrongs/android/widget/bg;)J

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-object v0, v0, Lcom/estrongs/android/widget/bg;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-object v1, v1, Lcom/estrongs/android/widget/bg;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    invoke-static {v0}, Lcom/estrongs/android/widget/bg;->b(Lcom/estrongs/android/widget/bg;)Lcom/estrongs/android/widget/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-object v1, v1, Lcom/estrongs/android/widget/bg;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-object v2, v2, Lcom/estrongs/android/widget/bg;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-wide v4, v3, Lcom/estrongs/android/widget/bg;->h:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/estrongs/android/widget/bk;->a(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    invoke-static {v0}, Lcom/estrongs/android/widget/bg;->b(Lcom/estrongs/android/widget/bg;)Lcom/estrongs/android/widget/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-object v1, v1, Lcom/estrongs/android/widget/bg;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-object v2, v2, Lcom/estrongs/android/widget/bg;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-wide v4, v3, Lcom/estrongs/android/widget/bg;->i:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/estrongs/android/widget/bk;->b(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-wide v0, v0, Lcom/estrongs/android/widget/bg;->i:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-wide v2, v2, Lcom/estrongs/android/widget/bg;->h:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-object v2, v2, Lcom/estrongs/android/widget/bg;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/bh;->a:Lcom/estrongs/android/widget/bg;

    iget-object v3, v3, Lcom/estrongs/android/widget/bg;->f:Ljava/text/NumberFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
