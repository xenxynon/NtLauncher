.class public final Lcom/android/launcher3/taskbar/TaskbarEduTooltip;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# instance fields
.field private final activityContext:Lcom/android/launcher3/views/ActivityContext;

.field private arrow:Landroid/view/View;

.field private final arrowHeight:F

.field private final arrowPointRadius:F

.field private final arrowWidth:F

.field private final backgroundColor:I

.field private content:Landroid/view/ViewGroup;

.field private final enterYDelta:F

.field private final exitYDelta:F

.field private onCloseCallback:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private openCloseAnimator:Landroid/animation/AnimatorSet;

.field private final tooltipCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    const-string p3, "lookupContext(context)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    const p2, 0x11200ad

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->backgroundColor:I

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->tooltipCornerRadius:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07049d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrowWidth:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07049a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrowHeight:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070499

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrowPointRadius:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07053f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->enterYDelta:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070540

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->exitYDelta:F

    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$onCloseCallback$1;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarEduTooltip$onCloseCallback$1;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->onCloseCallback:Ly5/a;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->createOpenCloseAnimator$lambda$5$lambda$4(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->createOpenCloseAnimator$lambda$3$lambda$2(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->closeComplete()V

    return-void
.end method

.method private final closeComplete()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->openCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->openCloseAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private final createOpenCloseAnimator(Z)Landroid/animation/AnimatorSet;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const-wide/16 v4, 0x12c

    new-array p1, v3, [F

    fill-array-data p1, :array_0

    new-array v6, v3, [F

    iget v7, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->enterYDelta:F

    aput v7, v6, v2

    aput v0, v6, v1

    sget-object v0, Lb/a;->d:Landroid/view/animation/Interpolator;

    const-string v7, "STANDARD"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lb/a;->c:Landroid/view/animation/Interpolator;

    const-string v8, "EMPHASIZED_DECELERATE"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x96

    new-array p1, v3, [F

    fill-array-data p1, :array_1

    new-array v6, v3, [F

    aput v0, v6, v2

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->exitYDelta:F

    aput v0, v6, v1

    sget-object v0, Lb/a;->b:Landroid/view/animation/Interpolator;

    const-string v7, "EMPHASIZED_ACCELERATE"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    :goto_0
    array-length v8, p1

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/taskbar/e2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/e2;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    array-length v0, v6

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/launcher3/taskbar/d2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/taskbar/d2;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static final createOpenCloseAnimator$lambda$3$lambda$2(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->getContent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrow:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "arrow"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static final createOpenCloseAnimator$lambda$5$lambda$4(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->getContent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrow:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "arrow"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final getContent()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->content:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "content"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOnCloseCallback()Ly5/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/a<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->onCloseCallback:Ly5/a;

    return-object p0
.end method

.method protected handleClose(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->onCloseCallback:Ly5/a;

    invoke-interface {v0}, Ly5/a;->invoke()Ljava/lang/Object;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->closeComplete()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->openCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->createOpenCloseAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->openCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/launcher3/taskbar/f2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/f2;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->openCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    const/high16 p0, 0x20000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_1
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_taskbar_education_showing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0109

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.content)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.arrow)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrow:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "arrow"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v13, Lcom/android/launcher3/popup/RoundedArrowDrawable;

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrowWidth:F

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrowHeight:F

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrowPointRadius:F

    iget v5, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->tooltipCornerRadius:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v8, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->arrowWidth:F

    sub-float/2addr v1, v8

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float v8, v1, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->backgroundColor:I

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/popup/RoundedArrowDrawable;-><init>(FFFFFFFFZZI)V

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setOnCloseCallback(Ly5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->onCloseCallback:Ly5/a;

    return-void
.end method

.method public final show()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->createOpenCloseAnimator(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->openCloseAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method
