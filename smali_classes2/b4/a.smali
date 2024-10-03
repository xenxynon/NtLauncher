.class public final Lb4/a;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb4/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Ljava/lang/Comparable<",
        "Lb4/a;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final o:Lb4/a$a;


# instance fields
.field private final g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Integer;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb4/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb4/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lb4/a;->o:Lb4/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/Integer;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    iput-object p1, p0, Lb4/a;->g:Ljava/lang/String;

    iput p2, p0, Lb4/a;->h:I

    iput p3, p0, Lb4/a;->i:I

    iput p4, p0, Lb4/a;->j:I

    iput p5, p0, Lb4/a;->k:I

    iput-object p6, p0, Lb4/a;->l:Ljava/lang/String;

    iput-object p7, p0, Lb4/a;->m:Ljava/lang/Integer;

    iput p8, p0, Lb4/a;->n:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/Integer;IILkotlin/jvm/internal/i;)V
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    move-object v6, v7

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v2, p8

    :goto_6
    move-object p2, p0

    move-object p3, p1

    move p4, v1

    move p5, v3

    move p6, v4

    move/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move/from16 p10, v2

    invoke-direct/range {p2 .. p10}, Lb4/a;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method private final B(Landroid/graphics/Point;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lb4/a;->h:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lb4/a;->i:I

    return-void
.end method

.method private final i(Landroid/graphics/Point;)Z
    .locals 3

    invoke-direct {p0}, Lb4/a;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    iget p0, p1, Landroid/graphics/Point;->y:I

    if-lt v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private final w()Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A()V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0}, Lb4/a;->B(Landroid/graphics/Point;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb4/a;->j()Lb4/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb4/a;

    invoke-virtual {p0, p1}, Lb4/a;->k(Lb4/a;)I

    move-result p0

    return p0
.end method

.method public copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lb4/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lb4/a;

    iget v1, v0, Lb4/a;->h:I

    iput v1, p0, Lb4/a;->h:I

    iget v1, v0, Lb4/a;->i:I

    iput v1, p0, Lb4/a;->i:I

    iget v1, v0, Lb4/a;->j:I

    iput v1, p0, Lb4/a;->j:I

    iget v1, v0, Lb4/a;->k:I

    iput v1, p0, Lb4/a;->k:I

    iget-object v1, v0, Lb4/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lb4/a;->l:Ljava/lang/String;

    iget-object v1, v0, Lb4/a;->m:Ljava/lang/Integer;

    iput-object v1, p0, Lb4/a;->m:Ljava/lang/Integer;

    iget v0, v0, Lb4/a;->n:I

    iput v0, p0, Lb4/a;->n:I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newScreenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb4/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  newCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lb4/a;->h:I

    iget v3, p0, Lb4/a;->i:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " newSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lb4/a;->j:I

    iget v3, p0, Lb4/a;->k:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isSettled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb4/a;->x()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)V
    .locals 1

    const/16 v0, -0x65

    invoke-static {p0, v0}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb4/a;->n:I

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb4/a;->n:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb4/a;->l:Ljava/lang/String;

    iput p1, p0, Lb4/a;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lb4/a;->i:I

    :cond_0
    return-void
.end method

.method public j()Lb4/a;
    .locals 12

    new-instance v11, Lb4/a;

    iget-object v1, p0, Lb4/a;->g:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfe

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lb4/a;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/Integer;IILkotlin/jvm/internal/i;)V

    invoke-virtual {v11, p0}, Lb4/a;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v11
.end method

.method public k(Lb4/a;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->g(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->g(II)I

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->g(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final l(Landroid/graphics/Point;)V
    .locals 3

    const-string v0, "targetSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lb4/a;->h:I

    invoke-direct {p0}, Lb4/a;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lb4/a;->i:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid item type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lb4/a;->j:I

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p1, p0, Lb4/a;->j:I

    iget p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_2
    iput p1, p0, Lb4/a;->k:I

    return-void
.end method

.method public final m()Lcom/android/launcher3/util/CellAndSpan;
    .locals 4

    new-instance v0, Lcom/android/launcher3/util/CellAndSpan;

    iget v1, p0, Lb4/a;->h:I

    iget v2, p0, Lb4/a;->i:I

    iget v3, p0, Lb4/a;->j:I

    iget p0, p0, Lb4/a;->k:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    return-object v0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lb4/a;->h:I

    return p0
.end method

.method public final o()I
    .locals 0

    iget p0, p0, Lb4/a;->i:I

    return p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb4/a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lb4/a;->j:I

    return p0
.end method

.method public final r()I
    .locals 0

    iget p0, p0, Lb4/a;->k:I

    return p0
.end method

.method public final s(Landroid/graphics/Point;Ljava/lang/String;)V
    .locals 1

    const-string v0, "startPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lb4/a;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb4/a;->n:I

    iput-object p2, p0, Lb4/a;->l:Ljava/lang/String;

    const/16 p2, -0x65

    invoke-static {p0, p2}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, -0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lb4/a;->m:Ljava/lang/Integer;

    :cond_0
    invoke-direct {p0, p1}, Lb4/a;->B(Landroid/graphics/Point;)V

    return-void
.end method

.method public final t()Z
    .locals 1

    iget p0, p0, Lb4/a;->n:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u()Z
    .locals 2

    iget v0, p0, Lb4/a;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lb4/a;->k:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final v(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 3

    const-string v0, "startPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lb4/a;->j:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ge v0, v2, :cond_1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p0, p0, Lb4/a;->k:I

    add-int/2addr p1, p0

    sub-int/2addr p1, v1

    iget p0, p2, Landroid/graphics/Point;->y:I

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final x()Z
    .locals 1

    iget p0, p0, Lb4/a;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y(I)Z
    .locals 2

    const/16 v0, -0x65

    invoke-static {p0, v0}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-lt p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final z(Landroid/graphics/Point;Z)Z
    .locals 0

    const-string p2, "targetSize"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, -0x64

    invoke-static {p0, p2}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lb4/a;->i(Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
