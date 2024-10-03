.class public abstract Lcom/android/launcher3/util/AbsGridOccupancy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected findVacantCell([I[[ZIIII)Z
    .locals 8

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    add-int v1, v0, p6

    if-gt v1, p4, :cond_6

    move v2, p0

    :goto_1
    add-int v3, v2, p5

    if-gt v3, p3, :cond_5

    aget-object v4, p2, v2

    aget-boolean v4, v4, v0

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    move v6, v2

    :goto_2
    if-ge v6, v3, :cond_3

    move v7, v0

    :goto_3
    if-ge v7, v1, :cond_2

    if-eqz v4, :cond_0

    aget-object v4, p2, v6

    aget-boolean v4, v4, v7

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_4

    :cond_0
    move v4, p0

    :goto_4
    if-nez v4, :cond_1

    goto :goto_5

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    aput v2, p1, p0

    aput v0, p1, v5

    return v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return p0
.end method

.method protected findVacantCellFromBottom([I[[ZIIII)Z
    .locals 8

    add-int/lit8 p0, p4, -0x1

    :goto_0
    const/4 v0, 0x0

    if-ltz p0, :cond_7

    add-int v1, p0, p6

    if-le v1, p4, :cond_0

    goto :goto_6

    :cond_0
    move v2, v0

    :goto_1
    add-int v3, v2, p5

    if-gt v3, p3, :cond_6

    aget-object v4, p2, v2

    aget-boolean v4, v4, p0

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    move v6, v2

    :goto_2
    if-ge v6, v3, :cond_4

    move v7, p0

    :goto_3
    if-ge v7, v1, :cond_3

    if-eqz v4, :cond_1

    aget-object v4, p2, v6

    aget-boolean v4, v4, v7

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_4

    :cond_1
    move v4, v0

    :goto_4
    if-nez v4, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    aput v2, p1, v0

    aput p0, p1, v5

    return v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_6
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_7
    return v0
.end method
