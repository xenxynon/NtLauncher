.class Lt1/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:Z

.field private i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic j:Lt1/w;


# direct methods
.method private constructor <init>(Lt1/w;)V
    .locals 0

    iput-object p1, p0, Lt1/w$d;->j:Lt1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lt1/w$d;->g:I

    return-void
.end method

.method synthetic constructor <init>(Lt1/w;Lt1/w$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lt1/w$d;-><init>(Lt1/w;)V

    return-void
.end method

.method private a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lt1/w$d;->i:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lt1/w$d;->j:Lt1/w;

    invoke-static {v0}, Lt1/w;->e(Lt1/w;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lt1/w$d;->i:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lt1/w$d;->i:Ljava/util/Iterator;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt1/w$d;->h:Z

    iget v1, p0, Lt1/w$d;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lt1/w$d;->g:I

    iget-object v0, p0, Lt1/w$d;->j:Lt1/w;

    invoke-static {v0}, Lt1/w;->c(Lt1/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lt1/w$d;->j:Lt1/w;

    invoke-static {v0}, Lt1/w;->c(Lt1/w;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lt1/w$d;->g:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lt1/w$d;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 3

    iget v0, p0, Lt1/w$d;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lt1/w$d;->j:Lt1/w;

    invoke-static {v2}, Lt1/w;->c(Lt1/w;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lt1/w$d;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt1/w$d;->b()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 3

    iget-boolean v0, p0, Lt1/w$d;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt1/w$d;->h:Z

    iget-object v0, p0, Lt1/w$d;->j:Lt1/w;

    invoke-static {v0}, Lt1/w;->b(Lt1/w;)V

    iget v0, p0, Lt1/w$d;->g:I

    iget-object v1, p0, Lt1/w$d;->j:Lt1/w;

    invoke-static {v1}, Lt1/w;->c(Lt1/w;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lt1/w$d;->j:Lt1/w;

    iget v1, p0, Lt1/w$d;->g:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lt1/w$d;->g:I

    invoke-static {v0, v1}, Lt1/w;->d(Lt1/w;I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lt1/w$d;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() was called before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
