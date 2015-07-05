.class Lcom/estrongs/android/util/z;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/y;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/y;

    invoke-static {v0}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/y;)V

    return-void
.end method
