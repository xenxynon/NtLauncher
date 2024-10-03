.class public final Lcom/android/quickstep/util/BorderAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;,
        Lcom/android/quickstep/util/BorderAnimator$ScalingParams;,
        Lcom/android/quickstep/util/BorderAnimator$SimpleParams;,
        Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_APPEARANCE_ANIMATION_DURATION_MS:J = 0x12cL

.field public static final DEFAULT_BORDER_COLOR:I = -0x1

.field private static final DEFAULT_DISAPPEARANCE_ANIMATION_DURATION_MS:J = 0x85L

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAppearanceDurationMs:J

.field private final mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mBorderAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mBorderPaint:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mBorderRadiusPx:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private final mDisappearanceDurationMs:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRunningBorderAnimation:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/quickstep/util/BorderAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(IILcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)V
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v8, Lcom/android/quickstep/util/BorderAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x85

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/quickstep/util/BorderAnimator;-><init>(IILcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;JJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IILcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;JJLandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/quickstep/util/j;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/j;-><init>(Lcom/android/quickstep/util/BorderAnimator;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderPaint:Landroid/graphics/Paint;

    iput p1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderRadiusPx:I

    iput-object p3, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    iput-wide p4, p0, Lcom/android/quickstep/util/BorderAnimator;->mAppearanceDurationMs:J

    iput-wide p6, p0, Lcom/android/quickstep/util/BorderAnimator;->mDisappearanceDurationMs:J

    iput-object p8, p0, Lcom/android/quickstep/util/BorderAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/BorderAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/BorderAnimator;->updateOutline()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/quickstep/util/BorderAnimator;)Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quickstep/util/BorderAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/BorderAnimator;->lambda$buildAnimator$0(Z)V

    return-void
.end method

.method private synthetic lambda$buildAnimator$0(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mRunningBorderAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-virtual {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->onHideBorder()V

    return-void
.end method

.method private updateOutline()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-static {v1, v0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->access$000(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;F)V

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-static {v1}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->access$100(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public buildAnimator(Z)Landroid/animation/Animator;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mRunningBorderAnimation:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    iget-wide v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mAppearanceDurationMs:J

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mDisappearanceDurationMs:J

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mRunningBorderAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/quickstep/util/BorderAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/BorderAnimator$1;-><init>(Lcom/android/quickstep/util/BorderAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mRunningBorderAnimation:Landroid/animation/Animator;

    new-instance v1, Lcom/android/quickstep/util/k;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/util/k;-><init>(Lcom/android/quickstep/util/BorderAnimator;Z)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator;->mRunningBorderAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method public drawBorder(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-virtual {v0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getAlignmentAdjustment()F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-static {v1}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->access$200(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v3, v1, v0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-static {v1}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->access$200(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v4, v1, v0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-static {v1}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->access$200(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v5, v1, v0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-static {v1}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->access$200(Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v6, v1, v0

    iget v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderRadiusPx:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-virtual {v1}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getRadiusAdjustment()F

    move-result v1

    add-float v7, v0, v1

    iget v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderRadiusPx:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-virtual {v1}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->getRadiusAdjustment()F

    move-result v1

    add-float v8, v0, v1

    iget-object v9, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setBorderVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mRunningBorderAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-virtual {v0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->onShowBorder()V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator;->mBorderAnimationParams:Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    invoke-virtual {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->onHideBorder()V

    :cond_3
    return-void
.end method
