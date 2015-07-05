.class Lcom/estrongs/android/widget/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ao;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ao;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ao;->b()Lcom/estrongs/android/view/cd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/cd;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ao;

    iget-object v1, v1, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/cd;->a(Lcom/estrongs/fs/h;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ao;

    iget-object v1, v1, Lcom/estrongs/android/widget/ao;->n:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ao;

    iget-object v2, v2, Lcom/estrongs/android/widget/ao;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ao;

    iget-object v0, v0, Lcom/estrongs/android/widget/ao;->n:Landroid/widget/TextView;

    const-string v1, "MIDDLE"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ao;

    iget-object v1, v1, Lcom/estrongs/android/widget/ao;->n:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/at;->a:Lcom/estrongs/android/widget/ao;

    iget-object v0, v0, Lcom/estrongs/android/widget/ao;->n:Landroid/widget/TextView;

    const-string v1, "END"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method
