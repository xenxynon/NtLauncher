.class public final Landroidx/core/util/SparseIntArrayKt$valueIterator$1;
.super Lo5/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/util/SparseIntArrayKt;->valueIterator(Landroid/util/SparseIntArray;)Lo5/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_valueIterator:Landroid/util/SparseIntArray;

.field private index:I


# direct methods
.method constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/util/SparseIntArrayKt$valueIterator$1;->$this_valueIterator:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lo5/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/core/util/SparseIntArrayKt$valueIterator$1;->index:I

    return p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/core/util/SparseIntArrayKt$valueIterator$1;->index:I

    iget-object p0, p0, Landroidx/core/util/SparseIntArrayKt$valueIterator$1;->$this_valueIterator:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextInt()I
    .locals 3

    iget-object v0, p0, Landroidx/core/util/SparseIntArrayKt$valueIterator$1;->$this_valueIterator:Landroid/util/SparseIntArray;

    iget v1, p0, Landroidx/core/util/SparseIntArrayKt$valueIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/core/util/SparseIntArrayKt$valueIterator$1;->index:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    return p0
.end method

.method public final setIndex(I)V
    .locals 0

    iput p1, p0, Landroidx/core/util/SparseIntArrayKt$valueIterator$1;->index:I

    return-void
.end method
