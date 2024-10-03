.class public Lcom/android/launcher3/anim/FlingSpringAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

.field private final mSkipFlingAnim:Z

.field private mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTargetPosition:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFFFFFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroid/content/Context;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;FFFFFFFF",
            "Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p6

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Li0/h;

    move-result-object v4

    const v5, 0x7f07050d

    invoke-interface {v4, v5}, Li0/h;->getFloat(I)F

    move-result v4

    new-instance v5, Landroidx/dynamicanimation/animation/FlingAnimation;

    move-object v6, p1

    move-object v7, p3

    invoke-direct {v5, p1, p3}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v5, v4}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v4

    move/from16 v5, p7

    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v4

    check-cast v4, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v4, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v8

    iput-object v8, v1, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    move v4, p5

    iput v4, v1, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    cmpg-float v2, p4, v2

    const/4 v4, 0x0

    if-gtz v2, :cond_0

    cmpg-float v2, v0, v4

    if-ltz v2, :cond_1

    :cond_0
    cmpl-float v2, p4, v3

    if-ltz v2, :cond_2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/android/launcher3/anim/FlingSpringAnim;->mSkipFlingAnim:Z

    new-instance v9, Lcom/android/launcher3/anim/l;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move/from16 v4, p11

    move/from16 v5, p10

    move-object/from16 v6, p12

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/anim/l;-><init>(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/anim/FlingSpringAnim;->lambda$new$0(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    new-instance p6, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p6, p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {p6, p8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    iget p6, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    invoke-direct {p2, p6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object p1, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    return-void
.end method

.method public getTargetPosition()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    return p0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    iget-boolean v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSkipFlingAnim:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method public updatePosition(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    iput p2, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    iget-object p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_0
    return-void
.end method
