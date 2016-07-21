.class Lcom/estrongs/android/ui/adapter/do;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/q;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/dn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/dn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/do;->a:Lcom/estrongs/android/ui/adapter/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->i()Lcom/estrongs/android/ui/pcs/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/ui/pcs/q;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/do;->a:Lcom/estrongs/android/ui/adapter/dn;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/dn;->a(Lcom/estrongs/android/ui/adapter/dn;)V

    return-void
.end method
