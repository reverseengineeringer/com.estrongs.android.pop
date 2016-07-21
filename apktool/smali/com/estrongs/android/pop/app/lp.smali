.class Lcom/estrongs/android/pop/app/lp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;

.field final synthetic b:Lcom/estrongs/android/pop/app/ShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/lp;->b:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/lp;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/lp;->a:Lcom/estrongs/android/ui/dialog/ci;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/estrongs/android/ui/pcs/r;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/lp;->b:Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/r;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/pop/app/lq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lq;-><init>(Lcom/estrongs/android/pop/app/lp;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/r;->a(Lcom/estrongs/android/ui/pcs/q;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/r;->a(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/lr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/lr;-><init>(Lcom/estrongs/android/pop/app/lp;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
