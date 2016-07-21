.class Lcom/estrongs/android/scanner/d/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/scanner/d/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/t;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/u;->c:Lcom/estrongs/android/scanner/d/t;

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/u;->a:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/estrongs/android/scanner/d/u;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/u;->c:Lcom/estrongs/android/scanner/d/t;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/u;->c:Lcom/estrongs/android/scanner/d/t;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/d/t;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/u;->a:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/estrongs/android/scanner/d/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    return-void
.end method
