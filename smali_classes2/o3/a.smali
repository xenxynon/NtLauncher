.class public final Lo3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/a$a;
    }
.end annotation


# static fields
.field public static final k:Lo3/a$a;


# instance fields
.field private final a:I

.field private b:[I

.field private c:[I

.field private d:[[I

.field private final e:I

.field private final f:Ln5/e;

.field private final g:Ln5/e;

.field private final h:Ln5/e;

.field private i:F

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo3/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lo3/a;->k:Lo3/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo3/a;->a:I

    const/16 p1, 0x32

    iput p1, p0, Lo3/a;->e:I

    new-instance p1, Lo3/a$d;

    invoke-direct {p1, p0}, Lo3/a$d;-><init>(Lo3/a;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lo3/a;->f:Ln5/e;

    new-instance p1, Lo3/a$c;

    invoke-direct {p1, p0}, Lo3/a$c;-><init>(Lo3/a;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lo3/a;->g:Ln5/e;

    new-instance p1, Lo3/a$b;

    invoke-direct {p1, p0}, Lo3/a$b;-><init>(Lo3/a;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lo3/a;->h:Ln5/e;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lo3/a;->i:F

    return-void
.end method

.method public static final synthetic a(Lo3/a;)I
    .locals 0

    iget p0, p0, Lo3/a;->e:I

    return p0
.end method

.method private final b(II)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    mul-int v2, v1, v1

    const v3, 0xee51

    sub-int v2, v3, v2

    int-to-float v2, v2

    const/high16 v4, 0x43520000    # 210.0f

    div-float/2addr v4, v2

    iget-object v2, v0, Lo3/a;->c:[I

    const-string v5, "grayArray"

    const/4 v6, 0x0

    if-nez v2, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, v6

    :cond_0
    array-length v2, v2

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v7, v2, :cond_7

    iget-object v9, v0, Lo3/a;->d:[[I

    const-string v10, "alphaArray"

    if-nez v9, :cond_1

    invoke-static {v10}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v9, v6

    :cond_1
    div-int v11, v7, p1

    aget-object v9, v9, v11

    rem-int v12, v7, p1

    aget v9, v9, v12

    iget-object v13, v0, Lo3/a;->c:[I

    if-nez v13, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v13, v6

    :cond_2
    aget v13, v13, v7

    const/16 v14, 0x6e

    const/16 v15, 0xff

    if-le v9, v14, :cond_3

    const/16 v14, 0xf7

    if-le v14, v1, :cond_3

    mul-int/2addr v13, v13

    sub-int/2addr v13, v3

    int-to-float v9, v13

    mul-float/2addr v9, v4

    float-to-int v9, v9

    add-int/2addr v9, v15

    if-le v9, v15, :cond_3

    move v9, v15

    :cond_3
    if-le v9, v8, :cond_4

    move v8, v9

    :cond_4
    iget-object v13, v0, Lo3/a;->d:[[I

    if-nez v13, :cond_5

    invoke-static {v10}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v13, v6

    :cond_5
    aget-object v10, v13, v11

    aput v9, v10, v12

    iget-object v10, v0, Lo3/a;->b:[I

    if-nez v10, :cond_6

    const-string v10, "pixels"

    invoke-static {v10}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v10, v6

    :cond_6
    shl-int/lit8 v9, v9, 0x18

    aput v9, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    return v8
.end method

.method private final c(II)I
    .locals 7

    iget-object v0, p0, Lo3/a;->c:[I

    const-string v1, "grayArray"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    array-length v0, v0

    const/16 v3, 0xff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    iget-object v5, p0, Lo3/a;->d:[[I

    if-nez v5, :cond_1

    const-string v5, "alphaArray"

    invoke-static {v5}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v5, v2

    :cond_1
    div-int v6, v4, p2

    aget-object v5, v5, v6

    rem-int v6, v4, p2

    aget v5, v5, v6

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lo3/a;->c:[I

    if-nez v6, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v6, v2

    :cond_3
    aget v6, v6, v4

    invoke-direct {p0, v6, p1}, Lo3/a;->d(II)I

    move-result v6

    invoke-direct {p0, v5, v6, v3}, Lo3/a;->f(III)I

    move-result v3

    iget-object v5, p0, Lo3/a;->c:[I

    if-nez v5, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v5, v2

    :cond_4
    aput v6, v5, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method private final d(II)I
    .locals 0

    const/16 p0, 0xff

    add-int/2addr p1, p0

    sub-int/2addr p1, p2

    if-le p1, p0, :cond_0

    rsub-int p1, p1, 0x1fe

    :cond_0
    return p1
.end method

.method private final f(III)I
    .locals 0

    const/16 p0, 0x6e

    if-le p1, p0, :cond_0

    if-ge p2, p3, :cond_0

    return p2

    :cond_0
    return p3
.end method

.method private final g(Landroid/graphics/Bitmap;)I
    .locals 10

    sget-object v0, Lp3/a;->g:Lp3/a;

    iget v1, p0, Lo3/a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lp3/a;->m(Lp3/a;ILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_0
    sget-object v2, Ly3/a;->a:Ly3/a;

    iget v3, p0, Lo3/a;->e:I

    invoke-virtual {v2, p1, v1, v3, v3}, Ly3/a;->g(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v4, Ly3/d;->a:Ly3/d;

    iget v6, p0, Lo3/a;->e:I

    invoke-direct {p0}, Lo3/a;->k()[I

    move-result-object v7

    invoke-direct {p0}, Lo3/a;->j()[I

    move-result-object v8

    invoke-direct {p0}, Lo3/a;->i()[[I

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Ly3/d;->l(Landroid/graphics/Bitmap;I[I[I[[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lp3/e;->i(Ljava/lang/Object;)V

    const/16 p1, 0x20

    new-array v0, p1, [I

    invoke-direct {p0}, Lo3/a;->k()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Ls5/c;->b(III)I

    move-result v1

    if-ltz v1, :cond_1

    move v3, v2

    :goto_0
    invoke-direct {p0}, Lo3/a;->i()[[I

    move-result-object v4

    iget v5, p0, Lo3/a;->e:I

    div-int v6, v3, v5

    aget-object v4, v4, v6

    rem-int v5, v3, v5

    aget v4, v4, v5

    const/16 v5, 0x6e

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Lo3/a;->j()[I

    move-result-object v4

    aget v4, v4, v3

    div-int/lit8 v4, v4, 0x8

    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    :cond_0
    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_1
    move p0, v2

    move v1, p0

    :goto_1
    if-ge v2, p1, :cond_3

    aget v3, v0, v2

    if-le v3, v1, :cond_2

    aget p0, v0, v2

    move v1, p0

    move p0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    mul-int/lit16 p0, p0, 0x100

    div-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    sget-object p1, Lp3/a;->g:Lp3/a;

    invoke-virtual {p1, v1}, Lp3/e;->i(Ljava/lang/Object;)V

    throw p0
.end method

.method private final i()[[I
    .locals 0

    iget-object p0, p0, Lo3/a;->h:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method private final j()[I
    .locals 0

    iget-object p0, p0, Lo3/a;->g:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private final k()[I
    .locals 0

    iget-object p0, p0, Lo3/a;->f:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private final l(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1}, Lo3/a;->g(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-direct {p0, p1, v0}, Lo3/a;->o(Landroid/graphics/Bitmap;I)V

    invoke-direct {p0, v1, v0}, Lo3/a;->c(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lo3/a;->b(II)I

    move-result v1

    sget-object v2, Ly3/d;->a:Ly3/d;

    invoke-virtual {v2, v1}, Ly3/d;->j(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, v0}, Lo3/a;->p(Landroid/graphics/Bitmap;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final o(Landroid/graphics/Bitmap;I)V
    .locals 10

    iget-object v0, p0, Lo3/a;->b:[I

    const-string v1, "pixels"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    array-length v0, v0

    mul-int v3, p2, p2

    if-eq v0, v3, :cond_3

    :cond_1
    mul-int v0, p2, p2

    new-array v3, v0, [I

    iput-object v3, p0, Lo3/a;->b:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lo3/a;->c:[I

    const/4 v0, 0x0

    new-array v3, p2, [[I

    :goto_0
    if-ge v0, p2, :cond_2

    new-array v4, p2, [I

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lo3/a;->d:[[I

    :cond_3
    sget-object v4, Ly3/d;->a:Ly3/d;

    iget-object v0, p0, Lo3/a;->b:[I

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v7, v2

    goto :goto_1

    :cond_4
    move-object v7, v0

    :goto_1
    iget-object v0, p0, Lo3/a;->c:[I

    if-nez v0, :cond_5

    const-string v0, "grayArray"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v8, v2

    goto :goto_2

    :cond_5
    move-object v8, v0

    :goto_2
    iget-object p0, p0, Lo3/a;->d:[[I

    if-nez p0, :cond_6

    const-string p0, "alphaArray"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v9, v2

    goto :goto_3

    :cond_6
    move-object v9, p0

    :goto_3
    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Ly3/d;->l(Landroid/graphics/Bitmap;I[I[I[[I)V

    return-void
.end method

.method private final p(Landroid/graphics/Bitmap;I)Landroid/graphics/Rect;
    .locals 12

    sget-object v0, Ly3/d;->a:Ly3/d;

    iget-object v1, p0, Lo3/a;->d:[[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "alphaArray"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ly3/d;->b([[I)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v1, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v6, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object p0, p0, Lo3/a;->b:[I

    if-nez p0, :cond_1

    const-string p0, "pixels"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, p0

    :goto_0
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object v4, p1

    move v7, p2

    move v10, v11

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method


# virtual methods
.method public final e()I
    .locals 0

    iget p0, p0, Lo3/a;->a:I

    return p0
.end method

.method public final h()F
    .locals 0

    iget p0, p0, Lo3/a;->i:F

    return p0
.end method

.method public final m(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lo3/a;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lo3/a;->a:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal icon size\uff0cRequires consistent width and height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo3/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cconstitute\uff1a["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconGrayConverter"

    invoke-static {v1, v0}, Ly3/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ly3/a;->a:Ly3/a;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget v4, p0, Lo3/a;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Ly3/a;->k(Ly3/a;Landroid/graphics/drawable/Drawable;IFLandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lo3/a;->l(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Ly3/a;->a:Ly3/a;

    iget v3, p0, Lo3/a;->a:I

    const v4, 0x3ec71c72

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ly3/a;->h(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-object v0, Lp3/a;->g:Lp3/a;

    invoke-virtual {v0, p1}, Lp3/e;->i(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lp3/a;->g:Lp3/a;

    invoke-virtual {v0, p1}, Lp3/e;->i(Ljava/lang/Object;)V

    throw p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Lo3/a;->j:Z

    return p0
.end method

.method public final q(Z)V
    .locals 0

    iput-boolean p1, p0, Lo3/a;->j:Z

    return-void
.end method

.method public final r(F)V
    .locals 0

    iput p1, p0, Lo3/a;->i:F

    return-void
.end method
