.class Lcom/estrongs/android/widget/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/dv;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/widget/u;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "storage://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->e(Lcom/estrongs/android/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->f(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->g(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->g(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->h(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->h(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/fv;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/f;->a(Lcom/estrongs/android/widget/f;Lcom/estrongs/fs/h;)Lcom/estrongs/fs/h;

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->i(Lcom/estrongs/android/widget/f;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v1, v0}, Lcom/estrongs/android/widget/f;->a(Lcom/estrongs/android/widget/f;Lcom/estrongs/fs/h;)Lcom/estrongs/fs/h;

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->i(Lcom/estrongs/android/widget/f;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->i(Lcom/estrongs/android/widget/f;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v1}, Lcom/estrongs/android/widget/f;->j(Lcom/estrongs/android/widget/f;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v2}, Lcom/estrongs/android/widget/f;->i(Lcom/estrongs/android/widget/f;)Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->k(Lcom/estrongs/android/widget/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->ab()Lcom/estrongs/fs/util/a/a;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v1}, Lcom/estrongs/android/widget/f;->l(Lcom/estrongs/android/widget/f;)Lcom/estrongs/fs/util/a/a;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v1}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->z(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/fv;->b(Lcom/estrongs/fs/util/a/a;)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0, p1}, Lcom/estrongs/android/widget/f;->a(Lcom/estrongs/android/widget/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->e(Lcom/estrongs/android/widget/f;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->f(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->g(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->g(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->h(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->h(Lcom/estrongs/android/widget/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/view/fv;->a(Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/u;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v1}, Lcom/estrongs/android/widget/f;->l(Lcom/estrongs/android/widget/f;)Lcom/estrongs/fs/util/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->b(Lcom/estrongs/fs/util/a/a;)V

    goto :goto_1
.end method
