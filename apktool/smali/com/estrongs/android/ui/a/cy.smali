.class Lcom/estrongs/android/ui/a/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/cx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cy;->a:Lcom/estrongs/android/ui/a/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->i()Lcom/estrongs/android/ui/pcs/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/ui/pcs/n;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/cy;->a:Lcom/estrongs/android/ui/a/cx;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/cx;->a(Lcom/estrongs/android/ui/a/cx;)V

    return-void
.end method
