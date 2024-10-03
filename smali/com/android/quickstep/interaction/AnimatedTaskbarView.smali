.class public Lcom/android/quickstep/interaction/AnimatedTaskbarView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private mAllAppsButton:Landroid/view/View;

.field private mBackground:Landroid/view/View;

.field private mIcon1:Landroid/view/View;

.field private mIcon2:Landroid/view/View;

.field private mIcon3:Landroid/view/View;

.field private mIcon4:Landroid/view/View;

.field private mIcon5:Landroid/view/View;

.field private mIconContainer:Landroid/view/View;

.field private mRunningAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    return-void
.end method

.method static synthetic access$002(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mRunningAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr p3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr p3, v4

    int-to-float p3, p3

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 p3, 0x1

    const/4 v5, 0x0

    aput v5, v3, p3

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr p4, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr p4, v6

    int-to-float p4, p4

    aput p4, v3, v4

    aput v5, v3, p3

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    aput v3, v1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, p3

    invoke-static {p1, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p2, v5

    aput p2, v1, v4

    aput v3, v1, p3

    invoke-static {p1, p4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, v2, [F

    fill-array-data p3, :array_0

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance p3, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;

    invoke-direct {p3, p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$5;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr p3, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr p3, v6

    int-to-float p3, p3

    const/4 v6, 0x1

    aput p3, v3, v6

    invoke-static {p1, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v2, [F

    aput v5, v1, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr p4, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr p4, v3

    int-to-float p4, p4

    aput p4, v1, v6

    invoke-static {p1, p3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array p4, v2, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p4, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    aput v3, p4, v6

    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array p4, v2, [F

    aput v1, p4, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    aput p2, p4, v6

    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, v2, [F

    fill-array-data p3, :array_0

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance p3, Lcom/android/quickstep/interaction/AnimatedTaskbarView$4;

    invoke-direct {p3, p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$4;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private start(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    new-instance v0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$3;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public animateAppearanceFromHotseat(Landroid/view/ViewGroup;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mAllAppsButton:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon1:Landroid/view/View;

    const v4, 0x7f0b01e0

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon2:Landroid/view/View;

    const v4, 0x7f0b01e1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon3:Landroid/view/View;

    const v4, 0x7f0b01e2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon4:Landroid/view/View;

    const v4, 0x7f0b01e3

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon5:Landroid/view/View;

    const v4, 0x7f0b01e4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconAppearanceFromHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$2;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->start(Landroid/animation/Animator;)V

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

.method public animateDisappearanceToHotseat(Landroid/view/ViewGroup;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mAllAppsButton:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon1:Landroid/view/View;

    const v4, 0x7f0b01e0

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon2:Landroid/view/View;

    const v4, 0x7f0b01e1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon3:Landroid/view/View;

    const v4, 0x7f0b01e2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon4:Landroid/view/View;

    const v4, 0x7f0b01e3

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon5:Landroid/view/View;

    const v4, 0x7f0b01e4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->createIconDisappearanceToHotseatAnimator(Landroid/view/View;Landroid/view/View;II)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/quickstep/interaction/AnimatedTaskbarView$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView$1;-><init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->start(Landroid/animation/Animator;)V

    return-void

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

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b03af

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mBackground:Landroid/view/View;

    const v0, 0x7f0b01ec

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIconContainer:Landroid/view/View;

    const v0, 0x7f0b03ae

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mAllAppsButton:Landroid/view/View;

    const v0, 0x7f0b03b2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon1:Landroid/view/View;

    const v0, 0x7f0b03b3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon2:Landroid/view/View;

    const v0, 0x7f0b03b4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon3:Landroid/view/View;

    const v0, 0x7f0b03b5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon4:Landroid/view/View;

    const v0, 0x7f0b03b6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->mIcon5:Landroid/view/View;

    return-void
.end method
