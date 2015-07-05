.class Lcom/estrongs/android/view/ch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/view/ce;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ce;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ch;->b:Lcom/estrongs/android/view/ce;

    iput-object p2, p0, Lcom/estrongs/android/view/ch;->a:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/o;

    iget-object v1, p0, Lcom/estrongs/android/view/ch;->b:Lcom/estrongs/android/view/ce;

    iget-object v1, v1, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/cd;

    iget-object v1, v1, Lcom/estrongs/android/view/cd;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/view/ci;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ci;-><init>(Lcom/estrongs/android/view/ch;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/o;->a(Lcom/estrongs/android/ui/pcs/n;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/o;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
