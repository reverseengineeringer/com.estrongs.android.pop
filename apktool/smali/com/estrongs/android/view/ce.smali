.class Lcom/estrongs/android/view/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v9, 0x7f0b050c

    const v8, 0x7f0b04c7

    const v7, 0x7f0b0369

    const v6, 0x7f0b023d

    iget-object v0, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    iget-boolean v0, v0, Lcom/estrongs/android/view/cd;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/cd;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v0, v0, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/e;

    iget-object v1, v0, Lcom/estrongs/android/widget/e;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/cd;->c(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/view/cd;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->au(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/estrongs/android/view/cf;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/view/cf;-><init>(Lcom/estrongs/android/view/ce;Lcom/estrongs/fs/h;)V

    new-instance v2, Lcom/estrongs/android/view/ch;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/ch;-><init>(Lcom/estrongs/android/view/ce;Lcom/estrongs/fs/h;)V

    new-instance v3, Lcom/estrongs/android/view/cj;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/view/cj;-><init>(Lcom/estrongs/android/view/ce;Lcom/estrongs/fs/h;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v4, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    iget-object v4, v4, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/android/ui/dialog/ct;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/estrongs/android/ui/dialog/ct;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b04ca

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/dialog/ct;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    :goto_2
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PCS_Home_Page_UV"

    const-string v2, "PCS_Home_Page_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v3, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    iget-object v3, v3, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    iget-object v0, v0, Lcom/estrongs/android/view/cd;->h:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    iget-object v0, v0, Lcom/estrongs/android/view/cd;->h:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_0
.end method
