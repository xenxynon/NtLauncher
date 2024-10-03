.class public final Lb3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final b(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Lcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(",
            "Lcom/android/launcher3/dragndrop/DragView<",
            "TT;>;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/graphics/Point;",
            ")Z"
        }
    .end annotation

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "motionDownPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getHasMoved()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Lb3/j;->b(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lb3/j;->a(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getLastTouchPoint()Landroid/graphics/Point;

    move-result-object p1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    int-to-double v3, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    cmpg-double p1, p1, v3

    if-gez p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setHasMoved(Z)V

    :cond_1
    :goto_0
    return v0
.end method
