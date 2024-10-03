.class public abstract Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardwidget/IHorizontalScrollableView;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$Companion;
    }
.end annotation


# static fields
.field private static final AGGRESSIVE_EASE:Landroid/view/animation/PathInterpolator;

.field public static final Companion:Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$Companion;

.field private static final REBOUND_ANIM_DURATION:I = 0x190

.field private static final SCROLL_LIMIT_THRESHOLD:I = 0xa0

.field private static final SCROLL_THRESHOLD:I = 0xe2

.field private static final TAG:Ljava/lang/String; = "HorizontalScroll"


# instance fields
.field private beginMoving:Z

.field private disableScroll:Z

.field private displayRatio:F

.field private downX:F

.field private downY:F

.field private final effectClick$delegate:Ln5/e;

.field private final effectDoubleClick$delegate:Ln5/e;

.field private isHorizontalSliding:Z

.field private isSlidingToRight:Z

.field private isVerticalSliding:Z

.field private lastX:F

.field private mActivePointerId:I

.field private rollbackScroller:Landroid/widget/Scroller;

.field private scrollStartX:F

.field private smoothScroller:Landroid/widget/Scroller;

.field private supportLeft:Z

.field private supportRight:Z

.field private touchSlop:D

.field private vibratorManager:Landroid/os/VibratorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->Companion:Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ee147ae    # 0.44f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->AGGRESSIVE_EASE:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportLeft:Z

    iput-boolean p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportRight:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->mActivePointerId:I

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->displayRatio:F

    iput-boolean p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->beginMoving:Z

    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$effectClick$2;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$effectClick$2;

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->effectClick$delegate:Ln5/e;

    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$effectDoubleClick$2;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$effectDoubleClick$2;

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->effectDoubleClick$delegate:Ln5/e;

    new-instance p2, Landroid/widget/Scroller;

    sget-object p3, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->AGGRESSIVE_EASE:Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->rollbackScroller:Landroid/widget/Scroller;

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-double p2, p2

    iput-wide p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->touchSlop:D

    const-string p2, "vibrator_manager"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.os.VibratorManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/VibratorManager;

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->vibratorManager:Landroid/os/VibratorManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$vibrator(Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->vibrator(Z)V

    return-void
.end method

.method private final getEffectClick()Landroid/os/VibrationEffect;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->effectClick$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method private final getEffectDoubleClick()Landroid/os/VibrationEffect;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->effectDoubleClick$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method private final getMaxScroll()I
    .locals 2

    iget-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isSlidingToRight:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportRight:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportLeft:Z

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0xe2

    goto :goto_0

    :cond_2
    const/16 v0, 0xa0

    :goto_0
    int-to-float v0, v0

    iget p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->displayRatio:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private final getSwitchThreshold()I
    .locals 4

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getMaxScroll()I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private final runRollbackAnim(I)V
    .locals 6

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->rollbackScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x190

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final smoothScrollTo(I)V
    .locals 6

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private final vibrator(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->vibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {p1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p1

    iget-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportRight:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->vibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {p1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p1

    iget-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportLeft:Z

    if-eqz v0, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getEffectClick()Landroid/os/VibrationEffect;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getEffectDoubleClick()Landroid/os/VibrationEffect;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->rollbackScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public final disableHorizontalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->disableScroll:Z

    return-void
.end method

.method public isScrollable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->disableScroll:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->disableScroll:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->downX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->downY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->touchSlop:D

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_3

    float-to-double v5, v0

    cmpl-double v5, v5, v3

    if-lez v5, :cond_8

    :cond_3
    cmpl-double p1, v1, v3

    const/4 v1, 0x1

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isVerticalSliding:Z

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isHorizontalSliding:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    float-to-double v2, v0

    iget-wide v4, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->touchSlop:D

    cmpl-double p1, v2, v4

    if-lez p1, :cond_5

    iput-boolean v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isVerticalSliding:Z

    :cond_5
    iget-boolean p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isHorizontalSliding:Z

    return p0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->mActivePointerId:I

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->rollbackScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->rollbackScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_7
    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->downY:F

    iput-boolean v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isHorizontalSliding:Z

    iput-boolean v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isVerticalSliding:Z

    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSlidingSwitch(Z)V
    .locals 6

    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v0

    new-instance v3, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$onSlidingSwitch$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView$onSlidingSwitch$1;-><init>(Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;ZLq5/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_9

    iget v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-boolean v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isHorizontalSliding:Z

    if-eqz v1, :cond_10

    iget-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->beginMoving:Z

    if-eqz p1, :cond_3

    iput v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->scrollStartX:F

    iput v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->lastX:F

    iput-boolean v4, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->beginMoving:Z

    :cond_3
    iget p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->lastX:F

    sub-float p1, v0, p1

    iget v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->scrollStartX:F

    sub-float v2, v0, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    move v4, v5

    :cond_4
    iput-boolean v4, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isSlidingToRight:Z

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getMaxScroll()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    neg-int p1, p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScrollTo(I)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    if-lez v1, :cond_6

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getMaxScroll()I

    move-result p1

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    if-gez v1, :cond_7

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getMaxScroll()I

    move-result p1

    iget-object v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    add-int/2addr p1, v1

    :goto_2
    neg-int p1, p1

    goto :goto_3

    :cond_7
    cmpl-float p1, p1, v3

    if-lez p1, :cond_8

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getMaxScroll()I

    move-result p1

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getMaxScroll()I

    move-result p1

    :goto_3
    int-to-float p1, p1

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    goto :goto_1

    :goto_4
    iput v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->lastX:F

    return v5

    :cond_9
    :goto_5
    const/4 v1, 0x3

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_b

    :goto_6
    move v0, v5

    goto :goto_9

    :cond_b
    :goto_7
    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_d

    goto :goto_6

    :cond_d
    :goto_8
    move v0, v4

    :goto_9
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v2, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->mActivePointerId:I

    iput-boolean v5, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->beginMoving:Z

    iput-boolean v4, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->isSlidingToRight:Z

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_e
    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->smoothScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->runRollbackAnim(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->scrollStartX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->getSwitchThreshold()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    cmpl-float v0, v0, v3

    if-lez v0, :cond_f

    move v4, v5

    :cond_f
    invoke-virtual {p0, v4}, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->onSlidingSwitch(Z)V

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setDisplayRatio(F)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->displayRatio:F

    return-void
.end method

.method public final supportSlideLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportLeft:Z

    return-void
.end method

.method public final supportSlideRight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/HorizontalScrollReboundView;->supportRight:Z

    return-void
.end method
