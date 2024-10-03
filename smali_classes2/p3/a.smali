.class public final Lp3/a;
.super Lp3/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/e<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lp3/a;

.field private static final h:J

.field private static final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp3/a;

    invoke-direct {v0}, Lp3/a;-><init>()V

    sput-object v0, Lp3/a;->g:Lp3/a;

    const-wide/16 v0, 0x2710

    sput-wide v0, Lp3/a;->h:J

    const/4 v0, 0x5

    sput v0, Lp3/a;->i:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lp3/e;-><init>()V

    return-void
.end method

.method public static synthetic m(Lp3/a;ILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lp3/a;->l(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e()J
    .locals 2

    sget-wide v0, Lp3/a;->h:J

    return-wide v0
.end method

.method public f()I
    .locals 0

    sget p0, Lp3/a;->i:I

    return p0
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lp3/a;->n(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic h(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lp3/a;->o(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final k(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lp3/a$a;

    invoke-direct {v0, p1, p2, p3}, Lp3/a$a;-><init>(IILandroid/graphics/Bitmap$Config;)V

    invoke-virtual {p0, v0}, Lp3/e;->d(Ly5/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(w, h, config)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final l(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p1, p2}, Lp3/a;->k(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected n(Landroid/graphics/Bitmap;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected o(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lp3/e;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void
.end method
