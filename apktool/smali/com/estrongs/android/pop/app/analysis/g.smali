.class Lcom/estrongs/android/pop/app/analysis/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/g;->b:Lcom/estrongs/android/pop/app/analysis/f;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/g;->b:Lcom/estrongs/android/pop/app/analysis/f;

    invoke-static {}, Lcom/estrongs/android/b/a/f;->a()Lcom/estrongs/android/b/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/g;->b:Lcom/estrongs/android/pop/app/analysis/f;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/pop/app/analysis/f;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/b/a/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/pop/app/analysis/f;Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/g;->b:Lcom/estrongs/android/pop/app/analysis/f;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/pop/app/analysis/f;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/h;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/analysis/h;-><init>(Lcom/estrongs/android/pop/app/analysis/g;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/a/b;->a(Ljava/lang/String;Lcom/estrongs/android/a/j;)V

    return-void
.end method
