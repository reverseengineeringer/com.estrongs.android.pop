.class Lcom/estrongs/android/widget/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic b:Lcom/estrongs/android/widget/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/f;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/f;

    iput-object p2, p0, Lcom/estrongs/android/widget/j;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->i_()V

    iget-object v0, p0, Lcom/estrongs/android/widget/j;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
