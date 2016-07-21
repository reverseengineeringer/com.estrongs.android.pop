.class Lcom/estrongs/android/view/ez;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/view/ey;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ey;Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ez;->b:Lcom/estrongs/android/view/ey;

    iput-object p2, p0, Lcom/estrongs/android/view/ez;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ez;->b:Lcom/estrongs/android/view/ey;

    iget-object v0, v0, Lcom/estrongs/android/view/ey;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v0}, Lcom/estrongs/android/view/eu;->a(Lcom/estrongs/android/view/eu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, p0, Lcom/estrongs/android/view/ez;->a:Lcom/estrongs/android/view/cr;

    iget-object v3, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->d:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/ez;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->d()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/view/ez;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3}, Lcom/estrongs/android/view/cr;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ez;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->aE()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/estrongs/android/view/fj;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ez;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->aE()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
