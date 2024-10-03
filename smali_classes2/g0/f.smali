.class public final Lg0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/f$b;,
        Lg0/f$c;,
        Lg0/f$e;,
        Lg0/f$a;,
        Lg0/f$f;,
        Lg0/f$d;
    }
.end annotation


# static fields
.field public static final e:Lg0/f$b;

.field private static final f:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private final a:Lg0/f$f;

.field private final b:Lg0/f$d;

.field private final c:[I

.field private final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg0/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg0/f$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg0/f;->e:Lg0/f$b;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lg0/f;->f:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Lg0/f$f;Lg0/f$d;)V
    .locals 1

    const-string v0, "timings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolators"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/f;->a:Lg0/f$f;

    iput-object p2, p0, Lg0/f;->b:Lg0/f$d;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lg0/f;->c:[I

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lg0/f;->d:[F

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/x;Lg0/f;FLkotlin/jvm/internal/y;ILkotlin/jvm/internal/z;Lg0/f$e;ILkotlin/jvm/internal/z;ILkotlin/jvm/internal/z;FFFFZLkotlin/jvm/internal/x;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lg0/f$c;ZZLg0/f$e;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p28}, Lg0/f;->e(Lkotlin/jvm/internal/x;Lg0/f;FLkotlin/jvm/internal/y;ILkotlin/jvm/internal/z;Lg0/f$e;ILkotlin/jvm/internal/z;ILkotlin/jvm/internal/z;FFFFZLkotlin/jvm/internal/x;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lg0/f$c;ZZLg0/f$e;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final b(Landroid/graphics/drawable/GradientDrawable;Lg0/f$e;FLandroid/view/View;ZZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lg0/f;->c:[I

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->f()I

    move-result v2

    iget-object v3, v0, Lg0/f;->c:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->h()I

    move-result v3

    iget-object v5, v0, Lg0/f;->c:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v3, v5

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->g()I

    move-result v5

    iget-object v7, v0, Lg0/f;->c:[I

    aget v7, v7, v4

    sub-int/2addr v5, v7

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->a()I

    move-result v7

    iget-object v8, v0, Lg0/f;->c:[I

    aget v8, v8, v6

    sub-int/2addr v7, v8

    invoke-virtual {p1, v2, v3, v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->i()F

    move-result v3

    aput v3, v2, v4

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->i()F

    move-result v3

    aput v3, v2, v6

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->i()F

    move-result v3

    const/4 v4, 0x2

    aput v3, v2, v4

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->i()F

    move-result v3

    const/4 v4, 0x3

    aput v3, v2, v4

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->b()F

    move-result v3

    const/4 v4, 0x4

    aput v3, v2, v4

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->b()F

    move-result v3

    const/4 v4, 0x5

    aput v3, v2, v4

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->b()F

    move-result v3

    const/4 v4, 0x6

    aput v3, v2, v4

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->b()F

    move-result v3

    const/4 v4, 0x7

    aput v3, v2, v4

    iget-object v2, v0, Lg0/f;->d:[F

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    sget-object v2, Lg0/f;->e:Lg0/f$b;

    iget-object v8, v0, Lg0/f;->a:Lg0/f$f;

    invoke-virtual {v8}, Lg0/f$f;->e()J

    move-result-wide v10

    iget-object v3, v0, Lg0/f;->a:Lg0/f$f;

    invoke-virtual {v3}, Lg0/f$f;->f()J

    move-result-wide v12

    move-object v7, v2

    move/from16 v9, p3

    invoke-virtual/range {v7 .. v13}, Lg0/f$b;->a(Lg0/f$f;FJJ)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    const/16 v5, 0xff

    if-gez v4, :cond_0

    iget-object v0, v0, Lg0/f;->b:Lg0/f$d;

    invoke-virtual {v0}, Lg0/f$d;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    int-to-float v2, v5

    mul-float/2addr v0, v2

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    iget-object v8, v0, Lg0/f;->a:Lg0/f$f;

    invoke-virtual {v8}, Lg0/f$f;->c()J

    move-result-wide v10

    iget-object v3, v0, Lg0/f;->a:Lg0/f$f;

    invoke-virtual {v3}, Lg0/f$f;->d()J

    move-result-wide v12

    move-object v7, v2

    move/from16 v9, p3

    invoke-virtual/range {v7 .. v13}, Lg0/f$b;->a(Lg0/f$f;FJJ)F

    move-result v2

    int-to-float v3, v6

    iget-object v0, v0, Lg0/f;->b:Lg0/f$d;

    invoke-virtual {v0}, Lg0/f$d;->a()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v3, v0

    int-to-float v0, v5

    mul-float/2addr v3, v0

    invoke-static {v3}, La6/a;->b(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    if-eqz p6, :cond_2

    sget-object v0, Lg0/f;->f:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setXfermode(Landroid/graphics/Xfermode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final e(Lkotlin/jvm/internal/x;Lg0/f;FLkotlin/jvm/internal/y;ILkotlin/jvm/internal/z;Lg0/f$e;ILkotlin/jvm/internal/z;ILkotlin/jvm/internal/z;FFFFZLkotlin/jvm/internal/x;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lg0/f$c;ZZLg0/f$e;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p16

    move-object/from16 v15, p18

    move-object/from16 v8, p20

    move-object/from16 v7, p22

    const-string v2, "$cancelled"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$endCenterX"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$endWidth"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$state"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$endTop"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$endBottom"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$movedBackgroundLayer"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$windowBackgroundLayer"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$launchContainer"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$controller"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$endState"

    move-object/from16 v3, p25

    invoke-static {v3, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$endLeft"

    move-object/from16 v5, p26

    invoke-static {v5, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$endRight"

    move-object/from16 v6, p27

    invoke-static {v6, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v0, Lkotlin/jvm/internal/x;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v2, p8

    move-object/from16 v3, p25

    move-object/from16 v4, p10

    move-object/from16 v5, p26

    move-object/from16 v6, p27

    move-object v0, v7

    move-object/from16 v7, p3

    move-object v0, v8

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v8}, Lg0/f;->f(Lkotlin/jvm/internal/z;Lg0/f$e;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/y;Lkotlin/jvm/internal/z;)V

    invoke-virtual/range {p28 .. p28}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget-object v3, v1, Lg0/f;->b:Lg0/f$d;

    invoke-virtual {v3}, Lg0/f$d;->c()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget-object v4, v1, Lg0/f;->b:Lg0/f$d;

    invoke-virtual {v4}, Lg0/f$d;->d()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    iget v5, v9, Lkotlin/jvm/internal/y;->g:F

    move/from16 v6, p2

    invoke-static {v6, v5, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    iget v5, v10, Lkotlin/jvm/internal/z;->g:I

    move/from16 v6, p4

    invoke-static {v6, v5, v3}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, v12, Lkotlin/jvm/internal/z;->g:I

    move/from16 v7, p7

    invoke-static {v7, v6, v3}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v6

    invoke-static {v6}, La6/a;->b(F)I

    move-result v6

    invoke-virtual {v11, v6}, Lg0/f$e;->p(I)V

    iget v6, v13, Lkotlin/jvm/internal/z;->g:I

    move/from16 v7, p9

    invoke-static {v7, v6, v3}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v6

    invoke-static {v6}, La6/a;->b(F)I

    move-result v6

    invoke-virtual {v11, v6}, Lg0/f$e;->l(I)V

    sub-float v6, v4, v5

    invoke-static {v6}, La6/a;->b(F)I

    move-result v6

    invoke-virtual {v11, v6}, Lg0/f$e;->n(I)V

    add-float/2addr v4, v5

    invoke-static {v4}, La6/a;->b(F)I

    move-result v4

    invoke-virtual {v11, v4}, Lg0/f$e;->o(I)V

    move/from16 v4, p11

    move/from16 v5, p12

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    invoke-virtual {v11, v4}, Lg0/f$e;->q(F)V

    move/from16 v4, p13

    move/from16 v5, p14

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    invoke-virtual {v11, v4}, Lg0/f$e;->m(F)V

    sget-object v4, Lg0/f;->e:Lg0/f$b;

    iget-object v5, v1, Lg0/f;->a:Lg0/f$f;

    invoke-virtual {v5}, Lg0/f$f;->e()J

    move-result-wide v6

    iget-object v8, v1, Lg0/f;->a:Lg0/f$f;

    invoke-virtual {v8}, Lg0/f$f;->f()J

    move-result-wide v8

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move/from16 p9, v2

    move-wide/from16 p10, v6

    move-wide/from16 p12, v8

    invoke-virtual/range {p7 .. p13}, Lg0/f$b;->a(Lg0/f$f;FJJ)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    const/4 v5, 0x1

    if-gez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v11, v4}, Lg0/f$e;->r(Z)V

    if-eqz p15, :cond_2

    invoke-virtual/range {p6 .. p6}, Lg0/f$e;->j()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v14, Lkotlin/jvm/internal/x;->g:Z

    if-nez v4, :cond_2

    iput-boolean v5, v14, Lkotlin/jvm/internal/x;->g:Z

    invoke-virtual/range {p17 .. p18}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    invoke-static/range {p19 .. p19}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p19

    invoke-virtual {v4, v15}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Lg0/k;->a:Lg0/k;

    sget-object v5, Lg0/f$h;->g:Lg0/f$h;

    move-object/from16 v6, p21

    invoke-virtual {v4, v0, v6, v5}, Lg0/k;->c(Landroid/view/View;Landroid/view/View;Ly5/a;)V

    goto :goto_1

    :cond_2
    move-object/from16 v6, p21

    :goto_1
    iget-boolean v0, v14, Lkotlin/jvm/internal/x;->g:Z

    if-eqz v0, :cond_3

    invoke-static/range {p21 .. p21}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-interface/range {p22 .. p22}, Lg0/f$c;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    move-object v6, v0

    :goto_2
    move-object/from16 p7, p1

    move-object/from16 p8, p18

    move-object/from16 p9, p6

    move/from16 p10, v2

    move-object/from16 p11, v6

    move/from16 p12, p23

    move/from16 p13, p24

    invoke-direct/range {p7 .. p13}, Lg0/f;->b(Landroid/graphics/drawable/GradientDrawable;Lg0/f$e;FLandroid/view/View;ZZ)V

    move-object/from16 v0, p22

    invoke-interface {v0, v11, v3, v2}, Lg0/f$c;->onLaunchAnimationProgress(Lg0/f$e;FF)V

    return-void
.end method

.method private static final f(Lkotlin/jvm/internal/z;Lg0/f$e;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/y;Lkotlin/jvm/internal/z;)V
    .locals 2

    iget v0, p0, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual {p1}, Lg0/f$e;->h()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p2, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual {p1}, Lg0/f$e;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p3, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual {p1}, Lg0/f$e;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p4, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual {p1}, Lg0/f$e;->g()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lg0/f$e;->h()I

    move-result v0

    iput v0, p0, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual {p1}, Lg0/f$e;->a()I

    move-result p0

    iput p0, p2, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual {p1}, Lg0/f$e;->f()I

    move-result p0

    iput p0, p3, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual {p1}, Lg0/f$e;->g()I

    move-result p0

    iput p0, p4, Lkotlin/jvm/internal/z;->g:I

    iget p1, p3, Lkotlin/jvm/internal/z;->g:I

    add-int p2, p1, p0

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p5, Lkotlin/jvm/internal/y;->g:F

    sub-int/2addr p0, p1

    iput p0, p6, Lkotlin/jvm/internal/z;->g:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Lg0/f$e;)Z
    .locals 5

    const-string v0, "launchContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg0/f;->c:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Lg0/f$e;->h()I

    move-result v0

    iget-object v1, p0, Lg0/f;->c:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    invoke-virtual {p2}, Lg0/f$e;->a()I

    move-result v0

    iget-object v1, p0, Lg0/f;->c:[I

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Lg0/f$e;->f()I

    move-result v0

    iget-object v1, p0, Lg0/f;->c:[I

    aget v1, v1, v3

    if-gt v0, v1, :cond_0

    invoke-virtual {p2}, Lg0/f$e;->g()I

    move-result p2

    iget-object p0, p0, Lg0/f;->c:[I

    aget p0, p0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    if-lt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2
.end method

.method public final d(Lg0/f$c;Lg0/f$e;IZZ)Lg0/f$a;
    .locals 38

    move-object/from16 v2, p0

    move-object/from16 v15, p2

    const-string v0, "controller"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endState"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lg0/f$c;->createAnimatorState()Lg0/f$e;

    move-result-object v10

    invoke-virtual {v10}, Lg0/f$e;->h()I

    move-result v11

    invoke-virtual {v10}, Lg0/f$e;->a()I

    move-result v12

    invoke-virtual {v10}, Lg0/f$e;->f()I

    move-result v0

    invoke-virtual {v10}, Lg0/f$e;->g()I

    move-result v1

    add-int v3, v0, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v3, v4

    sub-int v16, v1, v0

    invoke-virtual {v10}, Lg0/f$e;->i()F

    move-result v19

    invoke-virtual {v10}, Lg0/f$e;->b()F

    move-result v20

    new-instance v0, Lkotlin/jvm/internal/z;

    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->h()I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/z;->g:I

    new-instance v9, Lkotlin/jvm/internal/z;

    invoke-direct {v9}, Lkotlin/jvm/internal/z;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->a()I

    move-result v1

    iput v1, v9, Lkotlin/jvm/internal/z;->g:I

    new-instance v8, Lkotlin/jvm/internal/z;

    invoke-direct {v8}, Lkotlin/jvm/internal/z;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->f()I

    move-result v1

    iput v1, v8, Lkotlin/jvm/internal/z;->g:I

    new-instance v7, Lkotlin/jvm/internal/z;

    invoke-direct {v7}, Lkotlin/jvm/internal/z;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->g()I

    move-result v1

    iput v1, v7, Lkotlin/jvm/internal/z;->g:I

    new-instance v6, Lkotlin/jvm/internal/y;

    invoke-direct {v6}, Lkotlin/jvm/internal/y;-><init>()V

    iget v1, v8, Lkotlin/jvm/internal/z;->g:I

    iget v3, v7, Lkotlin/jvm/internal/z;->g:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, v6, Lkotlin/jvm/internal/y;->g:F

    new-instance v5, Lkotlin/jvm/internal/z;

    invoke-direct {v5}, Lkotlin/jvm/internal/z;-><init>()V

    iget v1, v7, Lkotlin/jvm/internal/z;->g:I

    iget v3, v8, Lkotlin/jvm/internal/z;->g:I

    sub-int/2addr v1, v3

    iput v1, v5, Lkotlin/jvm/internal/z;->g:I

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->i()F

    move-result v21

    invoke-virtual/range {p2 .. p2}, Lg0/f$e;->b()F

    move-result v22

    invoke-interface/range {p1 .. p1}, Lg0/f$c;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v2, v4, v15}, Lg0/f;->c(Landroid/view/View;Lg0/f$e;)Z

    move-result v23

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move/from16 v1, p3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    move-object/from16 v24, v0

    iget-object v0, v2, Lg0/f;->a:Lg0/f$f;

    move-object/from16 v25, v3

    invoke-virtual {v0}, Lg0/f$f;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lb/a;->j:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface/range {p1 .. p1}, Lg0/f$c;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v27, v0

    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lg0/f$c;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move/from16 v28, v0

    goto :goto_1

    :cond_1
    const/16 v28, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    move-object/from16 v18, v0

    new-instance v2, Lkotlin/jvm/internal/x;

    move-object v3, v1

    move-object v1, v2

    invoke-direct {v2}, Lkotlin/jvm/internal/x;-><init>()V

    new-instance v29, Lkotlin/jvm/internal/x;

    move-object/from16 v17, v29

    invoke-direct/range {v29 .. v29}, Lkotlin/jvm/internal/x;-><init>()V

    move-object/from16 p3, v2

    new-instance v2, Lg0/f$g;

    move-object/from16 v29, v1

    move-object v1, v3

    move-object v3, v2

    move-object/from16 v30, v4

    move-object/from16 v4, p1

    move-object/from16 v31, v5

    move/from16 v5, v23

    move-object/from16 v23, v6

    move-object v6, v0

    move-object/from16 v32, v7

    move-object/from16 v7, v25

    move-object/from16 v33, v8

    move/from16 v8, v28

    move-object/from16 v34, v9

    move-object/from16 v9, v27

    invoke-direct/range {v3 .. v9}, Lg0/f$g;-><init>(Lg0/f$c;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;ZLandroid/view/ViewOverlay;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v9, Lg0/e;

    move-object v0, v9

    move-object/from16 v8, p3

    move-object/from16 v2, p0

    move v3, v13

    move-object/from16 v4, v23

    move/from16 v5, v16

    move-object/from16 v6, v31

    move-object v7, v10

    move-object v13, v8

    move v8, v11

    move-object v11, v9

    move-object/from16 v9, v24

    move v10, v12

    move-object v12, v11

    move-object/from16 v11, v34

    move-object/from16 v35, v12

    move/from16 v12, v19

    move-object/from16 v36, v13

    move/from16 v13, v21

    move/from16 v14, v20

    move/from16 v15, v22

    move/from16 v16, v28

    move-object/from16 v19, v25

    move-object/from16 v20, v27

    move-object/from16 v21, v30

    move-object/from16 v22, v26

    move-object/from16 v23, p1

    move/from16 v24, p4

    move/from16 v25, p5

    move-object/from16 v26, p2

    move-object/from16 v27, v33

    move-object/from16 v28, v32

    move-object/from16 v37, v1

    move-object/from16 v1, v29

    invoke-direct/range {v0 .. v28}, Lg0/e;-><init>(Lkotlin/jvm/internal/x;Lg0/f;FLkotlin/jvm/internal/y;ILkotlin/jvm/internal/z;Lg0/f$e;ILkotlin/jvm/internal/z;ILkotlin/jvm/internal/z;FFFFZLkotlin/jvm/internal/x;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lg0/f$c;ZZLg0/f$e;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;)V

    move-object/from16 v1, v35

    move-object/from16 v0, v37

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Lg0/f$i;

    move-object/from16 v2, v36

    invoke-direct {v1, v2, v0}, Lg0/f$i;-><init>(Lkotlin/jvm/internal/x;Landroid/animation/ValueAnimator;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
