.class public abstract Ll6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ll6/d<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private g:[Ll6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic c(Ll6/b;)I
    .locals 0

    iget p0, p0, Ll6/b;->h:I

    return p0
.end method

.method public static final synthetic d(Ll6/b;)[Ll6/d;
    .locals 0

    iget-object p0, p0, Ll6/b;->g:[Ll6/d;

    return-object p0
.end method


# virtual methods
.method protected final e()Ll6/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ll6/b;->j()[Ll6/d;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Ll6/b;->g(I)[Ll6/d;

    move-result-object v0

    iput-object v0, p0, Ll6/b;->g:[Ll6/d;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ll6/b;->i()I

    move-result v2

    array-length v3, v0

    if-lt v2, v3, :cond_1

    array-length v2, v0

    mul-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Ll6/d;

    iput-object v1, p0, Ll6/b;->g:[Ll6/d;

    check-cast v0, [Ll6/d;

    :cond_1
    :goto_0
    iget v1, p0, Ll6/b;->i:I

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ll6/b;->f()Ll6/d;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v2, p0}, Ll6/d;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Ll6/b;->i:I

    invoke-virtual {p0}, Ll6/b;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll6/b;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract f()Ll6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract g(I)[Ll6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method protected final h(Ll6/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ll6/b;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ll6/b;->h:I

    invoke-virtual {p0}, Ll6/b;->i()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Ll6/b;->i:I

    :cond_0
    invoke-virtual {p1, p0}, Ll6/d;->b(Ljava/lang/Object;)[Lq5/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    array-length p0, p1

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    sget-object v2, Ln5/t;->a:Ln5/t;

    invoke-static {v2}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final i()I
    .locals 0

    iget p0, p0, Ll6/b;->h:I

    return p0
.end method

.method protected final j()[Ll6/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    iget-object p0, p0, Ll6/b;->g:[Ll6/d;

    return-object p0
.end method
