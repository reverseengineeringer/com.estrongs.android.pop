.class Lcom/estrongs/android/d/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/d/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/d/r;->a:Lcom/estrongs/android/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/d/r;->a:Lcom/estrongs/android/d/q;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/android/d/q;->c:I

    iget-object v0, p0, Lcom/estrongs/android/d/r;->a:Lcom/estrongs/android/d/q;

    invoke-virtual {v0}, Lcom/estrongs/android/d/q;->dismiss()V

    return-void
.end method
