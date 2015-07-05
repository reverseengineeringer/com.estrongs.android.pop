.class Lcom/estrongs/fs/b/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const v11, 0x7f0b0039

    const v10, 0x7f0b000c

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->A()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/cg;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->A()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->A()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cg;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0b00e3

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(I)V

    const v0, 0x7f0a001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v3}, Lcom/estrongs/fs/b/ba;->a(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/fs/b/bl;

    move-result-object v3

    iget v3, v3, Lcom/estrongs/fs/b/bl;->c:I

    if-ne v3, v8, :cond_1

    iget-object v3, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v3}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b00e4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v5}, Lcom/estrongs/fs/b/ba;->c(Lcom/estrongs/fs/b/ba;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v5}, Lcom/estrongs/fs/b/ba;->a(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/fs/b/bl;

    move-result-object v5

    iget-wide v6, v5, Lcom/estrongs/fs/b/bl;->e:J

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f0a0149

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v4}, Lcom/estrongs/fs/b/ba;->a(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/fs/b/bl;

    move-result-object v4

    iget-object v4, v4, Lcom/estrongs/fs/b/bl;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00e5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v2}, Lcom/estrongs/fs/b/ba;->d(Lcom/estrongs/fs/b/ba;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v0}, Lcom/estrongs/fs/b/ba;->a(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/fs/b/bl;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/fs/b/bl;->c:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v0}, Lcom/estrongs/fs/b/ba;->a(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/fs/b/bl;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/fs/b/bl;->b:I

    if-eq v0, v9, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v0}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/fs/b/bc;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/bc;-><init>(Lcom/estrongs/fs/b/bb;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cg;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v0}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0b0028

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/fs/b/bd;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/bd;-><init>(Lcom/estrongs/fs/b/bb;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cg;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v0}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/fs/b/be;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/be;-><init>(Lcom/estrongs/fs/b/bb;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cg;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_2
    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v3}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b00e5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v5}, Lcom/estrongs/fs/b/ba;->c(Lcom/estrongs/fs/b/ba;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v5}, Lcom/estrongs/fs/b/ba;->a(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/fs/b/bl;

    move-result-object v5

    iget v5, v5, Lcom/estrongs/fs/b/bl;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v5}, Lcom/estrongs/fs/b/ba;->a(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/fs/b/bl;

    move-result-object v5

    iget-wide v6, v5, Lcom/estrongs/fs/b/bl;->e:J

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v0}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/fs/b/bf;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/bf;-><init>(Lcom/estrongs/fs/b/bb;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cg;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/fs/b/bb;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v0}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/estrongs/fs/b/bg;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/bg;-><init>(Lcom/estrongs/fs/b/bb;)V

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/dialog/cg;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_2
.end method
