.class Lt1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/e;->f()Lt1/e$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private g:I

.field private final h:I

.field final synthetic i:Lt1/e;


# direct methods
.method constructor <init>(Lt1/e;)V
    .locals 1

    iput-object p1, p0, Lt1/e$a;->i:Lt1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lt1/e$a;->g:I

    invoke-virtual {p1}, Lt1/e;->size()I

    move-result p1

    iput p1, p0, Lt1/e$a;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 0

    invoke-virtual {p0}, Lt1/e$a;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lt1/e$a;->g:I

    iget p0, p0, Lt1/e$a;->h:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt1/e$a;->a()Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public nextByte()B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lt1/e$a;->i:Lt1/e;

    iget v1, p0, Lt1/e$a;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lt1/e$a;->g:I

    invoke-virtual {v0, v1}, Lt1/e;->a(I)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
