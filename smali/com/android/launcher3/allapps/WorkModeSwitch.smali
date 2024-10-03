.class public Lcom/android/launcher3/allapps/WorkModeSwitch;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback$KeyboardInsetListener;


# instance fields
.field private final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mFlags:I

.field private mIcon:Landroid/widget/ImageView;

.field private final mImeInsets:Landroid/graphics/Rect;

.field private final mInsets:Landroid/graphics/Rect;

.field private final mScrollThreshold:I

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mScrollThreshold:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/WorkModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->lambda$animateVisibility$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/WorkModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->lambda$animateVisibility$1()V

    return-void
.end method

.method private synthetic lambda$animateVisibility$0()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    return-void
.end method

.method private synthetic lambda$animateVisibility$1()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private removeFlag(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    return-void
.end method

.method private setInsets(Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)V
    .locals 2

    iget p0, p2, Landroidx/core/graphics/Insets;->left:I

    iget v0, p2, Landroidx/core/graphics/Insets;->top:I

    iget v1, p2, Landroidx/core/graphics/Insets;->right:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public animateVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->extend()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/allapps/a0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/a0;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/allapps/b0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/b0;-><init>(Lcom/android/launcher3/allapps/WorkModeSwitch;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public extend()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getImeInsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getScrollThreshold()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mScrollThreshold:I

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mFlags:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-static {p1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setInsets(Landroid/graphics/Rect;Landroidx/core/graphics/Insets;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateTranslationY()V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b044b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b02c9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p2, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    mul-int/lit8 p1, p2, 0x2

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getTabWidth(Landroid/content/Context;I)I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, p3

    goto :goto_0

    :cond_0
    neg-int p1, p3

    int-to-float p1, p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method

.method public onTranslationEnd()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->removeFlag(I)V

    return-void
.end method

.method public onTranslationStart()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setFlag(I)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateTranslationY()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    add-int/2addr v0, p0

    :cond_1
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method public shrink()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method updateTranslationY()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkModeSwitch;->mImeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->setTranslationY(F)V

    return-void
.end method
