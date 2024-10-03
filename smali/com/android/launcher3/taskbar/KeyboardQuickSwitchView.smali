.class public Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# static fields
.field private static final CLOSE_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CLOSE_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final OPEN_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final OPEN_TRANSLATION_X_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final OPEN_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDisplayingRecentTasks:Z

.field private mIsRtl:Z

.field private mNoRecentItemsPane:Landroid/view/View;

.field private mOpenAnimation:Landroid/animation/AnimatorSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mOutlineRadius:I

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mSpacing:I

.field private mTaskViewHeight:I

.field private mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->CLOSE_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    sput-object v2, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_TRANSLATION_X_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->CLOSE_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance p2, Lcom/android/launcher3/taskbar/m;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/m;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V

    invoke-direct {p1, p2}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->animateOpen(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineRadius:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->initializeScroll(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mIsRtl:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollLeftTo(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollRightTo(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    return-object p0
.end method

.method private animateOpen(I)V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v0, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x53

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mNoRecentItemsPane:Landroid/view/View;

    :goto_0
    sget-object v6, Landroid/view/ViewGroup;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v8}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x1

    const/4 v10, 0x0

    aput v10, v7, v8

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v11, 0x1f4

    invoke-virtual {v6, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v7, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_TRANSLATION_X_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v6, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v3, [F

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v11}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v7, v9

    aput v10, v7, v8

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->OPEN_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v1, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$3;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;ILandroid/view/View;Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOpenAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createAndAddOverviewButton(ILandroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p2    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0e00a0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    new-instance v0, Lcom/android/launcher3/taskbar/i;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/i;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b03bf

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mTaskViewHeight:I

    invoke-direct {p4, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget p1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createAndAddTaskView(IIZZLandroid/view/LayoutInflater;Landroid/view/View;Ljava/util/List;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;
    .locals 3
    .param p5    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZ",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)",
            "Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0e00a1

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p5, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    new-instance v0, Lcom/android/launcher3/taskbar/j;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/j;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V

    invoke-virtual {p5, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mTaskViewHeight:I

    invoke-direct {v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/view/View;->getId()I

    move-result p2

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_0

    :cond_0
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    :goto_0
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz p3, :cond_1

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    :cond_1
    invoke-interface {p7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/GroupTask;

    iget-object p2, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    const/4 p3, 0x0

    if-eqz p4, :cond_2

    iget-object p6, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p7, Lcom/android/launcher3/taskbar/l;

    invoke-direct {p7, p6}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;)V

    goto :goto_1

    :cond_2
    move-object p7, p3

    :goto_1
    if-eqz p4, :cond_3

    iget-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/android/launcher3/taskbar/k;

    invoke-direct {p4, p3}, Lcom/android/launcher3/taskbar/k;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;)V

    move-object p3, p4

    :cond_3
    invoke-virtual {p5, p2, p1, p7, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->setThumbnails(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$IconUpdateFunction;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p5
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->lambda$createAndAddOverviewButton$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->lambda$createAndAddTaskView$0(ILandroid/view/View;)V

    return-void
.end method

.method private initializeScroll(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mIsRtl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollRightTo(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollLeftTo(Landroid/view/View;ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createAndAddOverviewButton$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->launchTappedTask(I)V

    return-void
.end method

.method private synthetic lambda$createAndAddTaskView$0(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->launchTappedTask(I)V

    return-void
.end method

.method private scrollLeftTo(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollLeftTo(Landroid/view/View;ZZ)V

    return-void
.end method

.method private scrollLeftTo(Landroid/view/View;ZZ)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->shouldScroll(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p3, :cond_3

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_1
    return-void
.end method

.method private scrollRightTo(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->scrollRightTo(Landroid/view/View;ZZ)V

    return-void
.end method

.method private scrollRightTo(Landroid/view/View;ZZ)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->shouldScroll(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p3, :cond_3

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_1
    return-void
.end method

.method private shouldScroll(Landroid/view/View;Z)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    sub-int/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method


# virtual methods
.method protected animateFocusMove(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->getFocusAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->getFocusAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    new-instance v2, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$4;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;II)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected applyLoadPlan(Landroid/content/Context;Ljava/util/List;IZILcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;IZI",
            "Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v0, p6

    iput-object v0, v8, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v0, 0x7f070262

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object v6, v0

    move v14, v13

    :goto_0
    const/4 v0, 0x1

    if-ge v14, v12, :cond_1

    add-int/lit8 v1, v12, -0x1

    if-ne v14, v1, :cond_0

    if-nez p3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    move v3, v13

    :goto_1
    move-object v0, p0

    move v1, v14

    move v2, v10

    move/from16 v4, p4

    move-object v5, v11

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->createAndAddTaskView(IIZZLandroid/view/LayoutInflater;Landroid/view/View;Ljava/util/List;)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    move-result-object v6

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/icu/text/MessageFormat;

    const v3, 0x7f120225

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v10, v11, v6, v1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->createAndAddOverviewButton(ILandroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, v8, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;

    move/from16 v2, p5

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$1;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected getCloseAnimation()Landroid/animation/Animator;
    .locals 11

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineAnimationProgress:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x14d

    invoke-virtual {v1, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v5, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->CLOSE_OUTLINE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v1, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x43

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v6, 0x53

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mNoRecentItemsPane:Landroid/view/View;

    :goto_0
    sget-object v8, Landroid/view/ViewGroup;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v5, [F

    const/4 v10, 0x0

    aput v2, v9, v10

    const/4 v2, 0x1

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v10}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v2

    invoke-static {v1, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v3, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->CLOSE_TRANSLATION_Y_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Landroid/view/ViewGroup;->ALPHA:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView$2;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected getTaskAt(I)Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0297

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mNoRecentItemsPane:Landroid/view/View;

    const v0, 0x7f0b0325

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mScrollView:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0b0109

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mTaskViewHeight:I

    const v1, 0x7f070264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mSpacing:I

    const v1, 0x7f070263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mOutlineRadius:I

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mIsRtl:Z

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mViewCallbacks:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mIsRtl:Z

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchView;->mDisplayingRecentTasks:Z

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchViewController$ViewCallbacks;->onKeyUp(ILandroid/view/KeyEvent;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
