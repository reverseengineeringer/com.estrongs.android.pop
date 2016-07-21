.class Lcom/estrongs/android/view/ek;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/view/ef;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ef;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ek;->b:Lcom/estrongs/android/view/ef;

    iput-object p2, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/c;

    iget-object v1, p0, Lcom/estrongs/android/view/ek;->b:Lcom/estrongs/android/view/ef;

    iget-object v1, v1, Lcom/estrongs/android/view/ef;->c:Lcom/estrongs/android/view/ee;

    iget-object v1, v1, Lcom/estrongs/android/view/ee;->a:Lcom/estrongs/android/view/eb;

    iget-object v1, v1, Lcom/estrongs/android/view/eb;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/c;->a()V

    new-instance v1, Lcom/estrongs/android/view/el;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/el;-><init>(Lcom/estrongs/android/view/ek;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
