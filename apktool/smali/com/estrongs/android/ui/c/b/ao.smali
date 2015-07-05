.class Lcom/estrongs/android/ui/c/b/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/ao;->a:Lcom/estrongs/android/ui/c/b/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/ao;->a:Lcom/estrongs/android/ui/c/b/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/b/u;->a(Lcom/estrongs/android/ui/c/b/u;)V

    const-string v0, "Home_Send"

    const-string v1, "Home_Send"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Home_Send_UV"

    const-string v1, "Home_Send_UV"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
