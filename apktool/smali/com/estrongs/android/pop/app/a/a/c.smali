.class Lcom/estrongs/android/pop/app/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/a/k;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/a/c;->a:Lcom/estrongs/android/pop/app/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/app/a/a;->b(Lcom/estrongs/android/pop/app/a/k;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/c;->a:Lcom/estrongs/android/pop/app/a/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a/a;->a(Lcom/estrongs/android/pop/app/a/a/a;)Lcom/estrongs/android/pop/app/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/c;->a:Lcom/estrongs/android/pop/app/a/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a/a;->a(Lcom/estrongs/android/pop/app/a/a/a;)Lcom/estrongs/android/pop/app/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/a/a/d;->a()V

    :cond_0
    return-void
.end method
