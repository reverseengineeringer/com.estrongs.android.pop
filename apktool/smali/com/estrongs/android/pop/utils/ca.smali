.class Lcom/estrongs/android/pop/utils/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/pop/utils/ck;

.field final synthetic d:Lcom/estrongs/android/pop/app/d/a;

.field final synthetic e:Z

.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Z

.field final synthetic h:Landroid/support/v7/widget/AppCompatCheckBox;

.field final synthetic i:Z

.field final synthetic j:Lcom/estrongs/a/a/p;

.field final synthetic k:Lcom/estrongs/android/pop/utils/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bv;ZLjava/util/List;Lcom/estrongs/android/pop/utils/ck;Lcom/estrongs/android/pop/app/d/a;ZLandroid/app/Activity;ZLandroid/support/v7/widget/AppCompatCheckBox;ZLcom/estrongs/a/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ca;->k:Lcom/estrongs/android/pop/utils/bv;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/utils/ca;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/ca;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/ca;->c:Lcom/estrongs/android/pop/utils/ck;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/ca;->d:Lcom/estrongs/android/pop/app/d/a;

    iput-boolean p6, p0, Lcom/estrongs/android/pop/utils/ca;->e:Z

    iput-object p7, p0, Lcom/estrongs/android/pop/utils/ca;->f:Landroid/app/Activity;

    iput-boolean p8, p0, Lcom/estrongs/android/pop/utils/ca;->g:Z

    iput-object p9, p0, Lcom/estrongs/android/pop/utils/ca;->h:Landroid/support/v7/widget/AppCompatCheckBox;

    iput-boolean p10, p0, Lcom/estrongs/android/pop/utils/ca;->i:Z

    iput-object p11, p0, Lcom/estrongs/android/pop/utils/ca;->j:Lcom/estrongs/a/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/ca;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->b:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->c:Lcom/estrongs/android/pop/utils/ck;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->c:Lcom/estrongs/android/pop/utils/ck;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ca;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/utils/ck;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->d:Lcom/estrongs/android/pop/app/d/a;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->d:Lcom/estrongs/android/pop/app/d/a;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/ca;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->k:Lcom/estrongs/android/pop/utils/bv;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ca;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ca;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/utils/bv;Landroid/app/Activity;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->k:Lcom/estrongs/android/pop/utils/bv;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bv;->a:Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->k:Lcom/estrongs/android/pop/utils/bv;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bv;->a:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->k:Lcom/estrongs/android/pop/utils/bv;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bv;->a:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->requestStop()V

    :cond_4
    iget-boolean v4, p0, Lcom/estrongs/android/pop/utils/ca;->g:Z

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->h:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->h:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v4

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ca;->k:Lcom/estrongs/android/pop/utils/bv;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ca;->d:Lcom/estrongs/android/pop/app/d/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ca;->b:Ljava/util/List;

    iget-boolean v3, p0, Lcom/estrongs/android/pop/utils/ca;->i:Z

    iget-object v5, p0, Lcom/estrongs/android/pop/utils/ca;->j:Lcom/estrongs/a/a/p;

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/utils/bv;Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;)V

    goto :goto_0
.end method
