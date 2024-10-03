.class public final Lo1/f;
.super Ls1/c;
.source "SourceFile"


# static fields
.field private static final u:Ljava/io/Writer;

.field private static final v:Ll1/o;


# instance fields
.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll1/j;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ll1/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo1/f$a;

    invoke-direct {v0}, Lo1/f$a;-><init>()V

    sput-object v0, Lo1/f;->u:Ljava/io/Writer;

    new-instance v0, Ll1/o;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ll1/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo1/f;->v:Ll1/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lo1/f;->u:Ljava/io/Writer;

    invoke-direct {p0, v0}, Ls1/c;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo1/f;->r:Ljava/util/List;

    sget-object v0, Ll1/l;->a:Ll1/l;

    iput-object v0, p0, Lo1/f;->t:Ll1/j;

    return-void
.end method

.method private M()Ll1/j;
    .locals 1

    iget-object p0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/j;

    return-object p0
.end method

.method private N(Ll1/j;)V
    .locals 2

    iget-object v0, p0, Lo1/f;->s:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ll1/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls1/c;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lo1/f;->M()Ll1/j;

    move-result-object v0

    check-cast v0, Ll1/m;

    iget-object v1, p0, Lo1/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ll1/m;->h(Ljava/lang/String;Ll1/j;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lo1/f;->s:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lo1/f;->t:Ll1/j;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lo1/f;->M()Ll1/j;

    move-result-object p0

    instance-of v0, p0, Ll1/g;

    if-eqz v0, :cond_4

    check-cast p0, Ll1/g;

    invoke-virtual {p0, p1}, Ll1/g;->h(Ll1/j;)V

    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public F(J)Ls1/c;
    .locals 1

    new-instance v0, Ll1/o;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Ll1/o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lo1/f;->N(Ll1/j;)V

    return-object p0
.end method

.method public G(Ljava/lang/Boolean;)Ls1/c;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo1/f;->u()Ls1/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ll1/o;

    invoke-direct {v0, p1}, Ll1/o;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lo1/f;->N(Ll1/j;)V

    return-object p0
.end method

.method public H(Ljava/lang/Number;)Ls1/c;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo1/f;->u()Ls1/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ls1/c;->r()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v0, Ll1/o;

    invoke-direct {v0, p1}, Ll1/o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lo1/f;->N(Ll1/j;)V

    return-object p0
.end method

.method public I(Ljava/lang/String;)Ls1/c;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lo1/f;->u()Ls1/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ll1/o;

    invoke-direct {v0, p1}, Ll1/o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo1/f;->N(Ll1/j;)V

    return-object p0
.end method

.method public J(Z)Ls1/c;
    .locals 1

    new-instance v0, Ll1/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Ll1/o;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lo1/f;->N(Ll1/j;)V

    return-object p0
.end method

.method public L()Ll1/j;
    .locals 3

    iget-object v0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo1/f;->t:Ll1/j;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ls1/c;
    .locals 2

    new-instance v0, Ll1/g;

    invoke-direct {v0}, Ll1/g;-><init>()V

    invoke-direct {p0, v0}, Lo1/f;->N(Ll1/j;)V

    iget-object v1, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo1/f;->r:Ljava/util/List;

    sget-object v0, Lo1/f;->v:Ll1/o;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f()Ls1/c;
    .locals 2

    new-instance v0, Ll1/m;

    invoke-direct {v0}, Ll1/m;-><init>()V

    invoke-direct {p0, v0}, Lo1/f;->N(Ll1/j;)V

    iget-object v1, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public k()Ls1/c;
    .locals 2

    iget-object v0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo1/f;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo1/f;->M()Ll1/j;

    move-result-object v0

    instance-of v0, v0, Ll1/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public l()Ls1/c;
    .locals 2

    iget-object v0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo1/f;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo1/f;->M()Ll1/j;

    move-result-object v0

    instance-of v0, v0, Ll1/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public s(Ljava/lang/String;)Ls1/c;
    .locals 1

    iget-object v0, p0, Lo1/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo1/f;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo1/f;->M()Ll1/j;

    move-result-object v0

    instance-of v0, v0, Ll1/m;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lo1/f;->s:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public u()Ls1/c;
    .locals 1

    sget-object v0, Ll1/l;->a:Ll1/l;

    invoke-direct {p0, v0}, Lo1/f;->N(Ll1/j;)V

    return-object p0
.end method
