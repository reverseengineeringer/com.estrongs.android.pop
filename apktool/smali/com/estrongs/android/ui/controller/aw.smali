.class Lcom/estrongs/android/ui/controller/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/ui/controller/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aj;Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/aw;->b:Lcom/estrongs/android/ui/controller/aj;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/aw;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aw;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aw;->a:Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aw;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/aw;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->aq()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/aw;->b:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v2}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aw;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Home_Search_Wan"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/aw;->b:Lcom/estrongs/android/ui/controller/aj;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Home_Search_Wan_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
