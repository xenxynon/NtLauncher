.class public interface abstract Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewCenterProvider"
.end annotation


# virtual methods
.method public getViewCenter(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 3

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outPoint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    new-array v0, p0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, p0

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p0

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Point;->y:I

    return-void
.end method
