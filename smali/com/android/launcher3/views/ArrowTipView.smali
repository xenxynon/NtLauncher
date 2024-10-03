.class public Lcom/android/launcher3/views/ArrowTipView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private final mArrowMinOffset:I

.field private mArrowView:Landroid/view/View;

.field private final mArrowWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsPointingUp:Z

.field private mOnClosed:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/views/ArrowTipView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/views/ArrowTipView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    iput-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    iput-boolean p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07009a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07018f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowMinOffset:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/ArrowTipView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/ArrowTipView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/ArrowTipView;->lambda$showAtLocation$4()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/ArrowTipView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/ArrowTipView;->lambda$handleClose$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/views/ArrowTipView;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/views/ArrowTipView;->lambda$showAtLocation$3(IIIIII)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0e003c

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x7f0b0096

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/launcher3/views/ArrowTipView;->updateArrowTipInView()V

    return-void
.end method

.method private synthetic lambda$handleClose$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showAtLocation$3(IIIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p1, p1

    sub-float v2, p1, v0

    int-to-float v3, p2

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    add-float/2addr v0, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float v2, p3

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    iget-boolean p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    if-eqz p3, :cond_2

    add-int v0, p4, p2

    if-le v0, p5, :cond_3

    goto :goto_1

    :cond_2
    sub-int p5, p6, p2

    if-gez p5, :cond_3

    :goto_1
    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    invoke-direct {p0}, Lcom/android/launcher3/views/ArrowTipView;->updateArrowTipInView()V

    :cond_3
    iget-boolean p3, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    if-eqz p3, :cond_4

    int-to-float p2, p4

    goto :goto_2

    :cond_4
    sub-int/2addr p6, p2

    int-to-float p2, p6

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object p2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    sub-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v1

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$showAtLocation$4()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/ArrowTipView;->handleClose(Z)V

    return-void
.end method

.method private showAtLocation(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;
    .locals 9
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070593

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070594

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v1

    if-ge v5, v2, :cond_0

    sget-object p0, Lcom/android/launcher3/views/ArrowTipView;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot display tip on a small screen of size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v2, 0x7f0b03bf

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    new-instance p1, Lcom/android/launcher3/views/h;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v6, p4

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/views/h;-><init>(Lcom/android/launcher3/views/ArrowTipView;IIIIII)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/launcher3/views/f;

    invoke-direct {p2, p0}, Lcom/android/launcher3/views/f;-><init>(Lcom/android/launcher3/views/ArrowTipView;)V

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-object p0
.end method

.method private updateArrowTipInView()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060036

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/CornerPathEffect;

    int-to-float v5, v3

    invoke-direct {v4, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mIsPointingUp:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mArrowView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_2

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

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/views/g;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/g;-><init>(Lcom/android/launcher3/views/ArrowTipView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/views/ArrowTipView;->mOnClosed:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    :cond_2
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object v1, p0, Lcom/android/launcher3/views/ArrowTipView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showAroundRect(Ljava/lang/String;ILandroid/graphics/Rect;I)Lcom/android/launcher3/views/ArrowTipView;
    .locals 7
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p3, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, p4

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    add-int v5, p3, p4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object p0

    return-object p0
.end method

.method public showAtLocation(Ljava/lang/String;II)Lcom/android/launcher3/views/ArrowTipView;
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/ArrowTipView;->showAtLocation(Ljava/lang/String;IIIZ)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object p0

    return-object p0
.end method
