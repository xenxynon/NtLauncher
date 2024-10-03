.class final Ln6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln6/c;


# instance fields
.field public final g:Ln6/a;

.field public final h:Ln6/k;

.field i:Z


# direct methods
.method constructor <init>(Ln6/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln6/a;

    invoke-direct {v0}, Ln6/a;-><init>()V

    iput-object v0, p0, Ln6/g;->g:Ln6/a;

    const-string v0, "source == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Ln6/g;->h:Ln6/k;

    return-void
.end method


# virtual methods
.method public a(Ln6/d;J)J
    .locals 8

    iget-boolean v0, p0, Ln6/g;->i:Z

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Ln6/g;->g:Ln6/a;

    invoke-virtual {v0, p1, p2, p3}, Ln6/a;->h(Ln6/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Ln6/g;->g:Ln6/a;

    iget-wide v4, v0, Ln6/a;->h:J

    iget-object v1, p0, Ln6/g;->h:Ln6/k;

    const-wide/16 v6, 0x2000

    invoke-interface {v1, v0, v6, v7}, Ln6/k;->v(Ln6/a;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p1}, Ln6/d;->k()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ln6/d;J)J
    .locals 8

    iget-boolean v0, p0, Ln6/g;->i:Z

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Ln6/g;->g:Ln6/a;

    invoke-virtual {v0, p1, p2, p3}, Ln6/a;->k(Ln6/d;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Ln6/g;->g:Ln6/a;

    iget-wide v4, v0, Ln6/a;->h:J

    iget-object v1, p0, Ln6/g;->h:Ln6/k;

    const-wide/16 v6, 0x2000

    invoke-interface {v1, v0, v6, v7}, Ln6/k;->v(Ln6/a;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Ln6/g;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ln6/g;->i:Z

    iget-object v0, p0, Ln6/g;->h:Ln6/k;

    invoke-interface {v0}, Ln6/k;->close()V

    iget-object p0, p0, Ln6/g;->g:Ln6/a;

    invoke-virtual {p0}, Ln6/a;->a()V

    return-void
.end method

.method public d()Ln6/a;
    .locals 0

    iget-object p0, p0, Ln6/g;->g:Ln6/a;

    return-object p0
.end method

.method public isOpen()Z
    .locals 0

    iget-boolean p0, p0, Ln6/g;->i:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public j(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Ln6/g;->i:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Ln6/g;->g:Ln6/a;

    iget-wide v1, v0, Ln6/a;->h:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget-object v1, p0, Ln6/g;->h:Ln6/k;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Ln6/k;->v(Ln6/a;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public m(Ln6/d;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ln6/g;->b(Ln6/d;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public o(Ln6/d;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ln6/g;->a(Ln6/d;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public q(Ln6/f;)I
    .locals 6

    iget-boolean v0, p0, Ln6/g;->i:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Ln6/g;->g:Ln6/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ln6/a;->z(Ln6/f;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Ln6/g;->h:Ln6/k;

    iget-object v2, p0, Ln6/g;->g:Ln6/a;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Ln6/k;->v(Ln6/a;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    :cond_2
    iget-object p1, p1, Ln6/f;->g:[Ln6/d;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ln6/d;->k()I

    move-result p1

    iget-object p0, p0, Ln6/g;->g:Ln6/a;

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Ln6/a;->B(J)V

    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5

    iget-object v0, p0, Ln6/g;->g:Ln6/a;

    iget-wide v1, v0, Ln6/a;->h:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Ln6/g;->h:Ln6/k;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Ln6/k;->v(Ln6/a;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Ln6/g;->g:Ln6/a;

    invoke-virtual {p0, p1}, Ln6/a;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln6/g;->h:Ln6/k;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public v(Ln6/a;J)J
    .locals 5

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Ln6/g;->i:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ln6/g;->g:Ln6/a;

    iget-wide v3, v2, Ln6/a;->h:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln6/g;->h:Ln6/k;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Ln6/k;->v(Ln6/a;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Ln6/g;->g:Ln6/a;

    iget-wide v0, v0, Ln6/a;->h:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object p0, p0, Ln6/g;->g:Ln6/a;

    invoke-virtual {p0, p1, p2, p3}, Ln6/a;->v(Ln6/a;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sink == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
