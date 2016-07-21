.class Lcom/estrongs/android/scanner/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/y;

.field private b:Lcom/estrongs/android/scanner/c/g;

.field private c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/y;Lcom/estrongs/android/scanner/c/g;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/aa;->a:Lcom/estrongs/android/scanner/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/scanner/aa;->b:Lcom/estrongs/android/scanner/c/g;

    iput-object p3, p0, Lcom/estrongs/android/scanner/aa;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/aa;->b:Lcom/estrongs/android/scanner/c/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/estrongs/android/scanner/c/g;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/aa;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
