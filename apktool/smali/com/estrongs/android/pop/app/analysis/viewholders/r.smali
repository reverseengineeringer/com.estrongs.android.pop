.class public Lcom/estrongs/android/pop/app/analysis/viewholders/r;
.super Lcom/estrongs/android/pop/app/analysis/viewholders/t;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/pop/app/analysis/viewholders/t;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 7

    const-wide/16 v2, 0x0

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    check-cast v0, Lcom/estrongs/android/a/b/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->itemView:Landroid/view/View;

    const v4, 0x7f020075

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->h:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->h:Landroid/widget/CheckBox;

    const v4, 0x7f0201e6

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/f;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/f;->length()J

    move-result-wide v4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->i:Ljava/lang/String;

    const-string v6, "internal_storage"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/f;->b()J

    move-result-wide v4

    :cond_0
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->f:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->g:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/r;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move-wide v2, v4

    goto :goto_0
.end method
