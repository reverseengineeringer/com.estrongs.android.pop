.class Lcom/estrongs/android/ui/pcs/ak;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/z;

.field private b:I

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/pcs/ak;->b:I

    new-instance v0, Lcom/estrongs/android/ui/pcs/al;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/al;-><init>(Lcom/estrongs/android/ui/pcs/ak;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/ak;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->f(Lcom/estrongs/android/ui/pcs/z;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->c:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/estrongs/android/ui/pcs/ak;->b:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->u(Lcom/estrongs/android/ui/pcs/z;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ak;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    iget v4, p0, Lcom/estrongs/android/ui/pcs/ak;->b:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/estrongs/android/ui/pcs/ak;->b:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0804ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/ui/pcs/ak;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0806b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->v(Lcom/estrongs/android/ui/pcs/z;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0804eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    const v1, 0x7f080184

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/z;->c(Lcom/estrongs/android/ui/pcs/z;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/z;->g(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    const v2, 0x7f0804d3

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/z;->g(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/z;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->d(Lcom/estrongs/android/ui/pcs/z;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->f(Lcom/estrongs/android/ui/pcs/z;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/z;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->q(Lcom/estrongs/android/ui/pcs/z;)V

    :cond_2
    const/16 v0, 0x1e

    iput v0, p0, Lcom/estrongs/android/ui/pcs/ak;->b:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/ak;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->g(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/z;->h(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/z;->s(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->L(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aD()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aD()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->L(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->t(Lcom/estrongs/android/ui/pcs/z;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->t(Lcom/estrongs/android/ui/pcs/z;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    const v2, 0x7f0804ff

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/pcs/z;->b(Lcom/estrongs/android/ui/pcs/z;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/z;->g(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/ak;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/ak;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private b(ILjava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    const v1, 0x7f080184

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/z;->d(Lcom/estrongs/android/ui/pcs/z;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/z;->g(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->l(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/o/b;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->c()V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/pcs/u;->a(I)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/u;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->g(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->L(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/z;->r(Lcom/estrongs/android/ui/pcs/z;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/ad;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/z;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/z;->d:Lcom/estrongs/android/ui/pcs/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/z;->d:Lcom/estrongs/android/ui/pcs/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/f;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->h(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/z;->s(Lcom/estrongs/android/ui/pcs/z;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/ak;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v3, v3, Lcom/estrongs/android/ui/pcs/z;->b:Lcom/estrongs/android/ui/pcs/q;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/z;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/ui/pcs/q;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/ak;->a()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/ak;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/ak;->b(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/ak;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/pcs/ak;->b:I

    return v0
.end method
