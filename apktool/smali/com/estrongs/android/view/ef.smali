.class Lcom/estrongs/android/view/ef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/ci;

.field final synthetic c:Lcom/estrongs/android/view/ee;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ee;ILcom/estrongs/android/view/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iput p2, p0, Lcom/estrongs/android/view/ef;->a:I

    iput-object p3, p0, Lcom/estrongs/android/view/ef;->b:Lcom/estrongs/android/view/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const v9, 0x7f08066a

    const v8, 0x7f08060b

    const v7, 0x7f0801a1

    const v6, 0x7f08008f

    iget-object v0, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v0, v0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-boolean v0, v0, Lcom/estrongs/android/view/eb;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v0, v0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget v1, p0, Lcom/estrongs/android/view/ef;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v0, v0, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ef;->b:Lcom/estrongs/android/view/ci;

    iget-object v1, v0, Lcom/estrongs/android/view/ci;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v0, v0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget v1, p0, Lcom/estrongs/android/view/ef;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->c(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v0, v0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget v1, p0, Lcom/estrongs/android/view/ef;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/eb;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aE(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/estrongs/android/view/eg;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/view/eg;-><init>(Lcom/estrongs/android/view/ef;Lcom/estrongs/fs/h;)V

    new-instance v2, Lcom/estrongs/android/view/ei;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/ei;-><init>(Lcom/estrongs/android/view/ef;Lcom/estrongs/fs/h;)V

    new-instance v3, Lcom/estrongs/android/view/ek;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/ek;-><init>(Lcom/estrongs/android/view/ef;Lcom/estrongs/fs/h;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v4, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v4, v4, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v4, v4, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/ui/dialog/cv;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Lcom/estrongs/android/ui/dialog/cv;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0806d4

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/dialog/cv;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v3, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v3, v3, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v3, v3, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v0, v0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v0, v0, Lcom/estrongs/android/view/eb;->j:Lcom/estrongs/android/view/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v0, v0, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v0, v0, Lcom/estrongs/android/view/eb;->j:Lcom/estrongs/android/view/co;

    iget-object v1, p0, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v1, v1, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v1, v1, Lcom/estrongs/android/view/eb;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/estrongs/android/view/ef;->b:Lcom/estrongs/android/view/ci;

    iget-object v2, v2, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/estrongs/android/view/ef;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/view/co;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V

    goto/16 :goto_0
.end method
