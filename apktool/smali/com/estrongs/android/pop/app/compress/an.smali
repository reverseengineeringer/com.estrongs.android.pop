.class Lcom/estrongs/android/pop/app/compress/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->b(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/aj;->a(Lcom/estrongs/android/pop/app/compress/aj;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->c(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->c(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->d(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->d(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080419

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->f(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->e(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/compress/aj;->b(Lcom/estrongs/android/pop/app/compress/aj;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->g(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/d/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->d(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/ao;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/ao;-><init>(Lcom/estrongs/android/pop/app/compress/an;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/estrongs/android/d/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/d/h;Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->d(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/d/e;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/aj;->d(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/aj;->c(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/compress/aj;->i(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/d/e;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/d/e;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->h(Lcom/estrongs/android/pop/app/compress/aj;)V

    goto/16 :goto_0
.end method
