.class Lcom/estrongs/android/view/fw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/fv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/fv;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fw;->b:Lcom/estrongs/android/view/fv;

    iput p2, p0, Lcom/estrongs/android/view/fw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/fw;->b:Lcom/estrongs/android/view/fv;

    iget v1, p0, Lcom/estrongs/android/view/fw;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->c(I)V

    return-void
.end method
