.class Lcom/estrongs/android/ui/dialog/gb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gb;->a:Lcom/estrongs/android/ui/dialog/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gb;->a:Lcom/estrongs/android/ui/dialog/fz;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fz;->b:Lcom/estrongs/android/ui/dialog/fv;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fv;->a:Lcom/estrongs/android/ui/dialog/gc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gb;->a:Lcom/estrongs/android/ui/dialog/fz;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fz;->b:Lcom/estrongs/android/ui/dialog/fv;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fv;->a:Lcom/estrongs/android/ui/dialog/gc;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gb;->a:Lcom/estrongs/android/ui/dialog/fz;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/fz;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/estrongs/android/ui/dialog/gc;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gb;->a:Lcom/estrongs/android/ui/dialog/fz;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fz;->b:Lcom/estrongs/android/ui/dialog/fv;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fv;->j(Lcom/estrongs/android/ui/dialog/fv;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
