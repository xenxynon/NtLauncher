.class public Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;,
        Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$IconUpdateFunction;
    }
.end annotation


# instance fields
.field private mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mBorderColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mContent:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIcon1:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mIcon2:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mThumbnailView1:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mThumbnailView2:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/launcher3/R$styleable;->TaskView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :cond_2
    new-instance v0, Lcom/android/launcher3/taskbar/f;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/taskbar/f;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Landroid/widget/ImageView;)V

    invoke-interface {p3, p2, v0}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->lambda$setThumbnails$2(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->lambda$onFinishInflate$0(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->lambda$applyThumbnail$3(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->lambda$setThumbnails$1(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private synthetic lambda$applyThumbnail$3(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private synthetic lambda$setThumbnails$1(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    iget-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setThumbnails$2(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2

    iget-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const p1, 0x7f120226

    invoke-virtual {p3, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/BorderAnimator;->drawBorder(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected getFocusAnimator(Z)Landroid/animation/Animator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/BorderAnimator;->buildAnimator(Z)Landroid/animation/Animator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 7

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b03d7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mThumbnailView1:Landroid/widget/ImageView;

    const v0, 0x7f0b03d8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mThumbnailView2:Landroid/widget/ImageView;

    const v0, 0x7f0b01ea

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon1:Landroid/widget/ImageView;

    const v0, 0x7f0b01eb

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon2:Landroid/widget/ImageView;

    const v0, 0x7f0b0109

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mContent:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mContent:Landroid/view/View;

    invoke-static {v1}, Lcom/android/launcher3/util/Preconditions;->assertNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/quickstep/util/BorderAnimator;

    const v2, 0x7f07025e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderColor:I

    new-instance v4, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;

    const v5, 0x7f070257

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v5, Lcom/android/launcher3/taskbar/e;

    invoke-direct {v5, p0}, Lcom/android/launcher3/taskbar/e;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;)V

    iget-object v6, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mContent:Landroid/view/View;

    invoke-direct {v4, v0, v5, p0, v6}, Lcom/android/quickstep/util/BorderAnimator$ScalingParams;-><init>(ILcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;Landroid/view/View;Landroid/view/View;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/quickstep/util/BorderAnimator;-><init>(IILcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mBorderAnimator:Lcom/android/quickstep/util/BorderAnimator;

    return-void
.end method

.method protected setThumbnails(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$IconUpdateFunction;)V
    .locals 2
    .param p1    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$IconUpdateFunction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mThumbnailView1:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mThumbnailView2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyThumbnail(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$ThumbnailUpdateFunction;)V

    if-nez p4, :cond_1

    iget-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V

    iget-object p3, p0, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3, p2}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->applyIcon(Landroid/widget/ImageView;Lcom/android/systemui/shared/recents/model/Task;)V

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f120226

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    aput-object p2, v0, p1

    invoke-virtual {p3, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance p3, Lcom/android/launcher3/taskbar/h;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/launcher3/taskbar/h;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-interface {p4, p1, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$IconUpdateFunction;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p3, Lcom/android/launcher3/taskbar/g;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/launcher3/taskbar/g;-><init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-interface {p4, p2, p3}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView$IconUpdateFunction;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    return-void
.end method
