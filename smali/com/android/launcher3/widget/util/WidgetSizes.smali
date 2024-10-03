.class public final Lcom/android/launcher3/widget/util/WidgetSizes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static getMinMaxSizes(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->union(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;
    .locals 1

    invoke-virtual {p2}, Lcom/android/launcher3/model/WidgetItem;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07059a

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p1, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    iget p0, p2, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget p2, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {p1, p0, p2}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public static getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;
    .locals 2

    invoke-static {p0, p2, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizesDp(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/widget/util/WidgetSizes;->getMinMaxSizes(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iget v0, p2, Landroid/graphics/Rect;->left:I

    const-string v1, "appWidgetMinWidth"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p2, Landroid/graphics/Rect;->top:I

    const-string v1, "appWidgetMinHeight"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p2, Landroid/graphics/Rect;->right:I

    const-string v1, "appWidgetMaxWidth"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    const-string v1, "appWidgetMaxHeight"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "appWidgetSizes"

    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", paddedSizes: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", getMinMaxSizes: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "b/267448330"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public static getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;
    .locals 5

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v2

    add-int/lit8 v2, p2, -0x1

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    check-cast p0, Lj3/a;

    invoke-virtual {p0, p2}, Lj3/a;->i(I)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v3, Landroid/util/Size;

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v4

    add-int/2addr p1, v0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iget v0, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr p2, v0

    add-int/2addr p2, v2

    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    invoke-direct {v3, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method public static getWidgetSizesDp(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object p0

    new-instance p1, Landroid/util/SizeF;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-direct {p1, p2, p0}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V
    .locals 2

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizeOptions(Landroid/content/Context;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "appWidgetSizes"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    return-void
.end method
