.class public Lj1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.googlequicksearchbox"

    iput-object v0, p0, Lj1/a$a;->b:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v0, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p1, p2

    if-eq v0, p3, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    const/4 p2, 0x4

    :goto_1
    or-int/2addr p1, p2

    iput p1, p0, Lj1/a$a;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lj1/a$a;->c:Landroid/graphics/Bitmap;

    const-string p1, ""

    iput-object p1, p0, Lj1/a$a;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lj1/a$a;->d:Z

    return-void
.end method

.method static synthetic a(Lj1/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj1/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lj1/a$a;)I
    .locals 0

    iget p0, p0, Lj1/a$a;->a:I

    return p0
.end method

.method static synthetic c(Lj1/a$a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lj1/a$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic d(Lj1/a$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj1/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lj1/a$a;)Z
    .locals 0

    iget-boolean p0, p0, Lj1/a$a;->d:Z

    return p0
.end method
