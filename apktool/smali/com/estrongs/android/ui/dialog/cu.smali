.class Lcom/estrongs/android/ui/dialog/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cu;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cu;->a:Lcom/estrongs/android/ui/dialog/ci;

    # getter for: Lcom/estrongs/android/ui/dialog/ci;->mButtonListener1:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ci;->access$100(Lcom/estrongs/android/ui/dialog/ci;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cu;->a:Lcom/estrongs/android/ui/dialog/ci;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
