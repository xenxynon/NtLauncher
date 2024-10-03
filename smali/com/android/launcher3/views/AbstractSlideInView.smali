.class public abstract Lcom/android/launcher3/views/AbstractSlideInView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/AbstractFloatingView;",
        "Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;"
    }
.end annotation


# static fields
.field protected static final TRANSLATION_SHIFT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/views/AbstractSlideInView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mColorScrim:Landroid/view/View;

.field protected mContent:Landroid/view/ViewGroup;

.field private mContentBackground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mContentBackgroundParentView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mIsBackProgressing:Z

.field protected mNoIntercept:Z

.field protected mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mOnCloseListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

.field protected mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected final mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field protected final mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

.field protected mTranslationShift:F

.field protected final mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher3/views/AbstractSlideInView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationShift"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/AbstractSlideInView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    new-instance p3, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v0, Lcom/android/launcher3/views/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/a;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-direct {p3, v0, p2}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;F)V

    iput-object p3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/views/AbstractSlideInView$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/views/AbstractSlideInView$2;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    new-instance p2, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    sget-object p3, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    const/4 p2, 0x0

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/android/launcher3/views/AbstractSlideInView$3;

    invoke-direct {p3, p0}, Lcom/android/launcher3/views/AbstractSlideInView$3;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->getScrimColor(Landroid/content/Context;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/AbstractSlideInView;->createColorScrim(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method private drawScaledBackground(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getBottomOffsetPx()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private isOpeningAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected animateSlideInViewToNoScale()V
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected attachToContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected createColorScrim(Landroid/content/Context;I)Landroid/view/View;
    .locals 0

    new-instance p0, Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->drawScaledBackground(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getBottomOffsetPx()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f666666    # 0.9f

    div-float v0, p0, v0

    sub-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method protected getIdleInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method protected getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    return-object p0
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getShiftRange()F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method protected handleClose(ZJ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/views/b;->g:Lcom/android/launcher3/views/b;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/views/AbstractSlideInView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/AbstractSlideInView$4;-><init>(Lcom/android/launcher3/views/AbstractSlideInView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isIdleState()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getIdleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected isEventOverContent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onBackCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->animateSlideInViewToNoScale()V

    return-void
.end method

.method public onBackInvoked()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->animateSlideInViewToNoScale()V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x22
    .end annotation

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->PREDICTIVE_BACK_DECELERATED_EASE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const p1, 0x3f666666    # 0.9f

    const v1, 0x3dccccd0    # 0.100000024f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, v1

    add-float/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method protected onCloseComplete()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseListeners:Ljava/util/List;

    sget-object v0, Lcom/android/launcher3/views/b;->g:Lcom/android/launcher3/views/b;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->setDetectableScrollConditions(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->isOpeningAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->isEventOverContent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    return v1
.end method

.method public onDrag(F)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDragEnd(F)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->isFling(F)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v2

    if-gtz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v3, v3, [F

    const/4 v5, 0x0

    aput v2, v3, v5

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    invoke-static {p1, v1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->calculateDuration(FF)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0

    return-void
.end method

.method protected onScaleProgressChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSlideInViewScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    iget-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mIsBackProgressing:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected setContentBackgroundWithParent(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContentBackgroundParentView:Landroid/view/View;

    return-void
.end method

.method public setOnCloseBeginListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOnCloseBeginListener:Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    return-void
.end method

.method protected setTranslationShift(F)V
    .locals 2

    iput p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getShiftRange()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mColorScrim:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
