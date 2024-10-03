.class public final Lc5/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lc5/h;FLjava/util/List;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/h;",
            "F",
            "Ljava/util/List<",
            "Ln5/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)D"
        }
    .end annotation

    const-string p0, "hueAndRotations"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/4 v0, 0x0

    if-ltz p0, :cond_1

    const/high16 p0, 0x43b40000    # 360.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    :goto_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/k;

    invoke-virtual {v2}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln5/k;

    invoke-virtual {v4}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, p0

    if-gtz v2, :cond_2

    cmpg-float v2, p0, v4

    if-gez v2, :cond_2

    sget-object p1, Lc5/f;->i:Lc5/f$a;

    float-to-double v1, p0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/k;

    invoke-virtual {p0}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lc5/f$a;->k(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    if-eq v0, v1, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    float-to-double p0, p1

    return-wide p0
.end method
