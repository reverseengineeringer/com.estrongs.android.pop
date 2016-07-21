.class Lcom/estrongs/android/scanner/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/scanner/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/o;->b:Lcom/estrongs/android/scanner/l;

    iput-object p2, p0, Lcom/estrongs/android/scanner/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/scanner/a/a;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/estrongs/android/scanner/o;->b:Lcom/estrongs/android/scanner/l;

    invoke-static {v2}, Lcom/estrongs/android/scanner/l;->g(Lcom/estrongs/android/scanner/l;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/scanner/a/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/o;->b:Lcom/estrongs/android/scanner/l;

    invoke-static {v1, v0}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/l;Lcom/estrongs/android/scanner/a/a;)V

    new-instance v0, Lcom/estrongs/android/scanner/a/a;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/estrongs/android/scanner/o;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/scanner/a/a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/o;->b:Lcom/estrongs/android/scanner/l;

    invoke-static {v1, v0}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/l;Lcom/estrongs/android/scanner/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/o;->b:Lcom/estrongs/android/scanner/l;

    iget-object v1, p0, Lcom/estrongs/android/scanner/o;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/scanner/l;->b(Lcom/estrongs/android/scanner/l;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
