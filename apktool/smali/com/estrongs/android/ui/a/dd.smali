.class Lcom/estrongs/android/ui/a/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/a/db;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/db;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/dd;->b:Lcom/estrongs/android/ui/a/db;

    iput p2, p0, Lcom/estrongs/android/ui/a/dd;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/dd;->b:Lcom/estrongs/android/ui/a/db;

    iget v1, p0, Lcom/estrongs/android/ui/a/dd;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/db;->a(I)V

    return-void
.end method
