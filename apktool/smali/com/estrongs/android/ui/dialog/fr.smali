.class Lcom/estrongs/android/ui/dialog/fr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fr;->a:Lcom/estrongs/android/ui/dialog/fq;

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

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/d;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/d;->a(I)Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/d;->b(I)I

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/d;->c(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fr;->a:Lcom/estrongs/android/ui/dialog/fq;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/fq;->mContext:Landroid/content/Context;

    const-class v3, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "nettype"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fr;->a:Lcom/estrongs/android/ui/dialog/fq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fr;->a:Lcom/estrongs/android/ui/dialog/fq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/fq;->dismiss()V

    return-void
.end method
