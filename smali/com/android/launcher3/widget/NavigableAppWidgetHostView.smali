.class public abstract Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DraggableView;
.implements Lcom/android/launcher3/Reorderable;
.implements Lcom/nothing/launcher/widget/h;


# instance fields
.field protected final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mChildrenFocused:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mDisableSetPadding:Z

.field private mDisplaySpan:Landroid/graphics/Point;

.field private mScaleForReorderBounce:F

.field private mScaleToFit:F

.field private final mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

.field private previewContentConfig:Landroidx/core/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/launcher3/util/MultiTranslateDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    iput v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mDisableSetPadding:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mDisplaySpan:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->previewContentConfig:Landroidx/core/util/Pair;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method

.method private dispatchChildFocus(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setSelected(Z)V

    return-void
.end method

.method private hasMeasuredContentWithPreIdp(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, v0, Lg3/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->previewContentConfig:Landroidx/core/util/Pair;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v3, v4, v0}, Lu2/b;->a(Lcom/android/launcher3/views/ActivityContext;II)Landroidx/core/util/Pair;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->previewContentConfig:Landroidx/core/util/Pair;

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->previewContentConfig:Landroidx/core/util/Pair;

    iget-object v1, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->previewContentConfig:Landroidx/core/util/Pair;

    iget-object v4, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->previewContentConfig:Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateContentViewScale(F)V

    invoke-virtual {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->setMeasuredDimension(II)V

    return v2

    :cond_1
    return v1
.end method

.method private updateContentViewScale(F)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private updateScale()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    iget v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    mul-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setScaleX(F)V

    iget v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    iget v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    mul-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public applyDisplaySpan(II)V
    .locals 2

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal span params, info detail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n layoutParam = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetHostView"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mDisplaySpan:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lj3/a;->i(I)Landroid/graphics/Rect;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p2, v0, v1, p1}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->clearChildFocus(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->dispatchChildFocus(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->requestFocus()Z

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getDescendantFocusability()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x20000

    goto :goto_0

    :cond_0
    const/high16 p0, 0x60000

    :goto_0
    return p0
.end method

.method public getDisplaySpan()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mDisplaySpan:Landroid/graphics/Point;

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getReorderBounceScale()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    return p0
.end method

.method public getScaleToFit()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    return p0
.end method

.method public getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mTranslateDelegate:Lcom/android/launcher3/util/MultiTranslateDelegate;

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    mul-float/2addr v1, p0

    float-to-int p0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->dispatchChildFocus(Z)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    if-nez v0, :cond_3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->shouldAllowDirectClick()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iput-boolean v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v0

    :cond_2
    iput-boolean v3, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->hasMeasuredContentWithPreIdp(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mChildrenFocused:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->dispatchChildFocus(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_1
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mDisableSetPadding:Z

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mDisableSetPadding:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mDisableSetPadding:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->useDynamicPadding()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getDisplaySpan()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    :cond_0
    if-lez p1, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lj3/a;->j(Ljava/lang/Integer;Landroid/graphics/Rect;)V

    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleForReorderBounce:F

    invoke-direct {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateScale()V

    return-void
.end method

.method public setScaleToFit(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->mScaleToFit:F

    invoke-direct {p0}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->updateScale()V

    return-void
.end method

.method protected abstract shouldAllowDirectClick()Z
.end method

.method public useDynamicPadding()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
