.class public final Lb3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static final b(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    move-object v1, p0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lb3/e;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static final c(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p5, p5, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static final d(Landroid/graphics/Canvas;IIIIILandroid/graphics/Paint;)V
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    move-object v1, p0

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lb3/e;->c(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    return-void
.end method
