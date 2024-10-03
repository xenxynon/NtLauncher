.class final Lt1/e$c;
.super Lt1/e$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final k:I

.field private final l:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lt1/e$g;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lt1/e;->c(III)I

    iput p2, p0, Lt1/e$c;->k:I

    iput p3, p0, Lt1/e$c;->l:I

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    invoke-virtual {p0}, Lt1/e$c;->size()I

    move-result v0

    invoke-static {p1, v0}, Lt1/e;->b(II)V

    iget-object v0, p0, Lt1/e$g;->j:[B

    iget p0, p0, Lt1/e$c;->k:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method protected o()I
    .locals 0

    iget p0, p0, Lt1/e$c;->k:I

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lt1/e$c;->l:I

    return p0
.end method
