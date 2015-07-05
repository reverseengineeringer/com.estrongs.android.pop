.class Lcom/estrongs/android/pop/app/imageviewer/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

.field public b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->ALLOW:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/d;->a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/d;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/d;->a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->CANCEL:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    if-ne v0, v1, :cond_0

    const-string v0, "Cancel"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/d;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/d;->a:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;->ALLOW:Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;

    if-ne v0, v1, :cond_1

    const-string v0, "Allow"

    goto :goto_0

    :cond_1
    const-string v0, "?"

    goto :goto_0
.end method
