.class Lcom/estrongs/android/ui/e/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/dm;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/at;->a:Lcom/estrongs/android/ui/e/as;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/as;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->F(Ljava/lang/String;)V

    return-void
.end method
