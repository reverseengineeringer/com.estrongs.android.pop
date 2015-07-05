.class Lcom/estrongs/android/ui/dialog/w;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/w;->a:Lcom/estrongs/android/ui/dialog/v;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/w;->a:Lcom/estrongs/android/ui/dialog/v;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/v;->a:Lcom/estrongs/android/ui/dialog/t;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/t;->a(Lcom/estrongs/android/ui/dialog/t;)V

    return-void
.end method
