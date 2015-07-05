.class Lcom/estrongs/android/ui/dialog/ea;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/du;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/du;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ea;->a:Lcom/estrongs/android/ui/dialog/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ea;->a:Lcom/estrongs/android/ui/dialog/du;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/du;->a(Lcom/estrongs/android/ui/dialog/du;)Lcom/estrongs/android/ui/dialog/eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/eb;->b()V

    return-void
.end method
