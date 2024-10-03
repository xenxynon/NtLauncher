.class public final Lu2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/launcher3/views/ActivityContext;II)Landroidx/core/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/views/ActivityContext;",
            "II)",
            "Landroidx/core/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "previewContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lu2/b;->b(Landroid/content/Context;II)Landroid/util/Size;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    const-string v1, "previewContext.deviceProfile"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lu2/b;->c(Lj3/a;II)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    new-instance p2, Landroidx/core/util/Pair;

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static final b(Landroid/content/Context;II)Landroid/util/Size;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lj3/a;->i(I)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p0

    const-string v2, "getIDP(context).getDeviceProfile(context)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v1}, Lu2/b;->e(Lcom/android/launcher3/DeviceProfile;IILandroid/graphics/Point;)Landroid/util/Size;

    move-result-object p0

    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public static final c(Lj3/a;II)Landroid/util/Size;
    .locals 2

    const-string v0, "profile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lj3/a;->i(I)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0, p1, p2, v1}, Lu2/b;->e(Lcom/android/launcher3/DeviceProfile;IILandroid/graphics/Point;)Landroid/util/Size;

    move-result-object p0

    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public static final d(Landroid/content/Context;II)Landroid/os/Bundle;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lu2/b;->b(Landroid/content/Context;II)Landroid/util/Size;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "span_x"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "span_y"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const-string p1, "height"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static final e(Lcom/android/launcher3/DeviceProfile;IILandroid/graphics/Point;)Landroid/util/Size;
    .locals 3

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v2

    add-int/lit8 v2, p2, -0x1

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v1

    invoke-virtual {p0, p3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    new-instance p0, Landroid/util/Size;

    iget v1, p3, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v1

    add-int/2addr p1, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    mul-int/2addr p2, p3

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private static final f(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lu2/b;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1}, Lu2/b;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final g(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    const-string v0, "span_x"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "span_y"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "width"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CardOption:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lcom/nothing/cardhost/e;Landroid/content/Context;II)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getAppWidgetId()I

    move-result p0

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2, p3}, Lu2/b;->d(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p2

    sget-object p3, Lg2/k;->g:Lg2/k$a;

    invoke-virtual {p3, p1}, Lg2/k$a;->a(Landroid/content/Context;)Lg2/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg2/k;->m(I)Landroid/os/Bundle;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    invoke-static {p3, p2}, Lu2/b;->f(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p3

    if-ne p3, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p0, p2}, Lg2/k;->o(ILandroid/os/Bundle;)V

    return-void
.end method
