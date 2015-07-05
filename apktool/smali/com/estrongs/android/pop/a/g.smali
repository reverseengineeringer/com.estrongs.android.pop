.class Lcom/estrongs/android/pop/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/a/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/a/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/a/g;->b:Lcom/estrongs/android/pop/a/f;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/a/g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/a/g;->b:Lcom/estrongs/android/pop/a/f;

    iget-object v0, v0, Lcom/estrongs/android/pop/a/f;->b:Lcom/estrongs/android/pop/a/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/a/e;->a:Lcom/estrongs/android/pop/a/j;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/a/g;->a:Z

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/a/j;->a(Z)V

    return-void
.end method
