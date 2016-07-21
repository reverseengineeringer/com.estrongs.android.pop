.class Lcom/estrongs/android/ui/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/g/d;->a:Lcom/estrongs/android/ui/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/g/d;->a:Lcom/estrongs/android/ui/g/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/g/c;->a(Lcom/estrongs/android/ui/g/c;Z)Z

    return-void
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/g/d;->a:Lcom/estrongs/android/ui/g/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/g/c;->a(Lcom/estrongs/android/ui/g/c;Z)Z

    return-void
.end method

.method public downloadProgress(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public downloadStarted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
