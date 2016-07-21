.class Lcom/estrongs/android/ui/adapter/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/al;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/adapter/dr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/dr;Lcom/estrongs/android/ui/theme/al;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/ds;->c:Lcom/estrongs/android/ui/adapter/dr;

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/ds;->a:Lcom/estrongs/android/ui/theme/al;

    iput p3, p0, Lcom/estrongs/android/ui/adapter/ds;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ds;->a:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, v0, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ds;->c:Lcom/estrongs/android/ui/adapter/dr;

    const/4 v1, 0x2

    iget v2, p0, Lcom/estrongs/android/ui/adapter/ds;->b:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/adapter/dr;->a(Lcom/estrongs/android/ui/adapter/dr;II)V

    goto :goto_0
.end method
