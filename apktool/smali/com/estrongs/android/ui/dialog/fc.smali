.class Lcom/estrongs/android/ui/dialog/fc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/gg;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fc;->a:Lcom/estrongs/android/ui/dialog/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->a:Lcom/estrongs/android/ui/dialog/fb;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fb;->a(Lcom/estrongs/android/ui/dialog/fb;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fc;->a:Lcom/estrongs/android/ui/dialog/fb;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fb;->a(Lcom/estrongs/android/ui/dialog/fb;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    :cond_0
    return-void
.end method
