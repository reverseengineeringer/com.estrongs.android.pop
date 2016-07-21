.class Lcom/estrongs/android/view/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/view/ef;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ef;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ei;->b:Lcom/estrongs/android/view/ef;

    iput-object p2, p0, Lcom/estrongs/android/view/ei;->a:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/r;

    iget-object v1, p0, Lcom/estrongs/android/view/ei;->b:Lcom/estrongs/android/view/ef;

    iget-object v1, v1, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v1, v1, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v1, v1, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/r;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/view/ej;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ej;-><init>(Lcom/estrongs/android/view/ei;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/r;->a(Lcom/estrongs/android/ui/pcs/q;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/r;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
