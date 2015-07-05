.class Lcom/estrongs/android/view/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/view/ce;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ce;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cf;->b:Lcom/estrongs/android/view/ce;

    iput-object p2, p0, Lcom/estrongs/android/view/cf;->a:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/j;

    iget-object v1, p0, Lcom/estrongs/android/view/cf;->b:Lcom/estrongs/android/view/ce;

    iget-object v1, v1, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    iget-object v1, v1, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/j;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/view/cg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cg;-><init>(Lcom/estrongs/android/view/cf;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/j;->a(Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/j;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
