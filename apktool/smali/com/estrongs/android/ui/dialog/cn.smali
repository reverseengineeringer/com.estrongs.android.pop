.class Lcom/estrongs/android/ui/dialog/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/cg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cn;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cn;->a:Lcom/estrongs/android/ui/dialog/cg;

    # getter for: Lcom/estrongs/android/ui/dialog/cg;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/cg;->access$000(Lcom/estrongs/android/ui/dialog/cg;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cn;->a:Lcom/estrongs/android/ui/dialog/cg;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
