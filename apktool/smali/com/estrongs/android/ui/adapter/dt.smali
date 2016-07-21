.class Lcom/estrongs/android/ui/adapter/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/adapter/dr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/dr;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dt;->b:Lcom/estrongs/android/ui/adapter/dr;

    iput p2, p0, Lcom/estrongs/android/ui/adapter/dt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dt;->b:Lcom/estrongs/android/ui/adapter/dr;

    iget v1, p0, Lcom/estrongs/android/ui/adapter/dt;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/dr;->a(I)V

    return-void
.end method
