.class Lcom/estrongs/android/pop/app/compress/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->b(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/ai;->a(Lcom/estrongs/android/pop/app/compress/ai;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->c(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->c(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->d(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->d(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b020e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->f(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->e(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/compress/ai;->b(Lcom/estrongs/android/pop/app/compress/ai;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->g(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/a/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->d(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/an;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/an;-><init>(Lcom/estrongs/android/pop/app/compress/am;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/estrongs/android/a/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/a/h;Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->d(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/e;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/ai;->d(Lcom/estrongs/android/pop/app/compress/ai;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ai;->c(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/ai;->i(Lcom/estrongs/android/pop/app/compress/ai;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/e;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/e;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/am;->a:Lcom/estrongs/android/pop/app/compress/ai;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/ai;->h(Lcom/estrongs/android/pop/app/compress/ai;)V

    goto/16 :goto_0
.end method
