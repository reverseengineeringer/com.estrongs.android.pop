.class Lcom/estrongs/android/ui/dialog/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic b:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bj;Landroid/content/DialogInterface$OnDismissListener;Lcom/estrongs/android/pop/esclasses/ESActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bm;->c:Lcom/estrongs/android/ui/dialog/bj;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/bm;->a:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/bm;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->a:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/bm;->b:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    return-void
.end method
