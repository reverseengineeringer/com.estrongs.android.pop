.class Lcom/estrongs/android/util/ad;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/ad;->a:Lcom/estrongs/android/util/aa;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/ad;->a:Lcom/estrongs/android/util/aa;

    invoke-static {v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/aa;)V

    return-void
.end method
