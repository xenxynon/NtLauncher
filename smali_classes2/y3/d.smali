.class public final Ly3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly3/d;

    invoke-direct {v0}, Ly3/d;-><init>()V

    sput-object v0, Ly3/d;->a:Ly3/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(I[[I)I
    .locals 3

    add-int/lit8 p0, p1, -0x1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p0, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    aget-object v1, p2, p0

    aget v1, v1, v0

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    add-int/lit8 p0, p0, 0x2

    if-le p0, p1, :cond_0

    goto :goto_2

    :cond_0
    move p1, p0

    :goto_2
    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private final e(I[[I)Landroid/graphics/Rect;
    .locals 4

    invoke-direct {p0, p1, p2}, Ly3/d;->g(I[[I)I

    move-result v0

    invoke-direct {p0, p1, p2}, Ly3/d;->i(I[[I)I

    move-result v1

    invoke-direct {p0, p1, p2}, Ly3/d;->h(I[[I)I

    move-result v2

    invoke-direct {p0, p1, p2}, Ly3/d;->c(I[[I)I

    move-result p0

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    sub-int v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    sub-int p0, p1, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, p2, v0

    invoke-static {p2}, Lo5/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo5/j;->S(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance p2, Landroid/graphics/Rect;

    sub-int/2addr p1, p0

    invoke-direct {p2, p0, p0, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private final g(I[[I)I
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p1, :cond_3

    move v1, p0

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v2, p2, v1

    aget v2, v2, v0

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    move p0, v0

    :goto_2
    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private final h(I[[I)I
    .locals 3

    add-int/lit8 p0, p1, -0x1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p0, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    aget-object v1, p2, v0

    aget v1, v1, p0

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    add-int/lit8 p0, p0, 0x2

    if-le p0, p1, :cond_0

    goto :goto_2

    :cond_0
    move p1, p0

    :goto_2
    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private final i(I[[I)I
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p1, :cond_3

    move v1, p0

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v2, p2, v0

    aget v2, v2, v1

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    move p0, v0

    :goto_2
    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;[[I)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alphaArray"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Ly3/d;->d(I[[I)Landroid/graphics/Rect;

    move-result-object p0

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p2, v0, :cond_1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    sub-int/2addr p0, v1

    invoke-static {p1, p2, v1, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createBitmap(bitmap, lef\u2026ght - left, bottom - top)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final b([[I)Landroid/graphics/Rect;
    .locals 1

    const-string v0, "alphaArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-direct {p0, v0, p1}, Ly3/d;->e(I[[I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final d(I[[I)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "alphaArray"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ly3/d;->g(I[[I)I

    move-result v0

    invoke-direct {p0, p1, p2}, Ly3/d;->i(I[[I)I

    move-result v1

    invoke-direct {p0, p1, p2}, Ly3/d;->h(I[[I)I

    move-result v2

    invoke-direct {p0, p1, p2}, Ly3/d;->c(I[[I)I

    move-result p0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)F
    .locals 4

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly3/a;->a:Ly3/a;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x64

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v2, v3, v1}, Ly3/a;->j(Landroid/graphics/drawable/Drawable;IFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-array v0, v2, [[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-array v3, v2, [I

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v2, v0}, Ly3/d;->k(Landroid/graphics/Bitmap;I[[I)V

    invoke-virtual {p0, v2, v0}, Ly3/d;->d(I[[I)Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    int-to-float v0, v2

    div-float/2addr p1, v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float/2addr v1, p0

    div-float/2addr v1, v0

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-lez v0, :cond_2

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 p0, -0x40800000    # -1.0f

    :goto_2
    return p0
.end method

.method public final j(I)Z
    .locals 0

    const/16 p0, 0x32

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Landroid/graphics/Bitmap;I[[I)V
    .locals 9

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "alphaArray"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int p0, p2, p2

    new-array v8, p0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v8

    move v3, p2

    move v6, p2

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    aget v0, v8, p1

    int-to-long v0, v0

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    const/16 v2, 0x18

    shr-long/2addr v0, v2

    long-to-int v0, v0

    div-int v1, p1, p2

    aget-object v1, p3, v1

    rem-int v2, p1, p2

    aput v0, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(Landroid/graphics/Bitmap;I[I[I[[I)V
    .locals 8

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pixels"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "grayArray"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "alphaArray"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p3

    move v3, p2

    move v6, p2

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    array-length p0, p3

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_1

    aget v0, p3, p1

    int-to-long v0, v0

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    const/16 v2, 0x18

    shr-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_0

    aget v1, p3, p1

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    aget v2, p3, p1

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    aget v3, p3, p1

    and-int/lit16 v3, v3, 0xff

    const-wide v4, 0x3fd3333333333333L    # 0.3

    int-to-double v6, v1

    mul-double/2addr v6, v4

    const-wide v4, 0x3fe2e147ae147ae1L    # 0.59

    int-to-double v1, v2

    mul-double/2addr v1, v4

    add-double/2addr v6, v1

    const-wide v1, 0x3fbc28f5c28f5c29L    # 0.11

    int-to-double v3, v3

    mul-double/2addr v3, v1

    add-double/2addr v6, v3

    double-to-int v1, v6

    aput v1, p4, p1

    :cond_0
    div-int v1, p1, p2

    aget-object v1, p5, v1

    rem-int v2, p1, p2

    aput v0, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
