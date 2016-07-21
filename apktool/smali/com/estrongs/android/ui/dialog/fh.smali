.class Lcom/estrongs/android/ui/dialog/fh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ff;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ff;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const v6, 0x7f08049d

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->a(Lcom/estrongs/android/ui/dialog/ff;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ff;->a(Lcom/estrongs/android/ui/dialog/ff;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08070c

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080430

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/estrongs/android/ui/e/ib;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080414

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ff;->c(Lcom/estrongs/android/ui/dialog/ff;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/pop/a;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v4}, Lcom/estrongs/android/ui/dialog/ff;->d(Lcom/estrongs/android/ui/dialog/ff;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/estrongs/android/pop/a;->n:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3, v0}, Lcom/estrongs/android/ui/dialog/ff;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/pop/a;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v4}, Lcom/estrongs/android/ui/dialog/ff;->d(Lcom/estrongs/android/ui/dialog/ff;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/estrongs/android/pop/a;->o:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3, v0}, Lcom/estrongs/android/ui/dialog/ff;->a(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ff;->b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fh;->a:Lcom/estrongs/android/ui/dialog/ff;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/ff;->c(Lcom/estrongs/android/ui/dialog/ff;)Z

    move-result v3

    invoke-static {v2, v0, v3, v1}, Lcom/estrongs/android/ui/dialog/ff;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0
.end method
