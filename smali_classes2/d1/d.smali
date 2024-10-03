.class public Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/d$b;,
        Ld1/d$c;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e19999a    # 0.15f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ld1/d;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ld1/d;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Ld1/d;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic a(IILandroid/view/ViewGroup;FFIILd1/d$b;Ld1/d$c;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Ld1/d;->g(IILandroid/view/ViewGroup;FFIILd1/d$b;Ld1/d$c;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Ld1/d;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic c()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Ld1/d;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private static d(Landroid/view/ViewGroup;Landroid/view/SurfaceControl;ILy0/a;Landroid/graphics/Rect;IIFFIILandroid/animation/Animator$AnimatorListener;F)Landroid/animation/ValueAnimator;
    .locals 16

    move-object/from16 v10, p0

    move/from16 v8, p2

    move-object/from16 v11, p11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/4 v12, 0x2

    div-int/2addr v2, v12

    mul-int/2addr v0, v0

    mul-int v3, v2, v2

    add-int/2addr v0, v3

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v0, v3

    const/4 v3, 0x3

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    new-instance v13, Ld1/d$b;

    invoke-direct {v13, v10}, Ld1/d$b;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v13, v2, v1}, Ld1/d$b;->b(II)V

    invoke-virtual {v13, v1, v0}, Ld1/d$b;->d(II)V

    invoke-virtual {v13, v4, v3}, Ld1/d$b;->c([I[F)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v14, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    instance-of v0, v10, Landroid/window/SplashScreenView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    move-object v0, v10

    check-cast v0, Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result v0

    :goto_0
    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld1/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :goto_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v15, Ld1/d$c;

    const/4 v1, 0x0

    neg-int v0, v8

    int-to-float v2, v0

    move-object v0, v15

    move-object v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p2

    move/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Ld1/d$c;-><init>(FFLandroid/view/View;Landroid/view/SurfaceControl;Landroid/view/ViewGroup;Ly0/a;Landroid/graphics/Rect;IF)V

    move-object v0, v14

    move-object v9, v15

    goto :goto_2

    :cond_2
    move-object v9, v0

    :goto_2
    new-array v1, v12, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    move/from16 v2, p5

    int-to-long v3, v2

    invoke-virtual {v12, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lv0/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v11, :cond_3

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    new-instance v1, Ld1/d$a;

    invoke-direct {v1, v9, v10, v13, v0}, Ld1/d$a;-><init>(Ld1/d$c;Landroid/view/ViewGroup;Ld1/d$b;Landroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v11, Ld1/c;

    move-object v0, v11

    move/from16 v1, p6

    move/from16 v2, p5

    move-object/from16 v3, p0

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-object v8, v13

    invoke-direct/range {v0 .. v9}, Ld1/c;-><init>(IILandroid/view/ViewGroup;FFIILd1/d$b;Ld1/d$c;)V

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v12

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static e(FJJI)F
    .locals 0

    int-to-float p5, p5

    mul-float/2addr p0, p5

    long-to-float p1, p1

    sub-float/2addr p0, p1

    long-to-float p1, p3

    div-float/2addr p0, p1

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic g(IILandroid/view/ViewGroup;FFIILd1/d$b;Ld1/d$c;Landroid/animation/ValueAnimator;)V
    .locals 10

    move-object v0, p2

    move-object/from16 v1, p8

    invoke-virtual/range {p9 .. p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sget-object v9, Ld1/d;->a:Landroid/view/animation/Interpolator;

    move v3, p0

    int-to-long v6, v3

    const-wide/16 v4, 0x0

    move v3, v2

    move v8, p1

    invoke-static/range {v3 .. v8}, Ld1/d;->e(FJJI)F

    move-result v3

    invoke-interface {v9, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    instance-of v4, v0, Landroid/window/SplashScreenView;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v0, Landroid/window/SplashScreenView;

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    sub-float v6, v4, v3

    mul-float/2addr v6, p3

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    if-eqz v0, :cond_2

    sub-float/2addr v4, v3

    mul-float v3, p4, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    move v0, p5

    int-to-long v4, v0

    move/from16 v0, p6

    int-to-long v6, v0

    move v3, v2

    move v8, p1

    invoke-static/range {v3 .. v8}, Ld1/d;->e(FJJI)F

    move-result v0

    move-object/from16 v2, p7

    invoke-virtual {v2, v0}, Ld1/d$b;->a(F)V

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ld1/d$c;->b(F)V

    :cond_3
    return-void
.end method

.method public static h(Landroid/view/ViewGroup;Landroid/view/SurfaceControl;ILy0/a;Landroid/graphics/Rect;IIFFIILandroid/animation/Animator$AnimatorListener;)V
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v12}, Ld1/d;->i(Landroid/view/ViewGroup;Landroid/view/SurfaceControl;ILy0/a;Landroid/graphics/Rect;IIFFIILandroid/animation/Animator$AnimatorListener;F)V

    return-void
.end method

.method static i(Landroid/view/ViewGroup;Landroid/view/SurfaceControl;ILy0/a;Landroid/graphics/Rect;IIFFIILandroid/animation/Animator$AnimatorListener;F)V
    .locals 0

    invoke-static/range {p0 .. p12}, Ld1/d;->d(Landroid/view/ViewGroup;Landroid/view/SurfaceControl;ILy0/a;Landroid/graphics/Rect;IIFFIILandroid/animation/Animator$AnimatorListener;F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
