.class Lcom/estrongs/android/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/d/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/d/m;->a:Lcom/estrongs/android/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/d/m;->a:Lcom/estrongs/android/d/i;

    sget v1, Lcom/estrongs/android/d/i;->c:I

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Lcom/estrongs/android/d/i;I)I

    iget-object v0, p0, Lcom/estrongs/android/d/m;->a:Lcom/estrongs/android/d/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/i;->a(Lcom/estrongs/android/d/i;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/d/m;->a:Lcom/estrongs/android/d/i;

    invoke-virtual {v0}, Lcom/estrongs/android/d/i;->dismiss()V

    return-void
.end method
