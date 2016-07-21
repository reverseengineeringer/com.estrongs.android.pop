.class Lcom/estrongs/android/ui/e/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/dh;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/p;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/p;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/q;->a:Lcom/estrongs/android/ui/e/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/q;->a:Lcom/estrongs/android/ui/e/p;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/p;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->f(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/df;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/df;->dismiss()V

    new-instance v0, Lcom/estrongs/android/ui/e/r;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/e/r;-><init>(Lcom/estrongs/android/ui/e/q;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/r;->start()V

    return-void
.end method
