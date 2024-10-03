.class public Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String;


# instance fields
.field private g:Lx0/a;

.field private h:Le1/a;

.field private i:I

.field private j:I

.field private k:F

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->k:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)F
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->k:F

    return p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->h:Le1/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Le1/a;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->g:Lx0/a;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->g:Lx0/a;

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->j:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->k:F

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->j:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->g:Lx0/a;

    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->k:F

    invoke-virtual {v0, v1}, Lx0/a;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lu0/c;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->i:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->h:Le1/a;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->k:F

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->h:Le1/a;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setElevation(F)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->c()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1010571
        0x10104e2
    .end array-data
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getTaskId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lu0/c;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lu0/c;->f:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->i:I

    new-instance v1, Lx0/a;

    invoke-direct {v1, v0}, Lx0/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->g:Lx0/a;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    new-instance v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$a;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$a;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->g:Lx0/a;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p3

    iget-object p5, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->g:Lx0/a;

    invoke-virtual {p5, p2, p3, p4, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->h:Le1/a;

    if-eqz p3, :cond_0

    int-to-float p5, p1

    iget p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->k:F

    sub-float/2addr p5, p0

    float-to-int p0, p5

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p1, p5

    invoke-virtual {p3, p2, p0, p4, p1}, Landroid/view/SurfaceView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->k:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->g:Lx0/a;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, p1, v3}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->h:Le1/a;

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->m:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->l:Z

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->setContentVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setContentVisibility(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->l:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->h:Le1/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->m:Z

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public setSurfaceZOrderedOnTop(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->h:Le1/a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method public setTaskViewAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->h:Le1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
