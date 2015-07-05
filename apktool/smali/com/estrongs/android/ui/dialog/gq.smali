.class Lcom/estrongs/android/ui/dialog/gq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/a/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gq;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gq;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gq;->a:Lcom/estrongs/android/ui/dialog/gk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/gk;->a:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gq;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0, p1}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gq;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->h(Lcom/estrongs/android/ui/dialog/gk;)V

    return-void
.end method
