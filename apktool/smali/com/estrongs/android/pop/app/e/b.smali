.class Lcom/estrongs/android/pop/app/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/lockscreen/a/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/e/a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/e/a;ILjava/lang/String;JLandroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/e/b;->a:Lcom/estrongs/android/pop/app/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/estrongs/android/pop/app/e/b;->b:I

    iput-object p3, p0, Lcom/estrongs/android/pop/app/e/b;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/estrongs/android/pop/app/e/b;->d:J

    iput-object p6, p0, Lcom/estrongs/android/pop/app/e/b;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/b;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/e/b;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/e/b;->d:J

    return-wide v0
.end method
