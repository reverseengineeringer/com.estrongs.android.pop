.class Lcom/estrongs/android/view/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ci;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/view/ck;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ck;Lcom/estrongs/android/view/ci;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cl;->c:Lcom/estrongs/android/view/ck;

    iput-object p2, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ci;

    iput p3, p0, Lcom/estrongs/android/view/cl;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cl;->c:Lcom/estrongs/android/view/ck;

    iget-object v0, v0, Lcom/estrongs/android/view/ck;->e:Lcom/estrongs/android/view/cg;

    iget-object v1, p0, Lcom/estrongs/android/view/cl;->a:Lcom/estrongs/android/view/ci;

    iget v2, p0, Lcom/estrongs/android/view/cl;->b:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/estrongs/android/view/cg;->a(Lcom/estrongs/android/view/ci;Landroid/view/View;I)V

    return-void
.end method
