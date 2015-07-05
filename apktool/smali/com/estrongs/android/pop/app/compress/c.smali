.class Lcom/estrongs/android/pop/app/compress/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->b(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v7, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b020e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->b(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0569

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->e(Lcom/estrongs/android/pop/app/compress/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/k;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/app/compress/k;-><init>(Lcom/estrongs/android/pop/app/compress/a;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;Lcom/estrongs/android/pop/app/compress/k;)Lcom/estrongs/android/pop/app/compress/k;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->f(Lcom/estrongs/android/pop/app/compress/a;)Lcom/estrongs/android/pop/app/compress/k;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->a:Landroid/view/View;

    const v2, 0x7f0a0057

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/estrongs/android/pop/app/compress/k;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->f(Lcom/estrongs/android/pop/app/compress/a;)Lcom/estrongs/android/pop/app/compress/k;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/k;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->f(Lcom/estrongs/android/pop/app/compress/a;)Lcom/estrongs/android/pop/app/compress/k;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;)I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/pop/app/compress/k;->a:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0, v7}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;Z)Z

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/a;->b()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->g(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a;->g(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    new-instance v0, Lcom/estrongs/android/pop/app/compress/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a;->d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/a;->h(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/compress/a;->i(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/a;->c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/compress/a;->j(Lcom/estrongs/android/pop/app/compress/a;)Ljava/util/List;

    move-result-object v6

    iget-object v9, p0, Lcom/estrongs/android/pop/app/compress/c;->b:Lcom/estrongs/android/pop/app/compress/a;

    invoke-static {v9}, Lcom/estrongs/android/pop/app/compress/a;->a(Lcom/estrongs/android/pop/app/compress/a;)I

    move-result v9

    invoke-direct/range {v0 .. v10}, Lcom/estrongs/android/pop/app/compress/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILandroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->b()V

    goto :goto_3

    :cond_6
    move-object v5, v10

    goto :goto_4
.end method
