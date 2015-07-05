.class Lcom/estrongs/android/ui/dialog/hq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Landroid/widget/CheckBox;

.field final synthetic e:Landroid/widget/CheckBox;

.field final synthetic f:Landroid/widget/CheckBox;

.field final synthetic g:Landroid/widget/CheckBox;

.field final synthetic h:Landroid/widget/CheckBox;

.field final synthetic i:Landroid/widget/CheckBox;

.field final synthetic j:Landroid/widget/CheckBox;

.field final synthetic k:Landroid/widget/CheckBox;

.field final synthetic l:Landroid/widget/CheckBox;

.field final synthetic m:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hq;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/hq;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/estrongs/android/ui/dialog/hq;->d:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/estrongs/android/ui/dialog/hq;->e:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/estrongs/android/ui/dialog/hq;->f:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/estrongs/android/ui/dialog/hq;->g:Landroid/widget/CheckBox;

    iput-object p9, p0, Lcom/estrongs/android/ui/dialog/hq;->h:Landroid/widget/CheckBox;

    iput-object p10, p0, Lcom/estrongs/android/ui/dialog/hq;->i:Landroid/widget/CheckBox;

    iput-object p11, p0, Lcom/estrongs/android/ui/dialog/hq;->j:Landroid/widget/CheckBox;

    iput-object p12, p0, Lcom/estrongs/android/ui/dialog/hq;->k:Landroid/widget/CheckBox;

    iput-object p13, p0, Lcom/estrongs/android/ui/dialog/hq;->l:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_6
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_7
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_8
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_9
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_a
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    :goto_b
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->d(Lcom/estrongs/android/ui/dialog/hn;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/local/q;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hn;->ar()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01b6

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hn;->d(Lcom/estrongs/android/ui/dialog/hn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/q;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v1, Lcom/estrongs/fs/impl/local/q;->c:I

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v1, Lcom/estrongs/fs/impl/local/q;->b:I

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/l;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/android/ui/dialog/hn;Lcom/estrongs/fs/impl/local/q;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/dialog/hn;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->e(Lcom/estrongs/android/ui/dialog/hn;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->g:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->g:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_7

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_8

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit16 v1, v1, -0x201

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_9

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_a

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->h:Lcom/estrongs/fs/impl/local/q;

    iget v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    and-int/lit16 v1, v1, -0x801

    iput v1, v0, Lcom/estrongs/fs/impl/local/q;->a:I

    goto/16 :goto_b
.end method
