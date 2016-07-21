.class Lcom/estrongs/android/ui/adapter/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/al;

.field final synthetic b:Lcom/estrongs/android/ui/adapter/dr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/dr;Lcom/estrongs/android/ui/theme/al;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dw;->b:Lcom/estrongs/android/ui/adapter/dr;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/dw;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dw;->a:Lcom/estrongs/android/ui/theme/al;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dw;->b:Lcom/estrongs/android/ui/adapter/dr;

    invoke-static {v1}, Lcom/estrongs/android/ui/adapter/dr;->a(Lcom/estrongs/android/ui/adapter/dr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/dw;->b:Lcom/estrongs/android/ui/adapter/dr;

    invoke-static {v2}, Lcom/estrongs/android/ui/adapter/dr;->b(Lcom/estrongs/android/ui/adapter/dr;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method
