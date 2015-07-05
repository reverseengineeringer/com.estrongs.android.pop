.class Lcom/estrongs/android/ui/dialog/hb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/dialog/gz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gz;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hb;->b:Lcom/estrongs/android/ui/dialog/gz;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/hb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hb;->b:Lcom/estrongs/android/ui/dialog/gz;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gz;->b:Lcom/estrongs/android/ui/dialog/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hb;->b:Lcom/estrongs/android/ui/dialog/gz;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gz;->b:Lcom/estrongs/android/ui/dialog/gy;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/hb;->a:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/dialog/gy;->a(I)V

    :cond_0
    return-void
.end method
