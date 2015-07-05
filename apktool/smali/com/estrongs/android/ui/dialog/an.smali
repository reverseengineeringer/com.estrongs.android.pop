.class final Lcom/estrongs/android/ui/dialog/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/estrongs/android/ui/dialog/an;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static h:Ljava/text/Collator;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field f:Landroid/content/pm/ApplicationInfo;

.field g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/ui/dialog/an;->h:Ljava/text/Collator;

    sput-object v1, Lcom/estrongs/android/ui/dialog/an;->a:Ljava/lang/String;

    sput-object v1, Lcom/estrongs/android/ui/dialog/an;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/an;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/an;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/an;->e:Z

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/estrongs/android/ui/dialog/an;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/an;

    invoke-direct {v1}, Lcom/estrongs/android/ui/dialog/an;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/estrongs/android/ui/dialog/an;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/estrongs/android/ui/dialog/an;->c:Ljava/lang/String;

    iput-object p1, v1, Lcom/estrongs/android/ui/dialog/an;->f:Landroid/content/pm/ApplicationInfo;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, v1, Lcom/estrongs/android/ui/dialog/an;->g:Z

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/ui/dialog/an;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/ui/dialog/an;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/estrongs/android/ui/dialog/an;->e:Z

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/an;)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/estrongs/android/ui/dialog/an;->d:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/ui/dialog/an;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/an;->d:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/ui/dialog/an;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/estrongs/android/ui/dialog/an;->g:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lcom/estrongs/android/ui/dialog/an;->g:Z

    if-eqz v2, :cond_0

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/an;->g:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/estrongs/android/ui/dialog/an;->g:Z

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/estrongs/android/ui/dialog/an;->h:Ljava/text/Collator;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/an;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/estrongs/android/ui/dialog/an;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/ui/dialog/an;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/an;->a(Lcom/estrongs/android/ui/dialog/an;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/estrongs/android/ui/dialog/an;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/estrongs/android/ui/dialog/an;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/an;->a(Lcom/estrongs/android/ui/dialog/an;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
