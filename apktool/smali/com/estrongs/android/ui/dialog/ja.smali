.class Lcom/estrongs/android/ui/dialog/ja;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/iy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/iy;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/iy;->a(Lcom/estrongs/android/ui/dialog/iy;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    new-instance v2, Lcom/estrongs/android/ui/dialog/jb;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/jb;-><init>(Lcom/estrongs/android/ui/dialog/ja;Z)V

    const/4 v0, -0x1

    sget-boolean v1, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v1, :cond_1

    const/4 v0, -0x2

    move v1, v0

    :goto_0
    new-instance v3, Lcom/estrongs/android/widget/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/iy;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/iy;->a(Lcom/estrongs/android/ui/dialog/iy;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2, v1}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V

    invoke-virtual {v3, v5}, Lcom/estrongs/android/widget/f;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/estrongs/android/widget/f;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/iy;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/iy;->a(Lcom/estrongs/android/ui/dialog/iy;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080221

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v2, v0}, Lcom/estrongs/android/widget/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/widget/f;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/iy;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/iy;->a(Lcom/estrongs/android/ui/dialog/iy;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08048f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/iy;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/iy;->a(Lcom/estrongs/android/ui/dialog/iy;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/jc;

    invoke-direct {v1, p0, v3}, Lcom/estrongs/android/ui/dialog/jc;-><init>(Lcom/estrongs/android/ui/dialog/ja;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v3, v0, v1}, Lcom/estrongs/android/widget/f;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Lcom/estrongs/android/widget/f;->j()V

    :cond_0
    return v5

    :cond_1
    move v1, v0

    goto :goto_0
.end method
