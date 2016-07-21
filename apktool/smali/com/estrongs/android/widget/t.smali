.class Lcom/estrongs/android/widget/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/r;

    iget-object v0, v0, Lcom/estrongs/android/widget/r;->b:Lcom/estrongs/android/widget/q;

    iget-object v0, v0, Lcom/estrongs/android/widget/q;->b:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    const-string v1, "storage://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
