.class Lcom/estrongs/android/pop/esclasses/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/esclasses/ESResourceActivity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/o;->c:Lcom/estrongs/android/pop/esclasses/ESResourceActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/esclasses/o;->a:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/pop/esclasses/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/o;->c:Lcom/estrongs/android/pop/esclasses/ESResourceActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/o;->a:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/o;->b:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
