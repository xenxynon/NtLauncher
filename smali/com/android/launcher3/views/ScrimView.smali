.class public Lcom/android/launcher3/views/ScrimView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

.field private mHeaderScale:F

.field private mIsVisible:Z

.field private mLastDispatchedOpaqueness:Z

.field private final mOpaquenessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUiController:Lcom/android/launcher3/util/SystemUiController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/launcher3/views/ScrimView;->mHeaderScale:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private dispatchVisibilityListenersIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/views/ScrimView;->isFullyOpaque()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/views/ScrimView;->mLastDispatchedOpaqueness:Z

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/views/ScrimView;->mLastDispatchedOpaqueness:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/views/ScrimView;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    return-object p0
.end method

.method private isScrimDark()Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScrimView must have a ColorDrawable background, this one has: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSysUiColors()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v3, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v0, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->isScrimDark()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {v0, v2, p0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addOpaquenessListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFullyOpaque()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/views/ScrimView;->mHeaderScale:F

    invoke-interface {v0, p1, p0}, Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;->drawOnScrimWithScale(Landroid/graphics/Canvas;F)V

    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    invoke-super {p0, p1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result p0

    return p0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iput-boolean p1, p0, Lcom/android/launcher3/views/ScrimView;->mIsVisible:Z

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    return-void
.end method

.method public removeOpaquenessListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/views/ScrimView;->mOpaquenessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/views/ScrimView;->mBackgroundColor:I

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->updateSysUiColors()V

    invoke-direct {p0}, Lcom/android/launcher3/views/ScrimView;->dispatchVisibilityListenersIfNeeded()V

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setDrawingController(Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/views/ScrimView;->mDrawingController:Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setScrimHeaderScale(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/views/ScrimView;->mHeaderScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/launcher3/views/ScrimView;->mHeaderScale:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
