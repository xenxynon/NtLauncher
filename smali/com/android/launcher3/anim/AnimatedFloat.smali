.class public Lcom/android/launcher3/anim/AnimatedFloat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_OP:Ljava/lang/Runnable;

.field public static final VALUE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/anim/AnimatedFloat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndValue:Ljava/lang/Float;

.field private final mUpdateCallback:Ljava/lang/Runnable;

.field private mValueAnimator:Landroid/animation/ObjectAnimator;

.field public value:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v0, Lcom/android/launcher3/anim/a;->g:Lcom/android/launcher3/anim/a;

    sput-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->NO_OP:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->NO_OP:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput p2, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/anim/AnimatedFloat;->lambda$static$0()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/anim/AnimatedFloat;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/anim/AnimatedFloat;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mEndValue:Ljava/lang/Float;

    return-object p1
.end method

.method private static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public animateToValue(F)Landroid/animation/ObjectAnimator;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public animateToValue(FF)Landroid/animation/ObjectAnimator;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->cancelAnimation()V

    sget-object v0, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat$2;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/anim/AnimatedFloat$2;-><init>(Lcom/android/launcher3/anim/AnimatedFloat;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public finishAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public getRemainingTime()J
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->isAnimating()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mValueAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAnimatingToValue(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mEndValue:Ljava/lang/Float;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSettledOnValue(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateValue(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat;->mUpdateCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
