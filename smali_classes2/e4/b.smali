.class public final Le4/b;
.super Lcom/android/launcher3/util/GridOccupancy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le4/b$a;
    }
.end annotation


# static fields
.field public static final j:Le4/b$a;


# instance fields
.field private final g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le4/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le4/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le4/b;->j:Le4/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "screenTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget p2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iput p2, p0, Le4/b;->h:I

    iget p2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    iput p2, p0, Le4/b;->i:I

    iput-object p1, p0, Le4/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/launcher3/util/GridOccupancy;)V
    .locals 1

    const-string v0, "screenTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gridOccupancy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(Lcom/android/launcher3/util/GridOccupancy;)V

    iget p2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iput p2, p0, Le4/b;->h:I

    iget p2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    iput p2, p0, Le4/b;->i:I

    iput-object p1, p0, Le4/b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lb4/a;)Z
    .locals 2

    const-string v0, "favoriteItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb4/a;->q()I

    move-result v0

    iget v1, p0, Le4/b;->h:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lb4/a;->r()I

    move-result p1

    iget p0, p0, Le4/b;->i:I

    if-le p1, p0, :cond_0

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

.method public b()Le4/b;
    .locals 3

    new-instance v0, Le4/b;

    iget-object v1, p0, Le4/b;->g:Ljava/lang/String;

    invoke-super {p0}, Lcom/android/launcher3/util/GridOccupancy;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.util.GridOccupancy"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v0, v1, p0}, Le4/b;-><init>(Ljava/lang/String;Lcom/android/launcher3/util/GridOccupancy;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le4/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le4/b;->b()Le4/b;

    move-result-object p0

    return-object p0
.end method

.method public final d(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Le4/b;->h:I

    iput v0, p0, Le4/b;->i:I

    iget v1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    move v2, v0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_3

    iget v5, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    move v6, v0

    move-object v7, v3

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-virtual {p0, v6, v2}, Le4/b;->d(II)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v7, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Le4/b;->h:I

    invoke-static {v8, v4}, Le6/e;->b(II)I

    move-result v8

    goto :goto_2

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v6, v8

    add-int/2addr v8, v4

    iget v9, p0, Le4/b;->h:I

    invoke-static {v9, v8}, Le6/e;->b(II)I

    move-result v8

    :goto_2
    iput v8, p0, Le4/b;->h:I

    goto :goto_3

    :cond_1
    move-object v7, v3

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_7

    iget v5, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    move v6, v0

    move-object v7, v3

    :goto_5
    if-ge v6, v5, :cond_6

    invoke-virtual {p0, v2, v6}, Le4/b;->d(II)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v7, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Le4/b;->i:I

    invoke-static {v8, v4}, Le6/e;->b(II)I

    move-result v8

    goto :goto_6

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v6, v8

    add-int/2addr v8, v4

    iget v9, p0, Le4/b;->i:I

    invoke-static {v9, v8}, Le6/e;->b(II)I

    move-result v8

    :goto_6
    iput v8, p0, Le4/b;->i:I

    goto :goto_7

    :cond_5
    move-object v7, v3

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshMaxVacantCell:screenTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le4/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxVacantX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le4/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxVacantY= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Le4/b;->i:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NTGridOccupancy"

    invoke-static {v0, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lb4/a;)V
    .locals 1

    const-string v0, "favoriteItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb4/a;->m()Lcom/android/launcher3/util/CellAndSpan;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    invoke-virtual {p0}, Le4/b;->e()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Le4/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(screenTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le4/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxVacantX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le4/b;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxVacantY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Le4/b;->i:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
