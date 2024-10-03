.class public Lcom/android/launcher3/views/Snackbar;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mOnDismissed:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const p2, 0x7f0e013c

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/views/Snackbar;->lambda$show$0(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/Snackbar;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/views/Snackbar;->lambda$show$1(Lcom/android/launcher3/views/Snackbar;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/views/Snackbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/Snackbar;->onClosed()V

    return-void
.end method

.method private static synthetic lambda$show$0(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private static synthetic lambda$show$1(Lcom/android/launcher3/views/Snackbar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private onClosed()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;II",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 16
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    const/4 v4, 0x1

    const/16 v5, 0x80

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    new-instance v3, Lcom/android/launcher3/views/Snackbar;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704df

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setElevation(F)V

    const v7, 0x7f0704e7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v8, 0x7f0803ae

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iput-boolean v4, v3, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/16 v10, 0x51

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v10, 0x7f0704e0

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v10, 0x7f0704e2

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0704e5

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0704e1

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f0704e4

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v15

    const/4 v5, 0x2

    mul-int/2addr v11, v5

    sub-int/2addr v15, v11

    iget v11, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v11

    iget v11, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v11

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    mul-int/2addr v10, v5

    sub-int/2addr v8, v10

    iget v10, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    iget v10, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v10

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget-boolean v8, v4, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v8, :cond_0

    iget v8, v4, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    invoke-virtual {v4}, Lcom/android/launcher3/DeviceProfile;->getTaskbarOffsetY()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_0

    :cond_0
    iget v8, v14, Landroid/graphics/Rect;->bottom:I

    :goto_0
    add-int/2addr v12, v8

    const/4 v4, 0x0

    invoke-virtual {v9, v4, v4, v4, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v4, 0x7f0b0209

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0b0033

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v10, -0x1

    const/4 v12, 0x0

    if-eq v2, v10, :cond_1

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v10, v13

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/launcher3/views/w;

    move-object/from16 v13, p4

    invoke-direct {v2, v13, v3}, Lcom/android/launcher3/views/w;-><init>(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move v10, v12

    :goto_1
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v7, v5

    add-int/2addr v1, v7

    iget v2, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-le v1, v2, :cond_3

    if-gt v1, v11, :cond_2

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    const v1, 0x7f0704de

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0704e6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x2

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v2, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v1

    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_3
    :goto_2
    move-object/from16 v1, p3

    iput-object v1, v3, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0xb4

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/16 v1, 0xfa0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result v0

    new-instance v1, Lcom/android/launcher3/views/x;

    invoke-direct {v1, v3}, Lcom/android/launcher3/views/x;-><init>(Lcom/android/launcher3/views/Snackbar;)V

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/views/y;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/y;-><init>(Lcom/android/launcher3/views/Snackbar;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/android/launcher3/views/Snackbar;->onClosed()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    :cond_1
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
