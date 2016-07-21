.class Lcom/estrongs/android/ui/dialog/hx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hx;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hx;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->i(Lcom/estrongs/android/ui/dialog/hq;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hx;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->j(Lcom/estrongs/android/ui/dialog/hq;)V

    :cond_1
    return-void
.end method
