.class Lcom/estrongs/android/widget/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/co;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/au;->a:Lcom/estrongs/android/widget/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/widget/au;->a:Lcom/estrongs/android/widget/ap;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ap;->b()Lcom/estrongs/android/view/eb;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/eb;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/au;->a:Lcom/estrongs/android/widget/ap;

    iget-object v1, v1, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/eb;->c(Lcom/estrongs/fs/h;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/au;->a:Lcom/estrongs/android/widget/ap;

    iget-object v1, v1, Lcom/estrongs/android/widget/ap;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/widget/au;->a:Lcom/estrongs/android/widget/ap;

    iget-object v2, v2, Lcom/estrongs/android/widget/ap;->j:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/estrongs/android/widget/au;->a:Lcom/estrongs/android/widget/ap;

    iget-object v0, v0, Lcom/estrongs/android/widget/ap;->j:Landroid/widget/TextView;

    const-string v1, "MIDDLE"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/widget/au;->a:Lcom/estrongs/android/widget/ap;

    iget-object v1, v1, Lcom/estrongs/android/widget/ap;->j:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/au;->a:Lcom/estrongs/android/widget/ap;

    iget-object v0, v0, Lcom/estrongs/android/widget/ap;->j:Landroid/widget/TextView;

    const-string v1, "END"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method
