.class Lcom/estrongs/android/ui/dialog/hx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/au;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;Lcom/estrongs/android/ui/view/au;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hx;->b:Lcom/estrongs/android/ui/dialog/hn;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hx;->a:Lcom/estrongs/android/ui/view/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hx;->a:Lcom/estrongs/android/ui/view/au;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/au;->e()V

    return-void
.end method
