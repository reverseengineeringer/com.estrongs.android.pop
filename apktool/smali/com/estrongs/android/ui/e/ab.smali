.class Lcom/estrongs/android/ui/e/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/df;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ab;->a:Lcom/estrongs/android/ui/e/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ab;->a:Lcom/estrongs/android/ui/e/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/aa;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->g(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/dd;->dismiss()V

    new-instance v0, Lcom/estrongs/android/ui/e/ac;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/e/ac;-><init>(Lcom/estrongs/android/ui/e/ab;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/ac;->start()V

    return-void
.end method
