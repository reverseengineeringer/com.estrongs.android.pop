.class Lcom/estrongs/android/ui/dialog/ie;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/gg;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ie;->b:Lcom/estrongs/android/ui/dialog/hq;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ie;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
