.class Lcom/estrongs/android/scanner/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/estrongs/android/scanner/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/l;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/p;->d:Lcom/estrongs/android/scanner/l;

    iput p2, p0, Lcom/estrongs/android/scanner/p;->a:I

    iput-object p3, p0, Lcom/estrongs/android/scanner/p;->b:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/scanner/p;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/scanner/p;->d:Lcom/estrongs/android/scanner/l;

    iget v1, p0, Lcom/estrongs/android/scanner/p;->a:I

    iget-object v2, p0, Lcom/estrongs/android/scanner/p;->b:Ljava/lang/String;

    iget v3, p0, Lcom/estrongs/android/scanner/p;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/l;ILjava/lang/String;I)V

    return-void
.end method
