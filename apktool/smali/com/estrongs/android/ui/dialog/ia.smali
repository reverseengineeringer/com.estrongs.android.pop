.class Lcom/estrongs/android/ui/dialog/ia;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/bd;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/android/ui/view/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ia;->b:Lcom/estrongs/android/ui/dialog/hq;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ia;->a:Lcom/estrongs/android/ui/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ia;->a:Lcom/estrongs/android/ui/view/bd;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/bd;->e()V

    return-void
.end method
