.class Lcom/estrongs/android/ui/dialog/gw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/dialog/gv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gv;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gw;->b:Lcom/estrongs/android/ui/dialog/gv;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/gw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gw;->b:Lcom/estrongs/android/ui/dialog/gv;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gv;->a(Lcom/estrongs/android/ui/dialog/gv;)Lcom/estrongs/android/ui/dialog/ha;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gw;->b:Lcom/estrongs/android/ui/dialog/gv;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gv;->a(Lcom/estrongs/android/ui/dialog/gv;)Lcom/estrongs/android/ui/dialog/ha;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/dialog/gw;->a:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/dialog/ha;->a(I)V

    :cond_0
    return-void
.end method
